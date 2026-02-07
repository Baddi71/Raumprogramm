
import { Surreal } from 'surrealdb';

// Hardcoded config since we can't easily rely on dotenv being installed/working in this environment
const TARGET = 'ws://localhost:8000/rpc'; // Using /rpc endpoint for WebSocket
const NS = 'test';
const DB = 'test';

async function main() {
    const db = new Surreal();

    try {
        console.log(`Connecting to ${TARGET}...`);
        await db.connect(TARGET, {
            namespace: NS,
            database: DB,
        });
        
        // No auth needed for localhost typically if started without auth, or we might need strict auth.
        // The .env didn't show user/pass, assuming root/root or no auth for dev.
        // If auth is needed, we might fail here. 
        // Let's try to signin as root if needed, or skip if not.
        try {
             await db.signin({
                user: 'root',
                pass: 'root',
            });
        } catch (e) {
            console.warn("Signin failed (might not be needed or wrong creds):", e.message);
        }

        console.log("Connected. Fetching all room types...");

        // Select all records from raumtypen
        const rooms = await db.select('raumtypen');
        console.log(`Found ${rooms.length} rooms.`);

        let modifiedCount = 0;

        for (const room of rooms) {
            if (!room.categories) continue;

            let isModified = false;
            const newCategories = {};

            for (const [catName, catData] of Object.entries(room.categories)) {
                newCategories[catName] = {};
                
                for (const [paramName, paramValue] of Object.entries(catData)) {
                    // Check if already in new format (is object and has 'value' key)
                    if (paramValue && typeof paramValue === 'object' && 'value' in paramValue) {
                        newCategories[catName][paramName] = paramValue;
                        continue;
                    }

                    // Transform to new format
                    isModified = true;
                    
                    const label = paramName
                        .replace(/_/g, ' ') // Replace underscores with spaces
                        .replace(/\b\w/g, c => c.toUpperCase()); // Capitalize first letters (optional, but looks nicer)

                    // Simple type inference
                    let type = 'text';
                    if (typeof paramValue === 'number') type = 'number';
                    if (typeof paramValue === 'boolean') type = 'bool';

                    newCategories[catName][paramName] = {
                        value: paramValue,
                        label: label,
                        type: type
                    };
                }
            }

            if (isModified) {
                // Update the record
                await db.merge(room.id, {
                    categories: newCategories
                });
                modifiedCount++;
                if (modifiedCount % 10 === 0) process.stdout.write('.');
            }
        }

        console.log(`\nMigration complete. Updated ${modifiedCount} records.`);

    } catch (e) {
        console.error("Migration failed:", e);
    } finally {
        await db.close();
    }
}

main();
