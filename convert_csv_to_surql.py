
import csv
import json
import re
import os

# Configuration
input_file = 'standardraeume_formular_neu.csv'
output_file = 'import.surql'

# Full paths
base_dir = os.path.dirname(os.path.abspath(__file__))
file_path = os.path.join(base_dir, input_file)
output_path = os.path.join(base_dir, output_file)

def clean_key(text):
    if not text:
        return ""
    # Valid key characters: a-z, 0-9, _
    text = text.replace(' / ', '_')
    text = text.replace('/', '_')
    text = text.replace(', ', '_')
    text = text.replace('.', '')
    text = text.replace('-', '_')
    
    # Handle parentheses: convert ( to _ and remove )
    text = text.replace('(', '_')
    # Remove closing parenthesis
    text = text.replace(')', '')
    
    # Replace spaces and newlines
    text = text.replace('\n', '_')
    text = text.replace('\r', '')
    text = text.replace(' ', '_')
    
    # Replacements for units/symbols
    text = text.replace('³', '3')
    text = text.replace('²', '2')
    
    # Lowercase
    text = text.lower()
    
    # Collapse multiple underscores
    text = re.sub(r'_+', '_', text)
    # Strip leading/trailing underscores
    text = text.strip('_')
    
    return text

def to_id(text):
    """Creates a valid ID string from text, transliterating umlauts."""
    if not text: return "unknown"
    
    # Transliterate umlauts first
    text = text.replace('ä', 'ae')
    text = text.replace('ö', 'oe')
    text = text.replace('ü', 'ue')
    text = text.replace('Ä', 'Ae')
    text = text.replace('Ö', 'Oe')
    text = text.replace('Ü', 'Ue')
    text = text.replace('ß', 'ss')
    
    # Handle specific symbols before general cleaning
    text = text.replace('&', ' und ')
    text = text.replace('+', ' plus ')

    return clean_key(text)

def parse_value(val):
    if val is None:
        return None
    val = val.strip()
    if not val:
        return None
    
    # Try integer
    if val.isdigit():
        return int(val)
    
    # Try float with comma
    try:
        if ',' in val and val.replace(',', '').isdigit():
             return float(val.replace(',', '.'))
        if '.' in val and val.replace('.', '').isdigit():
             return float(val)
    except ValueError:
        pass
        
    return val

def get_category(header_name):
    header = header_name.lower()
    
    # Explicit mapping override for known relation fields
    if any(x in header for x in ['teilprojekt', 'nutzer', 'funktionsbereich', 'code', 'bezeichnung', 'raumtyp', 'anzahl']):
        return 'root'

    # Category Keywords
    if any(x in header for x in ['volt', '230 v', '400 v', '400v', '230v', 'edv', 'rj45', 'strom', 'steckdosen', 'usv', 'not-aus', 'schalter', 'pot.-ausgleich', 'überspannungsschutz', 'erdung']):
        return 'elektro'
    
    if any(x in header for x in ['gas', 'druckluft', 'stickstoff', 'vakuum', 'propan', 'h²', 'he', 'ar', 'co²', 'o²', 'c2h2', 'c2h4', '(cn)2', 'kr', 'lachgas', 'nh3', 'xe']):
         return 'gase'
    
    if header in ['ne']: return 'gase' # Neon

    if any(x in header for x in ['wasser', 'abwasser', 'kühlwasser', 'eismaschine', 'dampf', 'wne', 'wnh', 'wpc', 'wph', 'wdc', 'wdh', 'rw', 'kwv', 'kwr']):
        return 'wasser'
        
    if any(x in header for x in ['abluft', 'absaugung', 'klimatisierung', 'wechselluft', 'luftwechsel']):
        return 'lueftung'
    
    if any(x in header for x in ['boden', 'last', 'tragfähigkeit', 'vibration', 'mindesthöhe', 'zugangs', 'platzierung', 'fläche']):
        return 'bau'
        
    if any(x in header for x in ['lan', 'daten']):
        return 'daten'

    return 'general'

# Fields to be treated as Relations
RELATION_MAP = {
    'teilprojekt': 'teilprojekt',
    'nutzer_ebene_1': 'nutzer_ebene_1',
    'nutzer_ebene_2': 'nutzer_ebene_2',
    'funktions_bereich': 'funktions_bereich'
}

# The edge name to use for the RELATION. 
# Usually in SurrealDB: RELATE in->edge_name->out
# We can use the column name as the edge name, e.g. ->teilprojekt->
# Or maybe 'assigned_to' etc. User asked for "relation als graph". 
# The column name is the most semantic choice here.
EDGE_NAMES = {
    'teilprojekt': 'hat_teilprojekt',
    'nutzer_ebene_1': 'hat_nutzer_ebene_1',
    'nutzer_ebene_2': 'hat_nutzer_ebene_2',
    'funktions_bereich': 'hat_funktions_bereich'
}


ROOT_KEYS = ['nc_code_7_stellig', 'nc_code_5_stellig', 'nc_bezeichnung', 'raum_bezeichnung', 'raumtyp', 'anzahl_räume_summe', 'projekt'] + list(RELATION_MAP.keys())

