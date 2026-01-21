#!/usr/bin/env python3
"""
Generiert SurrealDB Import-Script für Schema v3 (Reine Graph-Struktur).
Alle Verknüpfungen werden als RELATE Statements generiert, keine direkten Referenzen.

Liest:
  - 06.xlsx: Ausstattungstypen und Raumtypen
  - 07.xlsx: Räume

Generiert:
  - import_v3.surql: Import für Schema v3 (nur dynamische Daten, Stammdaten sind im Schema)
"""

import pandas as pd
import re
from collections import defaultdict
from typing import Optional, Dict, List, Tuple, Any


def sanitize_id(code: str, prefix: str = '') -> Optional[str]:
    """Konvertiert einen Code in eine gültige SurrealDB Record-ID."""
    if pd.isna(code):
        return None
    safe = str(code).lower().strip()
    safe = safe.replace('.', '_').replace(' ', '_').replace('-', '_').replace('/', '_')
    safe = re.sub(r'[^a-z0-9_]', '', safe)
    if safe and safe[0].isdigit():
        safe = (prefix or 'id_') + safe
    return safe if safe else None


def escape_string(val) -> Optional[str]:
    """Escaped einen String für SurrealDB."""
    if pd.isna(val):
        return None
    s = str(val).replace("\\", "\\\\").replace("'", "\\'").replace('"', '\\"').strip()
    return s


def get_int_or_none(val) -> Optional[int]:
    """Konvertiert einen Wert in int oder None."""
    if pd.isna(val) or val == 0:
        return None
    try:
        return int(float(val))
    except:
        return None


def get_float_or_none(val) -> Optional[float]:
    """Konvertiert einen Wert in float oder None."""
    if pd.isna(val):
        return None
    try:
        return float(val)
    except:
        return None


# Mapping: Spaltenindex -> Medienanschluss-Typ ID
MEDIEN_SPALTEN_MAPPING = {
    # Strom (Spalten 2-10)
    2: 'v230_16a',
    3: 'v230_32a',
    4: 'nea_230v_16a',
    5: 'v400_16a',
    6: 'v400_32a',
    7: 'v400_63a',
    8: 'nea_400v_16a',
    9: 'edv_rj45',
    10: 'pe_erdung',
    # Gas (Spalten 11-16)
    11: 'druckluft',
    12: 'stickstoff',
    13: 'co2',
    14: 'reinstgase',
    15: 'schutzgas',
    16: 'vakuum',
    # Wasser (Spalten 17-24)
    17: 'labor_kalt',
    18: 'labor_warm',
    19: 've_wasser',
    20: 'reinstwasser',
    21: 'abwasser',
    22: 'kuehlwasser',
    23: 'zisternenwasser',
    24: 'eismaschine',
    # Abluft (Spalten 25-33)
    25: 'abzug_480',
    26: 'punktabsaugung_100',
    27: 'schnueffelabsaugung_25',
    28: 'pumpenabluft_5',
    29: 'gefahrstoff_unterschrank',
    30: 'gefahrstoffschrank_60',
    31: 'gefahrstoffschrank_60_4',
    32: 'gefahrstoffschrank_90',
    33: 'gefahrstoffschrank_120',
}


def determine_ausstattung_kategorie(code: str) -> str:
    """Bestimmt die Ausstattungskategorie basierend auf dem Code."""
    if code.startswith('1.'):
        return 'arbeitsplaetze'
    elif code.startswith('2.'):
        return 'sanitaer'
    elif code.startswith('3.'):
        return 'sicherheit'
    elif code.startswith('4.'):
        return 'medienzeilen'
    elif code.startswith('5.'):
        return 'deckenmedien'
    elif code.startswith('6.'):
        return 'geraete'
    else:
        return 'weitere'


def determine_bereich(bereich_name: str) -> Optional[str]:
    """Mappt Bereich-Namen zu Record-IDs."""
    if pd.isna(bereich_name):
        return None
    bereich_map = {
        'Fakultät für Biologie': 'biologie',
        'Fakultät füt Biologie': 'biologie',  # Tippfehler in Daten
        'Fakultät für Physik': 'physik',
        'Fakultät für Chemie': 'chemie',
        'Fakultät für Psychologie und Sportwissenschaft': 'psychologie',
        'Teutolabs': 'teutolabs'
    }
    return bereich_map.get(bereich_name.strip(), sanitize_id(bereich_name, 'ber_'))


