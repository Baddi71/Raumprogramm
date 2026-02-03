-- Permissions: TESTWEISE FULL für alles, um Permission-Probleme auszuschließen
DEFINE TABLE user SCHEMALESS
    PERMISSIONS 
        FOR select, update, delete, create WHERE FULL;

-- 1. Definition des Zugriffs über JWT (JSON Web Tokens)
-- TYPE RECORD mapped das Token auf einen User-Record (user:<sub>)
-- Der Name des Access bestimmt die Tabelle (hier: 'user')
DEFINE ACCESS user ON DATABASE TYPE RECORD
    WITH JWT 
    URL "https://login.microsoftonline.com/common/discovery/keys" 
    AUTHENTICATE {
        -- 1. Claims prüfen
        IF $token.iss != "https://sts.windows.net/55b4a26c-3686-4d33-b09c-cbc23b7d396c/" {
            THROW "Invalid Issuer";
        };
        IF $token.aud != "f4e6ee3d-cd12-4dca-b884-a9b4bdda8b10" {
            THROW "Invalid Audience";
        };

        -- 2. User Record sicherstellen (Upsert / Update)
        -- Wir nutzen UPDATE statt CREATE, um Fehler bei Existenz zu vermeiden.
        -- UPDATE erstellt den Record, falls er nicht existiert (wenn Content gesetzt wird).
        LET $u_id_sub = type::thing("user", $token.sub);

        UPDATE $u_id_sub CONTENT {
            name: $token.name,
            email: $token.email,
            last_login: time::now(),
            roles: $token.roles
        };
        
        RETURN true;
    };

-- 2. Rechte für die Tabelle "raumtypen" einschränken
-- Zugriff erlaubt wenn über 'user' authentifiziert.
-- (Weitere Claims wurden bereits im AUTHENTICATE Block geprüft)
DEFINE TABLE raumtypen SCHEMALESS
    PERMISSIONS
        FOR select, create, update, delete
        WHERE $access = "user";


