
import { Surreal } from 'surrealdb';
import fs from 'fs';
import path from 'path';

const TARGET = 'ws://localhost:8000/rpc';
const NS = 'test';
const DB = 'test';
const IMPORT_FILE = '../import.surql';

async function main() {
    const db = new Surreal();

    try {
        console.log(`Connecting to ${TARGET}...`);
        await db.connect(TARGET, {
            namespace: NS,
            database: DB,
        });

        try {
            await db.signin({
                username: 'root',
                password: 'root',
            });
        } catch (e) {
            console.warn("Signin failed (might not be needed):", e.message);
        }

        console.log("Connected. Reading import file...");
        const surql = fs.readFileSync(path.join(process.cwd(), IMPORT_FILE), 'utf8');

        console.log("Deleting existing data...");
        // Split delete statements to avoid potential large query issues if any
        await db.query(`
            REMOVE TABLE raumtypen; 
            REMOVE TABLE hat_teilprojekt; 
            REMOVE TABLE hat_nutzer_ebene_1; 
            REMOVE TABLE hat_nutzer_ebene_2; 
            REMOVE TABLE hat_funktions_bereich;
            REMOVE TABLE nutzer_ebene_1;
            REMOVE TABLE nutzer_ebene_2;
            REMOVE TABLE funktions_bereich;
            REMOVE TABLE teilprojekt;
        `);

        console.log("Importing data...");
        await db.query(surql);

        console.log("Import complete.");

    } catch (e) {
        console.error("Import failed:", e);
    } finally {
        await db.close();
    }
}

main();
