
import { Surreal } from 'surrealdb';

export const db = new Surreal();

export async function connectDB(user) {
    try {
        // Connect to SurrealDB
        // Using wss for Surreal Cloud
        // await db.connect('https://elegant-meadow-06dtv6h4r5u3la02jpviegvrbk.aws-euw1.surreal.cloud/rpc', { ... });
        // Correct usage for cloud is typically wss://...

        // Note: For SurrealDB v2+ / latest SDK, 'wss' is preferred for rpc.
        await db.connect('ws://localhost:8000/rpc', {
            namespace: 'test',
            database: 'test',
        });

        // Authenticate with the technical user
        // We only reach this point if the frontend user is logged in via Microsoft (see App.svelte)
        console.log("Connecting to DB as technical user...");
        await db.signin({
            namespace: 'test',
            database: 'test',
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
