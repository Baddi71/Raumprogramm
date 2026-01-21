import Surreal from 'surrealdb';
import { browser } from '$app/environment';

const endpoint = import.meta.env.VITE_SURREAL_ENDPOINT ?? 'ws://localhost:8000/rpc';
const namespace = import.meta.env.VITE_SURREAL_NAMESPACE ?? 'university';
const database = import.meta.env.VITE_SURREAL_DATABASE ?? 'facilities';

// Root authentication for development (TODO: replace with JWT auth for production)
const surrealUser = import.meta.env.VITE_SURREAL_USER ?? 'root';
const surrealPass = import.meta.env.VITE_SURREAL_PASS ?? 'root';

let db: Surreal | null = null;
let connectionPromise: Promise<Surreal> | null = null;

export async function getDb(): Promise<Surreal> {
	if (!browser) {
		throw new Error('SurrealDB client can only be used in the browser');
	}

	// Return existing connection if available
	if (db) {
		return db;
	}

	// Return existing connection attempt if in progress
	if (connectionPromise) {
		return connectionPromise;
	}

	// Start new connection
	connectionPromise = connect();
	return connectionPromise;
}

async function connect(): Promise<Surreal> {
	const instance = new Surreal();

	try {
		await instance.connect(endpoint, { versionCheck: false });
		console.log('Connected to SurrealDB at', endpoint);

		await instance.use({ namespace, database });
		console.log('Using namespace:', namespace, 'database:', database);

		// Use root authentication for development
		// TODO: Replace with JWT authentication for production
		console.log('Authenticating with root credentials...');
		await instance.signin({
			username: surrealUser,
			password: surrealPass
		});
		console.log('Authentication successful!');

		db = instance;
		return instance;
	} catch (error) {
		connectionPromise = null;
		console.error('Connection/auth error:', error);
		throw error;
	}
}

export async function reconnect(): Promise<Surreal> {
	await disconnect();
	connectionPromise = null;
	return getDb();
}

export async function disconnect(): Promise<void> {
	if (db) {
		await db.close();
		db = null;
	}
	connectionPromise = null;
}

export async function authenticateWithToken(token: string): Promise<void> {
	const instance = await getDb();
	await instance.authenticate(token);
}

export async function query<T = unknown>(sql: string, vars?: Record<string, unknown>): Promise<T[]> {
	const instance = await getDb();
	const result = await instance.query<T[]>(sql, vars);

	// SurrealDB returns array of results for each statement
	// We typically want the first result
	if (Array.isArray(result) && result.length > 0) {
		const firstResult = result[0];
		if (Array.isArray(firstResult)) {
			return firstResult;
		}
		return [firstResult] as T[];
	}

	return [];
}

export async function select<T = unknown>(table: string): Promise<T[]> {
	const instance = await getDb();
	return instance.select(table);
}

export async function selectOne<T = unknown>(recordId: string): Promise<T | undefined> {
	const instance = await getDb();
	const result = await instance.select(recordId);

	if (Array.isArray(result)) {
		return result[0] as T | undefined;
	}

	return result as T | undefined;
}

export async function create<T = unknown>(table: string, data: Partial<T>): Promise<T> {
	const instance = await getDb();
	const result = await instance.create(table, data);

	if (Array.isArray(result)) {
		return result[0] as T;
	}

	return result as T;
}

export async function update<T = unknown>(recordId: string, data: Partial<T>): Promise<T> {
	const instance = await getDb();
	const result = await instance.update(recordId, data);

	if (Array.isArray(result)) {
		return result[0] as T;
	}

	return result as T;
}

export async function merge<T = unknown>(recordId: string, data: Partial<T>): Promise<T> {
	const instance = await getDb();

	// Use UPDATE query with MERGE semantics
	// Record ID must be embedded directly, not as a variable (SurrealDB limitation)
	const result = await instance.query<T[]>(
		`UPDATE ${recordId} MERGE $data RETURN AFTER`,
		{ data }
	);

	if (Array.isArray(result) && result.length > 0) {
		const firstResult = result[0];
		if (Array.isArray(firstResult) && firstResult.length > 0) {
			return firstResult[0] as T;
		}
		return firstResult as T;
	}

	return result as T;
}

export async function remove(recordId: string): Promise<void> {
	const instance = await getDb();
	await instance.delete(recordId);
}

export { endpoint, namespace, database };
