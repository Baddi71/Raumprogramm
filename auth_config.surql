
-- Authentifizierung mit Microsoft Entra ID (Azure AD) konfigurieren

-- BITTE ERSETZEN SIE DIE PLATZHALTER:
-- <TENANT_ID> : Ihre Verzeichnis (Mandanten) ID (Directory ID) aus Azure
-- <CLIENT_ID> : Ihre Anwendungs (Client) ID aus der App Registration

-- 1. Definition des Zugriffs über JWT (JSON Web Tokens)
-- SurrealDB lädt die öffentlichen Schlüssel automatisch von Microsoft herunter.
DEFINE ACCESS entra_users ON DATABASE TYPE JWT 
    URL "https://login.microsoftonline.com/<TENANT_ID>/discovery/v2.0/keys";

-- 2. Rechte für die Tabelle "raumtypen" einschränken
-- Nur Benutzer mit gültigem Token aus Ihrem Tenant und für Ihre App dürfen zugreifen.
DEFINE TABLE raumtypen SCHEMALESS
    PERMISSIONS
        FOR select, create, update, delete
        WHERE 
            -- Der Zugriff muss über den oben definierten Access erfolgen
            $access = "entra_users"
            
            -- OPTIONAL: Sicherstellen, dass das Token vom richtigen Tenant stammt (aus dem Token Claim 'tid')
            AND $token.tid = "<TENANT_ID>"
            
            -- WICHTIG: Sicherstellen, dass das Token für DIESE Anwendung ausgestellt wurde (aus Claim 'aud')
            -- Verhindert, dass Token anderer Apps in demselben Tenant genutzt werden können (sofern nicht gewollt)
            AND $token.aud = "<CLIENT_ID>";

COMMIT;
