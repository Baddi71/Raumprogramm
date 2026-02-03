-- Define a standard user for the application
-- This user has full rights within the DATABASE level
DEFINE USER app_writer ON DATABASE PASSWORD 'Raumprogramm2024!' ROLES OWNER;

-- Ensure permissions allow this user to work
-- (OWNER role usually has full access, but we ensure schema access)
DEFINE TABLE raumtypen SCHEMALESS
    PERMISSIONS FULL;

DEFINE TABLE user SCHEMALESS
    PERMISSIONS FULL;
