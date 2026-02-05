
import { Surreal } from 'surrealdb';

export const db = new Surreal();

export async function connectDB(user) {
    try {
        // Connect to SurrealDB
        await db.connect(import.meta.env.VITE_SURREAL_URL, {
            namespace: import.meta.env.VITE_SURREAL_NS,
            database: import.meta.env.VITE_SURREAL_DB,
        });

        // Authenticate with the technical user
        // We only reach this point if the frontend user is logged in via Microsoft (see App.svelte)
        console.log("Connecting to DB as technical user...");
        await db.signin({
            namespace: import.meta.env.VITE_SURREAL_NS,
            database: import.meta.env.VITE_SURREAL_DB,
            access: 'account',
            variables: {
                oid: user.idTokenClaims.oid,
                email: user.idTokenClaims.preferred_username,
                name: user.idTokenClaims.name
            }
        });
        // console.log(token);
        // await db.authenticate(token);

    } catch (err) {
        console.error('Failed to connect to SurrealDB:', err);
        throw err;
    }
}
