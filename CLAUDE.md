# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Data aggregation tool for university facilities management. Transforms Excel data (room specifications, equipment types) into SurrealDB import scripts for a facilities database.

## Commands

**Activate virtual environment:**
```bash
source .venv/bin/activate
```

**Generate SurrealDB import scripts from Excel:**
```bash
# Schema v1 (Legacy - eingebettete Objekte)
python generate_surreal_import.py       # -> ausstattungstypen_import.surql
python generate_raumtypen_import.py     # -> raumtypen_vollstaendig_import.surql
python generate_raum_import.py          # -> raeume_import.surql

# Schema v2 (Normalisiert - Graph-Relationen) - EMPFOHLEN
python generate_schema_v2_import.py     # -> import_v2.surql
```

**Generate combined Excel report:**
```bash
python export_kombinierte_tabelle.py    # -> raeume_komplett.xlsx
```

**Import into SurrealDB:**
```bash
# Schema v2 (empfohlen) - Ein einziger Import
surreal import --conn http://localhost:8000 --user root --pass root --ns university --db facilities schema_v2.surql   # Schema-Definition
surreal import --conn http://localhost:8000 --user root --pass root --ns university --db facilities import_v2.surql   # Daten

# Schema v1 (Legacy) - Reihenfolge wichtig!
surreal import --conn http://localhost:8000 --user root --pass root --ns university --db facilities ausstattungstypen_import.surql
surreal import --conn http://localhost:8000 --user root --pass root --ns university --db facilities raumtypen_vollstaendig_import.surql
surreal import --conn http://localhost:8000 --user root --pass root --ns university --db facilities raeume_import.surql
```

## Architecture

### Data Flow
```
06.xlsx ──┬─> generate_surreal_import.py ────> ausstattungstypen_import.surql
          ├─> generate_raumtypen_import.py ──> raumtypen_vollstaendig_import.surql
          │
07.xlsx ──┼─> generate_raum_import.py ───────> raeume_import.surql
          │
Both ─────┴─> export_kombinierte_tabelle.py ─> raeume_komplett.xlsx
```

### Database Schema Hierarchy
```
Raum (individual rooms)
  └─> Raumtyp (room types)
        └─> Ausstattungstyp (equipment types)
              └─> Medienanschlüsse (media connections: power, gas, water, exhaust)
```

Key tables: `bereich` (departments), `teilprojekt` (building phases), `funktionsbereich` (functional areas), `verortung` (locations)

### Excel Sheet Mapping
- `06.xlsx` "Ausst-Typ Chemie + Rest" → Equipment types with media connections
- `06.xlsx` "Ausst.merkm._Übersicht_Versand" → Room types with equipment features
- `07.xlsx` "Raumprogramm 3.BA" → Individual room records

## Key Conventions

- SurrealDB namespace: `university`, database: `facilities`
- Record IDs are sanitized: lowercase, dots→underscores, numeric prefixes get `typ_` or `rt_` prefix
- Relations use `TYPE RELATION` for tables used with `RELATE` statements
- Media categories: Strom (power), Gas, Wasser (water), Abluft (exhaust)

## Schema Versions

### v1 (Legacy): Eingebettete Objekte
- Medienanschlüsse sind als flache Objekte in `ausstattungstyp` eingebettet
- Ausstattung ist als Objekt in `raumtyp` eingebettet
- Dateien: `ausstattungstypen_import.surql`, `raumtypen_*.surql`, `raeume_import.surql`

### v2 (Normalisiert): Graph-Relationen
- Vollständig normalisiertes Schema mit Relations-Tabellen
- Datei: `schema_v2.surql`
- Struktur:
  ```
  raum → raumtyp → hat_ausstattung → ausstattungstyp → hat_medienanschluss → medienanschluss_typ
  ```
- Vorteile: Keine Redundanz, flexible Abfragen, einfache Schema-Erweiterung
