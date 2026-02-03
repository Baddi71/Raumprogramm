
# Einrichtung von Microsoft Entra ID (Azure AD) für SurrealDB

Um den Zugriff auf die Datenbank sicher zu gestalten und allen Benutzern in Ihrem Tenant das Bearbeiten zu ermöglichen, verwenden wir OIDC/JWT Authentifizierung.

## Voraussetzungen

Sie benötigen Zugriff auf das [Azure Portal](https://portal.azure.com).

## Schritte

### 1. App Registration in Azure erstellen
1. Navigieren Sie zu **Microsoft Entra ID** > **App registrations**.
2. Klicken Sie auf **New registration**.
3. Name: z.B. `SurrealDB Raumprogramm`.
4. Supported account types: **Accounts in this organizational directory only (Single tenant)**.
5. Redirect URI: Je nachdem, wie Sie auf SurrealDB zugreifen (z.B. SPA oder Web), konfigurieren Sie dies später. Für reinen Backend/API-Zugriff zunächst nicht zwingend, aber für Login-Flows notwendig (z.B. `http://localhost:3000` wenn Sie eine Web-App bauen).
6. Klicken Sie auf **Register**.

### 2. IDs kopieren
Nach der Erstellung finden Sie auf der "Overview"-Seite:
- **Application (client) ID**
- **Directory (tenant) ID**

Notieren Sie sich diese beiden Werte.

### 3. Token Konfiguration (Optional aber empfohlen)
Standardmäßig enthalten v2-Token die `aud` (Audience) oft nicht als einfache GUID, sondern als `api://...` oder ähnlich, je nach Konfiguration.
Für die Client-Seite (Frontend) nutzen Sie meist die `MSAL` Library.

### 4. Konfiguration in SurrealDB
Öffnen Sie die Datei `auth_config.surql` in diesem Ordner.

1. Ersetzen Sie alle Vorkommen von `<TENANT_ID>` mit Ihrer **Directory (tenant) ID**.
2. Ersetzen Sie alle Vorkommen von `<CLIENT_ID>` mit Ihrer **Application (client) ID**.

### 5. Konfiguration anwenden
Führen Sie die Datei gegen Ihre SurrealDB Instanz aus:

```bash
surreal import --conn http://localhost:8000 --user root --pass root --ns test --db test auth_config.surql
```

## Nutzung in der Anwendung

Wenn Sie Anfragen an SurrealDB senden, müssen Sie den `Authorization`-Header sowie den `Accept`-Header setzen:

- **Header**: `Authorization: Bearer <Ihr-Entra-ID-Access-Token>`
- **Header**: `Accept: application/json`

SurrealDB validiert das Token automatisch gegen die Schlüssel von Microsoft.