class SchemaV3Generator:
    """Generator für Schema v3 Import-Statements (reine Graph-Struktur)."""

    def __init__(self):
        self.output: List[str] = []
        self.ausstattungstypen: Dict[str, Dict] = {}
        self.raumtypen: Dict[str, Dict] = {}
        self.bereiche: set = set()
        self.teilprojekte: set = set()
        self.funktionsbereiche: set = set()
        self.nutzer: Dict[str, str] = {}  # code -> name

    def add_header(self):
        """Fügt den Header hinzu."""
        self.output.append("""-- ============================================================
-- SurrealDB Import für Schema v3 (Reine Graph-Struktur)
-- Generiert aus: 06.xlsx und 07.xlsx
--
-- WICHTIG: Zuerst schema_v3.surql importieren!
-- Dieses Script enthält nur dynamische Daten.
-- ============================================================

USE NS university;
USE DB facilities;
""")

    def load_ausstattungstypen(self, excel_path: str):
        """Lädt Ausstattungstypen aus 06.xlsx (Ausst-Typ Chemie + Rest)."""
        print("Lade Ausstattungstypen...")
        df = pd.read_excel(excel_path, sheet_name='Ausst-Typ Chemie + Rest', header=None)

        self.output.append("""
-- ############################################################
-- AUSSTATTUNGSTYPEN (aus 06.xlsx - Ausst-Typ Chemie + Rest)
-- ############################################################
""")

        count = 0
        for i in range(2, len(df)):
            name = df.iloc[i, 0]
            code = df.iloc[i, 1]

            if pd.isna(name) or pd.isna(code):
                continue

            code_str = str(code).strip()
            name_str = escape_string(name)
            record_id = sanitize_id(code_str, 'typ_')
            kategorie = determine_ausstattung_kategorie(code_str)

            if not record_id:
                continue

            # Sammle Medienanschlüsse
            medien: List[Tuple[str, int]] = []
            for col_idx, medien_id in MEDIEN_SPALTEN_MAPPING.items():
                val = get_int_or_none(df.iloc[i, col_idx])
                if val and val > 0:
                    medien.append((medien_id, val))

            # Speichere für spätere Referenz
            self.ausstattungstypen[code_str] = {
                'record_id': record_id,
                'name': name_str,
                'kategorie': kategorie,
                'medien': medien
            }

            # Generiere CREATE Statement (ohne Kategorie-Referenz!)
            self.output.append(f"""
-- Ausstattungstyp: {code_str} - {name_str}
UPSERT ausstattungstyp:{record_id} SET
    code = '{code_str}',
    name = '{name_str}';""")

            # Generiere RELATE für Kategorie
            self.output.append(
                f"RELATE ausstattungstyp:{record_id}->hat_ausstattung_kategorie->ausstattung_kategorie:{kategorie};"
            )

            # Generiere RELATE Statements für Medienanschlüsse
            for medien_id, anzahl in medien:
                self.output.append(
                    f"RELATE ausstattungstyp:{record_id}->hat_medienanschluss->medienanschluss_typ:{medien_id} "
                    f"SET anzahl = {anzahl};"
                )

            count += 1

        print(f"  {count} Ausstattungstypen geladen")

    def load_raumtypen(self, excel_path: str):
        """Lädt Raumtypen aus 06.xlsx (Ausst.merkm._Übersicht_Versand)."""
        print("Lade Raumtypen...")
        df = pd.read_excel(excel_path, sheet_name='Ausst.merkm._Übersicht_Versand', header=None)

        # Header für Ausstattungsspalten
        spalten = df.iloc[1, :].tolist()

        self.output.append("""
-- ############################################################
-- RAUMTYPEN (aus 06.xlsx - Ausst.merkm._Übersicht_Versand)
-- ############################################################
""")

        count = 0
        for i in range(2, len(df)):
            bereich = df.iloc[i, 0]
            code = df.iloc[i, 1]
            bezeichnung = df.iloc[i, 2]
            anzahl = df.iloc[i, 3]

            if pd.isna(code):
                continue

            code_str = str(code).strip()
            bezeichnung_str = escape_string(bezeichnung) if pd.notna(bezeichnung) else code_str
            record_id = sanitize_id(code_str, 'rt_')
            bereich_id = determine_bereich(bereich)

            if not record_id:
                continue

            # Sammle Ausstattungsmerkmale
            ausstattungen: List[Tuple[str, int]] = []
            for col_idx in range(4, min(155, len(spalten))):
                col_name = spalten[col_idx]
                if pd.isna(col_name):
                    continue

                val = get_int_or_none(df.iloc[i, col_idx])
                if not val or val <= 0:
                    continue

                # Extrahiere Ausstattungscode aus Spaltenname
                col_name_str = str(col_name).strip()
                code_match = re.match(r'^([\d\.]+)', col_name_str)
                if code_match:
                    ausstattung_code = code_match.group(1)
                    if ausstattung_code in self.ausstattungstypen:
                        ausstattungen.append((
                            self.ausstattungstypen[ausstattung_code]['record_id'],
                            val
                        ))

            # Speichere für spätere Referenz
            self.raumtypen[code_str] = {
                'record_id': record_id,
                'bezeichnung': bezeichnung_str,
                'bereich_id': bereich_id,
                'ausstattungen': ausstattungen
            }

            # Generiere CREATE Statement (ohne Bereich-Referenz!)
            self.output.append(f"""
-- Raumtyp: {code_str} - {bezeichnung_str}
UPSERT raumtyp:{record_id} SET
    code = '{code_str}',
    bezeichnung = '{bezeichnung_str}';""")

            # Generiere RELATE für Bereich
            if bereich_id:
                self.output.append(
                    f"RELATE raumtyp:{record_id}->gehoert_zu_bereich->bereich:{bereich_id};"
                )

            # Generiere RELATE Statements für Ausstattungen
            for ausstattung_id, anzahl in ausstattungen:
                self.output.append(
                    f"RELATE raumtyp:{record_id}->hat_ausstattung->ausstattungstyp:{ausstattung_id} "
                    f"SET anzahl = {anzahl};"
                )

            count += 1

        print(f"  {count} Raumtypen geladen")

    def load_raeume(self, excel_path: str):
        """Lädt Räume aus 07.xlsx (Raumprogramm 3.BA)."""
        print("Lade Räume...")
        df = pd.read_excel(excel_path, sheet_name='Raumprogramm 3.BA', header=None)

        # Sammle zuerst alle Raumtyp-Codes aus 07.xlsx
        raumtyp_codes_07 = set()
        for i in range(4, len(df)):
            raumtyp_code = df.iloc[i, 10]
            if pd.notna(raumtyp_code):
                raumtyp_codes_07.add(str(raumtyp_code).strip())

        # Finde fehlende Raumtypen (in 07.xlsx aber nicht in 06.xlsx)
        missing_raumtypen = raumtyp_codes_07 - set(self.raumtypen.keys())

        if missing_raumtypen:
            print(f"  {len(missing_raumtypen)} Raumtypen aus 07.xlsx fehlen in 06.xlsx - erstelle Platzhalter")
            self.output.append("""
-- ############################################################
-- PLATZHALTER-RAUMTYPEN (aus 07.xlsx, nicht in 06.xlsx definiert)
-- ############################################################
""")
            for code in sorted(missing_raumtypen):
                record_id = sanitize_id(code, 'rt_')
                if record_id:
                    self.raumtypen[code] = {
                        'record_id': record_id,
                        'bezeichnung': code,
                        'bereich_id': None,
                        'ausstattungen': []
                    }
                    self.output.append(f"""
-- Platzhalter-Raumtyp: {code}
UPSERT raumtyp:{record_id} SET
    code = '{code}',
    bezeichnung = '{escape_string(code)}';""")

        # Sammle Teilprojekte und Funktionsbereiche
        for i in range(4, len(df)):
            tp = df.iloc[i, 2]
            fb = df.iloc[i, 5]
            nutzer1 = df.iloc[i, 3]
            nutzer2 = df.iloc[i, 4]

            if pd.notna(tp):
                tp_id = sanitize_id(tp, 'tp_')
                if tp_id:
                    self.teilprojekte.add((tp_id, escape_string(tp)))

            if pd.notna(fb):
                fb_id = sanitize_id(fb, 'fb_')
                if fb_id:
                    self.funktionsbereiche.add((fb_id, escape_string(fb)))

            if pd.notna(nutzer1):
                n_id = sanitize_id(nutzer1, 'n_')
                if n_id:
                    self.nutzer[n_id] = escape_string(nutzer1)

        # Generiere Teilprojekte
        self.output.append("""
-- ############################################################
-- TEILPROJEKTE
-- ############################################################
""")
        for tp_id, tp_name in sorted(self.teilprojekte):
            self.output.append(f"UPSERT teilprojekt:{tp_id} SET code = '{tp_id.upper()}', name = '{tp_name}';")

        # Generiere Funktionsbereiche
        self.output.append("""
-- ############################################################
-- FUNKTIONSBEREICHE
-- ############################################################
""")
        for fb_id, fb_name in sorted(self.funktionsbereiche):
            self.output.append(f"UPSERT funktionsbereich:{fb_id} SET code = '{fb_id.upper()}', name = '{fb_name}';")

        # Generiere Nutzer
        self.output.append("""
-- ############################################################
-- NUTZER
-- ############################################################
""")
        for n_id, n_name in sorted(self.nutzer.items()):
            self.output.append(f"UPSERT nutzer:{n_id} SET code = '{n_id.upper()}', name = '{n_name}', ebene = 1;")

        # Generiere Räume
        self.output.append("""
-- ############################################################
-- RÄUME (aus 07.xlsx - Raumprogramm 3.BA)
-- Alle Verknüpfungen werden als RELATE erstellt
-- ############################################################
""")

        # Mapping für Verortung
        verortung_map = {
            'Neubau': 'neubau',
            'Bestand': 'bestand',
            'Bestandsbau': 'bestandsbau',
            'Bestand / Neubau': 'bestand_neubau',
            'Vorzugsweise Bestand': 'vorzugsweise_bestand'
        }

        count = 0
        for i in range(4, len(df)):
            row = df.iloc[i]

            if pd.isna(row[0]):
                continue

            try:
                raum_nr = int(float(row[0]))
            except:
                continue

            bezeichnung = escape_string(row[6]) if pd.notna(row[6]) else f"Raum {raum_nr}"
            teil_beauftr = str(row[1]).lower().strip() == 'ja' if pd.notna(row[1]) else True

            # Referenzen für RELATEs
            teilprojekt_id = sanitize_id(row[2], 'tp_') if pd.notna(row[2]) else None
            funktionsbereich_id = sanitize_id(row[5], 'fb_') if pd.notna(row[5]) else None
            nutzer_id = sanitize_id(row[3], 'n_') if pd.notna(row[3]) else None
            verortung_key = str(row[9]).strip() if pd.notna(row[9]) else None
            verortung_id = verortung_map.get(verortung_key)
            raumtyp_code = str(row[10]).strip() if pd.notna(row[10]) else None
            raumtyp_id = self.raumtypen.get(raumtyp_code, {}).get('record_id') if raumtyp_code else None

            # Weitere Werte (direkte Felder auf Raum)
            nc5_code = escape_string(row[7]) if pd.notna(row[7]) else None
            nc5_bez = escape_string(row[8]) if pd.notna(row[8]) else None
            flaeche_nuf_1_6 = get_float_or_none(row[29])
            flaeche_nuf_7_9 = get_float_or_none(row[31])
            personen = get_int_or_none(row[23])
            anzahl_raeume = get_int_or_none(row[28])  # Anzahl Räume Neu
            din277 = escape_string(row[35]) if pd.notna(row[35]) else None
            hinweise = escape_string(row[36]) if pd.notna(row[36]) else None

            # Baue SET-Klausel (NUR direkte Felder, keine Referenzen!)
            fields = [
                f"nummer = {raum_nr}",
                f"bezeichnung = '{bezeichnung}'",
                f"teil_der_beauftragung = {str(teil_beauftr).lower()}"
            ]

            if nc5_code:
                fields.append(f"nc5_code = '{nc5_code}'")
            if nc5_bez:
                fields.append(f"nc5_bezeichnung = '{nc5_bez}'")
            if flaeche_nuf_1_6:
                fields.append(f"flaeche_nuf_1_6 = {flaeche_nuf_1_6}")
            if flaeche_nuf_7_9:
                fields.append(f"flaeche_nuf_7_9 = {flaeche_nuf_7_9}")
            if personen:
                fields.append(f"personen_max = {personen}")
            if anzahl_raeume:
                fields.append(f"anzahl_raeume = {anzahl_raeume}")
            if din277:
                fields.append(f"din277 = '{din277}'")
            if hinweise:
                fields.append(f"hinweise = '{hinweise}'")

            self.output.append(f"""
-- Raum {raum_nr}: {bezeichnung}
UPSERT raum:{raum_nr} SET
    {',\n    '.join(fields)};""")

            # Generiere RELATE Statements für alle Verknüpfungen
            if raumtyp_id:
                self.output.append(
                    f"RELATE raum:{raum_nr}->ist_raumtyp->raumtyp:{raumtyp_id};"
                )
            if teilprojekt_id:
                self.output.append(
                    f"RELATE raum:{raum_nr}->gehoert_zu_teilprojekt->teilprojekt:{teilprojekt_id};"
                )
            if funktionsbereich_id:
                self.output.append(
                    f"RELATE raum:{raum_nr}->hat_funktionsbereich->funktionsbereich:{funktionsbereich_id};"
                )
            if verortung_id:
                self.output.append(
                    f"RELATE raum:{raum_nr}->hat_verortung->verortung:{verortung_id};"
                )
            if nutzer_id:
                self.output.append(
                    f"RELATE raum:{raum_nr}->wird_genutzt_von->nutzer:{nutzer_id};"
                )

            count += 1

        print(f"  {count} Räume geladen")

    def add_example_queries(self):
        """Fügt Beispiel-Abfragen für die Graph-Struktur hinzu."""
        self.output.append("""

-- ############################################################
-- BEISPIEL-ABFRAGEN FÜR GRAPH VIEWER
-- ############################################################

-- Alle Verbindungen eines Raums anzeigen
-- SELECT * FROM raum:1;
-- SELECT * FROM ist_raumtyp WHERE in = raum:1;
-- SELECT * FROM gehoert_zu_teilprojekt WHERE in = raum:1;
-- SELECT * FROM hat_funktionsbereich WHERE in = raum:1;
-- SELECT * FROM hat_verortung WHERE in = raum:1;
-- SELECT * FROM wird_genutzt_von WHERE in = raum:1;

-- Raum mit allen Relationen traversieren
-- SELECT
--     *,
--     ->ist_raumtyp->raumtyp AS raumtyp,
--     ->gehoert_zu_teilprojekt->teilprojekt AS teilprojekt,
--     ->hat_funktionsbereich->funktionsbereich AS funktionsbereich,
--     ->hat_verortung->verortung AS verortung,
--     ->wird_genutzt_von->nutzer AS nutzer
-- FROM raum:1;

-- Vollständiger Graph: Raum -> Raumtyp -> Ausstattung -> Medien
-- SELECT
--     *,
--     ->ist_raumtyp->raumtyp.{
--         *,
--         bereich: ->gehoert_zu_bereich->bereich,
--         ausstattungen: ->hat_ausstattung.{
--             anzahl,
--             typ: ->ausstattungstyp.{
--                 *,
--                 kategorie: ->hat_ausstattung_kategorie->ausstattung_kategorie,
--                 medien: ->hat_medienanschluss.{
--                     anzahl,
--                     typ: ->medienanschluss_typ.{
--                         *,
--                         kategorie: ->hat_medien_kategorie->medien_kategorie
--                     }
--                 }
--             }
--         }
--     }
-- FROM raum:1;

-- Alle Kanten eines Raums für Graph-Visualisierung
-- LET $r = raum:1;
-- SELECT * FROM ist_raumtyp, gehoert_zu_teilprojekt, hat_funktionsbereich, hat_verortung, wird_genutzt_von
-- WHERE in = $r;

-- Alle Räume mit Raumtyp und Bereich
-- SELECT
--     nummer,
--     bezeichnung,
--     ->ist_raumtyp->raumtyp.bezeichnung AS raumtyp,
--     ->ist_raumtyp->raumtyp->gehoert_zu_bereich->bereich.name AS bereich
-- FROM raum;
""")

    def generate(self, excel_06: str, excel_07: str, output_path: str):
        """Generiert das vollständige Import-Script."""
        print(f"\nGeneriere Schema v3 Import (Reine Graph-Struktur)...")
        print(f"  Quellen: {excel_06}, {excel_07}")

        self.add_header()
        self.load_ausstattungstypen(excel_06)
        self.load_raumtypen(excel_06)
        self.load_raeume(excel_07)
        self.add_example_queries()

        # Schreibe Output
        with open(output_path, 'w', encoding='utf-8') as f:
            f.write('\n'.join(self.output))

        print(f"\nExport abgeschlossen: {output_path}")
        print(f"  Ausstattungstypen: {len(self.ausstattungstypen)}")
        print(f"  Raumtypen: {len(self.raumtypen)}")
        print(f"  Teilprojekte: {len(self.teilprojekte)}")
        print(f"  Funktionsbereiche: {len(self.funktionsbereiche)}")
        print(f"  Nutzer: {len(self.nutzer)}")
        print(f"\nHinweis: Zuerst schema_v3.surql importieren, dann {output_path}")


def main():
    generator = SchemaV3Generator()
    generator.generate(
        excel_06='06.xlsx',
        excel_07='07.xlsx',
        output_path='import_v3.surql'
    )


if __name__ == '__main__':
    main()
