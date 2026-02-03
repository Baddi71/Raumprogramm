
import csv
import json
import re

file_path = '/home/baddi/Development/Raumprogramm/Standardräume mit Ausstattung-Grid view.csv'
output_path = '/home/baddi/Development/Raumprogramm/import.surql'


def clean_key(text):
    # Valid key characters: a-z, 0-9, _
    # Replace separators with _
    text = text.replace(' / ', '_')
    text = text.replace('/', '_')
    text = text.replace(', ', '_')
    text = text.replace('.', '')
    text = text.replace('-', '_')
    
    # Handle parentheses: convert ( to _ and remove )
    text = text.replace('(', '_')
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

def get_category(index):
    if index <= 5: return 'general'
    if 6 <= index <= 27: return 'elektro'
    if 28 <= index <= 58: return 'gase'
    if 59 <= index <= 77: return 'wasser'
    if 78 <= index <= 86: return 'lueftung'
    if index == 87: return 'daten'
    if 88 <= index <= 93: return 'bau'
    if 94 <= index <= 95: return 'info'
    return 'unknown'

def parse_value(val):
    val = val.strip()
    if not val:
        return None
    
    # Try integer
    if val.isdigit():
        return int(val)
    
    # Try float (comma as decimal separator in German?)
    # The file has "kW", maybe "0,5"? Looking at data: "0", "1", "78".
    # I don't see decimals in the glimpse, but "Strombedarf" might have them.
    # Let's assume dot or comma.
    try:
        return float(val.replace(',', '.'))
    except ValueError:
        return val

with open(file_path, 'r', encoding='utf-8-sig') as f:
    reader = csv.reader(f)
    header = next(reader)
    
    # Clean headers
    headers_cleaned = [clean_key(h) for h in header]
    
    # Special handling for specific headers to be more readable
    # We can perform a manual mapping update here if needed
    
    surql_statements = []
    surql_statements.append("BEGIN TRANSACTION;")
    
    for row in reader:
        if not row: continue
        
        # ID from NC Code 7-stellig
        nc_id = row[0].strip()
        if not nc_id: continue
        
        record_id = f"raumtypen:{nc_id}"
        
        data = {
            "categories": {},
            "meta": {}
        }
        
        for i, val in enumerate(row):
            if i >= len(headers_cleaned): break
            
            key = headers_cleaned[i]
            category = get_category(i)
            parsed_val = parse_value(val)
            
            if parsed_val is None:
                continue


            if category == 'general':
                # mapping specific general keys to top level or keeping in general
                # We also store them as fields
                data[key] = parsed_val
            else:
                if category not in data["categories"]:
                    data["categories"][category] = {}
                data["categories"][category][key] = parsed_val
        
        # Construct CREATE statement
        # We can use CONTENT clause with JSON
        json_str = json.dumps(data, ensure_ascii=False)
        surql = f"CREATE {record_id} CONTENT {json_str};"
        surql_statements.append(surql)

    surql_statements.append("COMMIT TRANSACTION;")

with open(output_path, 'w', encoding='utf-8') as f:
    f.write('\n'.join(surql_statements))

print(f"Generated {len(surql_statements)} statements in {output_path}")
