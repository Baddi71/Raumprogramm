
# Svelte Web Client für Raumprogramm

Ein Frontend zur Verwaltung der Raumdaten, basierend auf Svelte und Vite.

## Funktionen
- **Microsoft Login**: Authentifizierung über Ihren Entra ID Tenant.
- **Raumliste**: Übersicht aller Raumtypen.
- **Bearbeiten**: Detailansicht mit Bearbeitungsfunktion.
- **Dynamische Parameter**: Hinzufügen von neuen Parametern zu den Kategorien (Elektro, Wasser, etc.).

## Installation

```bash
cd web-client
npm install
```

## Konfiguration

Bevor Sie starten, müssen Sie die Datei `src/lib/auth.js` anpassen und Ihre Azure AD IDs eintragen:

1. Öffnen Sie `web-client/src/lib/auth.js`.
2. Tragen Sie Ihre IDs ein:
   ```javascript
   export const msalConfig = {
       auth: {
           clientId: "IHRE_CLIENT_ID",
           authority: "https://login.microsoftonline.com/IHRE_TENANT_ID",
           // ...
       }
   }
   ```

## Starten

```bash
npm run dev
```

Die Anwendung ist dann unter `http://localhost:5173` erreichbar.

## Datenbank Verbindung

Stellen Sie sicher, dass SurrealDB läuft und CORS aktiviert ist, oder konfigurieren Sie einen Reverse Proxy, falls nötig.
Für die lokale Entwicklung sollte SurrealDB mit `surreal start --allow-all` (oder spezifischen Capabilities) laufen.
