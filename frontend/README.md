# Room Editor Frontend

Static SvelteKit frontend for editing rooms in SurrealDB, hosted on GitHub Pages with Microsoft Entra ID authentication.

## Architecture

```
[Browser/SvelteKit] → [Microsoft Login] → [JWT Token] → [SurrealDB Cloud]
                                                              ↓
                                          (validates JWT via Microsoft JWKS)
```

## Prerequisites

- Node.js 20+
- Microsoft Entra ID (Azure AD) App Registration
- SurrealDB instance with JWKS authentication configured

## Local Development

1. Copy environment file:
   ```bash
   cp .env.example .env
   ```

2. Fill in the environment variables in `.env`:
   ```
   VITE_AZURE_CLIENT_ID=your-azure-client-id
   VITE_AZURE_TENANT_ID=your-azure-tenant-id
   VITE_SURREAL_ENDPOINT=wss://your-instance.surreal.io/rpc
   ```

3. Install dependencies:
   ```bash
   npm install
   ```

4. Start development server:
   ```bash
   npm run dev
   ```

## Azure AD Setup

1. Go to Azure Portal > App Registrations > New registration
2. Name: "Room Editor"
3. Supported account types: "Single tenant"
4. Redirect URI: Add both:
   - `http://localhost:5173/` (local development)
   - `https://yourusername.github.io/Datenzusammensetzung/` (production)
5. Under "Authentication":
   - Enable "Access tokens" and "ID tokens" under Implicit grant
   - Add Single-page application redirect URIs
6. Under "API permissions":
   - Add: `openid`, `profile`, `email`
7. Under "Expose an API":
   - Set Application ID URI
   - Add scope: `Rooms.ReadWrite`
8. Note the Client ID and Tenant ID

## SurrealDB Configuration

Add the following to your SurrealDB schema:

```sql
-- Define JWT authentication via Microsoft Entra ID
DEFINE ACCESS ms_entra ON DATABASE TYPE RECORD
    WITH JWT URL "https://login.microsoftonline.com/{TENANT_ID}/discovery/v2.0/keys"
    AUTHENTICATE {
        IF $token.aud CONTAINS "{CLIENT_ID}" {
            RETURN { id: $token.oid, email: $token.email, name: $token.name }
        }
    };

-- Set permissions for raum table
DEFINE TABLE raum PERMISSIONS
    FOR select, update WHERE $access = "ms_entra"
    FOR create, delete NONE;
```

Replace `{TENANT_ID}` and `{CLIENT_ID}` with your Azure AD values.

## GitHub Pages Deployment

1. Go to repository Settings > Secrets > Actions
2. Add the following secrets:
   - `AZURE_CLIENT_ID`
   - `AZURE_TENANT_ID`
   - `SURREAL_ENDPOINT`
   - `SURREAL_NAMESPACE`
   - `SURREAL_DATABASE`
3. Enable GitHub Pages with "GitHub Actions" as source
4. Push to `main` branch to trigger deployment

## Project Structure

```
frontend/
├── src/
│   ├── lib/
│   │   ├── auth/           # MSAL authentication
│   │   ├── db/             # SurrealDB client & queries
│   │   └── components/     # Svelte components
│   └── routes/
│       ├── +layout.svelte  # App layout with auth
│       ├── +page.svelte    # Home page
│       └── rooms/
│           ├── +page.svelte      # Room list
│           └── [id]/+page.svelte # Room editor
├── static/
├── svelte.config.js
└── package.json
```

## Building

```bash
npm run build
npm run preview  # Preview production build
```

## Type Checking

```bash
npm run check
```
 