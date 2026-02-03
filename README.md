[![Deploy to GitHub Pages](https://github.com/Baddi71/Raumprogramm/actions/workflows/deploy.yml/badge.svg)](https://github.com/Baddi71/Raumprogramm/actions/workflows/deploy.yml)

# Raumprogramm für SurrealDB

Diese Dateien enthalten die umgewandelten Daten aus der CSV-Datei für den Import in SurrealDB.

## Dateien

- `Standardräume mit Ausstattung-Grid view.csv`: Die Original-Quelldatei.
- `convert_csv_to_surql.py`: Python-Skript zur Konvertierung der CSV in SurrealQL. Kann verwendet werden, um die Daten erneut zu generieren.
- `import.surql`: Die generierte SurrealQL-Datei, die CREATE-Statements für jeden Raumtyp enthält.

## Datenstruktur

Die Daten wurden in Kategorien gruppiert, wie angefordert:
- `general`: Basisinformationen (im Root-Objekt und `nc_*` Feldern)
- `elektro`
- `gase`
- `wasser`
- `lueftung`
- `daten`
- `bau`
- `info`

Beispiel eines Datensatzes:
```json
{
    "id": "raumtypen:1212101",
    "nc_code_7_stellig": 1212101,
    "categories": {
        "elektro": {
            "230_v_16_a": 0,
            ...
        },
        "gase": { ... }
    }
}
```

## Import in SurrealDB

Um die Daten zu importieren, können Sie die SurrealDB CLI oder die REST API verwenden.

### Nutzung der CLI

Wenn Sie SurrealDB lokal installiert haben:

```bash
surreal import --conn http://localhost:8000 --user root --pass root --ns test --db test import.surql
```

(Passen Sie `--conn`, `--user`, `--pass`, `--ns` und `--db` an Ihre Umgebung an.)

### Nutzung der REST API

Sie können den Inhalt von `import.surql` auch als SQL-Query über die REST API senden.