print(f"Reading from {file_path}")

with open(file_path, 'r', encoding='utf-8-sig') as f:
    reader = csv.DictReader(f, delimiter=';')
    
    original_headers = reader.fieldnames
    clean_header_map = {h: clean_key(h) for h in original_headers if h}
    

    surql_statements = []
    
    # Define Relations
    # Mapping from field key to target table is in RELATION_MAP
    # Edge name is in EDGE_NAMES
    for key, target_table in RELATION_MAP.items():
        edge_name = EDGE_NAMES[key]
        # DEFINE TABLE hat_teilprojekt TYPE RELATION IN raumtypen OUT teilprojekt
        # Note: 'raumtypen' is the table we are creating records in.
        def_stmt = f"DEFINE TABLE {edge_name} TYPE RELATION IN raumtypen OUT {target_table};"
        surql_statements.append(def_stmt)

    surql_statements.append("BEGIN TRANSACTION;")
    
    entity_tracker = {k: {} for k in RELATION_MAP.keys()} 

    create_statements = []
    relate_statements = []

    count = 0
    for row in reader:
        # ID from NC Code 7-stellig
        id_key = next((k for k, v in clean_header_map.items() if 'nc_code' in v and '7' in v), None)
        
        if not id_key or not row[id_key]:
            continue
            
        nc_id = row[id_key].strip()
        if not nc_id: continue
        
        record_id = f"raumtypen:{nc_id}"
        
        data = {
            "categories": {},
            "meta": {}
        }
        
        relations_for_this_row = []

        for orig_header, val in row.items():
            if not orig_header: continue
            
            key = clean_header_map.get(orig_header)
            if not key: continue
            
            parsed_val = parse_value(val)
            
            # Relation handling
            if key in RELATION_MAP:
                if parsed_val:
                    val_str = str(parsed_val)
                    clean_id = to_id(val_str)
                    table_name = RELATION_MAP[key]
                    target_id = f"{table_name}:{clean_id}"
                    
                    # Store relation data for later generation
                    relations_for_this_row.append({
                        'edge': EDGE_NAMES[key],
                        'target': target_id
                    })
                    
                    # Track for creation
                    entity_tracker[key][clean_id] = val_str
                # If null/empty, we don't create a relation (no edge)
                
                # Do not add to data/content
                continue

            # Determine placement
            is_root = False
            if key in ROOT_KEYS or any(rk in key for rk in ROOT_KEYS):
                is_root = True

            cat = get_category(orig_header)
            
            # Skip adding field if value is None
            if parsed_val is not None:
                if is_root or cat == 'root':
                    data[key] = parsed_val
                elif cat == 'general':
                    # Infer type
                    param_type = 'text'
                    if isinstance(parsed_val, bool):
                        param_type = 'bool'
                    elif isinstance(parsed_val, (int, float)):
                        param_type = 'number'

                    # Create parameter object
                    param_obj = {
                        "value": parsed_val,
                        "label": orig_header,
                        "type": param_type
                    }

                    if 'general' not in data["categories"]:
                         data["categories"]['general'] = {}
                    data["categories"]['general'][key] = param_obj
                else:
                    # Infer type
                    param_type = 'text'
                    if isinstance(parsed_val, bool):
                        param_type = 'bool'
                    elif isinstance(parsed_val, (int, float)):
                        param_type = 'number'

                    # Create parameter object
                    param_obj = {
                        "value": parsed_val,
                        "label": orig_header,
                        "type": param_type
                    }

                    if cat not in data["categories"]:
                        data["categories"][cat] = {}
                    data["categories"][cat][key] = param_obj
        
        if "info" not in data:
             data["info"] = {}
        if "status" not in data.get("info", {}):
             data["info"]["status"] = "Zu Erledigen"

        # Create Record
        json_str = json.dumps(data, ensure_ascii=False)
        surql = f"CREATE {record_id} CONTENT {json_str};"
        create_statements.append(surql)
        
        # Create Relations (Edges)
        for rel in relations_for_this_row:
            # RELATE in->edge->out
            # RELATE raumtypen:123 -> teilprojekt -> teilprojekt:bio
            rel_stmt = f"RELATE {record_id}->{rel['edge']}->{rel['target']};"
            relate_statements.append(rel_stmt)

        count += 1

    # Prepend Entity Creations
    entity_statements = []
    for rel_key, entities in entity_tracker.items():
        table = RELATION_MAP[rel_key]
        for e_id, e_name in entities.items():
            safe_name = e_name.replace('"', '\\"')
            entity_statements.append(f"CREATE {table}:{e_id} SET name = \"{safe_name}\";")
            
    surql_statements.extend(entity_statements)
    surql_statements.extend(create_statements)
    surql_statements.extend(relate_statements)
    surql_statements.append("COMMIT TRANSACTION;")

with open(output_path, 'w', encoding='utf-8') as f:
    f.write('\n'.join(surql_statements))

print(f"Generated {len(surql_statements)} statements (incl {len(entity_statements)} entities, {len(relate_statements)} relations) processing {count} records in {output_path}")
