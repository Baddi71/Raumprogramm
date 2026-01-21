import { query, select, selectOne, merge } from './surrealClient';
import type {
	Raum,
	RaumWithRelations,
	RaumFormData,
	RaumParameter,
	Raumtyp,
	Teilprojekt,
	Funktionsbereich,
	Verortung,
	Nutzer,
	RoomFilter,
	PaginationOptions,
	PaginatedResult,
	RecordId
} from './types';

// Helper to normalize record ID to string format
// SurrealDB can return IDs as objects { tb: 'table', id: 'value' } or strings 'table:value'
export function normalizeRecordId(id: unknown): string {
	if (typeof id === 'string') {
		return id;
	}
	if (id && typeof id === 'object' && 'tb' in id && 'id' in id) {
		const obj = id as { tb: string; id: string };
		return `${obj.tb}:${obj.id}`;
	}
	// Fallback: convert to string
	return String(id);
}

// Room Queries

export async function getAllRooms(): Promise<Raum[]> {
	return select<Raum>('raum');
}

export async function getRoomsWithRelations(): Promise<RaumWithRelations[]> {
	// Schema v3: Use graph traversal for relations
	// Use .* to fetch full record data instead of just IDs
	const result = await query<RaumWithRelations>(`
		SELECT
			*,
			->ist_raumtyp->raumtyp.*[0] AS raumtyp,
			->gehoert_zu_teilprojekt->teilprojekt.*[0] AS teilprojekt,
			->hat_funktionsbereich->funktionsbereich.*[0] AS funktionsbereich,
			->hat_verortung->verortung.*[0] AS verortung,
			->wird_genutzt_von->nutzer.*[0] AS nutzer
		FROM raum
		ORDER BY nummer ASC
	`);
	return result;
}

export async function getRoomById(id: string | unknown): Promise<Raum | undefined> {
	// Handle both formats: "raum:123" or just "123", and object format { tb, id }
	const normalizedId = normalizeRecordId(id);
	const recordId = normalizedId.includes(':') ? normalizedId : `raum:${normalizedId}`;
	return selectOne<Raum>(recordId);
}

export async function getRoomWithRelations(id: string | unknown): Promise<RaumWithRelations | undefined> {
	// Ensure proper record ID format, handle object format { tb, id }
	const normalizedId = normalizeRecordId(id);
	const recordId = normalizedId.includes(':') ? normalizedId : `raum:${normalizedId}`;

	// Basic validation - record IDs should match pattern table:id
	if (!/^[a-z_]+:[a-z0-9_]+$/i.test(recordId)) {
		console.error('Invalid record ID format:', recordId);
		return undefined;
	}

	// Schema v3: Relations are graph edges, not direct fields
	// Use graph traversal to get related records
	// Use .* to fetch full record data instead of just IDs
	const result = await query<RaumWithRelations>(`
		SELECT
			*,
			->ist_raumtyp->raumtyp.*[0] AS raumtyp,
			->gehoert_zu_teilprojekt->teilprojekt.*[0] AS teilprojekt,
			->hat_funktionsbereich->funktionsbereich.*[0] AS funktionsbereich,
			->hat_verortung->verortung.*[0] AS verortung,
			->wird_genutzt_von->nutzer.*[0] AS nutzer,
			->hat_parameter->raum_parameter.*[0] AS parameter
		FROM ${recordId}
	`);

	return result[0];
}

export async function updateRoom(id: string | unknown, data: Partial<RaumFormData>): Promise<Raum> {
	const normalizedId = normalizeRecordId(id);
	const recordId = normalizedId.includes(':') ? normalizedId : `raum:${normalizedId}`;

	// Separate direct fields from relations
	const { raumtyp, teilprojekt, funktionsbereich, verortung, nutzer, ...directFields } = data;

	// Update direct fields on the raum record
	const updatedRoom = await merge<Raum>(recordId, directFields);

	// Update relations (Schema v3: graph edges)
	// Each relation needs to be deleted and recreated if value changed

	if (raumtyp !== undefined) {
		await query(`DELETE ist_raumtyp WHERE in = ${recordId}`);
		if (raumtyp) {
			await query(`RELATE ${recordId}->ist_raumtyp->${raumtyp}`);
		}
	}

	if (teilprojekt !== undefined) {
		await query(`DELETE gehoert_zu_teilprojekt WHERE in = ${recordId}`);
		if (teilprojekt) {
			await query(`RELATE ${recordId}->gehoert_zu_teilprojekt->${teilprojekt}`);
		}
	}

	if (funktionsbereich !== undefined) {
		await query(`DELETE hat_funktionsbereich WHERE in = ${recordId}`);
		if (funktionsbereich) {
			await query(`RELATE ${recordId}->hat_funktionsbereich->${funktionsbereich}`);
		}
	}

	if (verortung !== undefined) {
		await query(`DELETE hat_verortung WHERE in = ${recordId}`);
		if (verortung) {
			await query(`RELATE ${recordId}->hat_verortung->${verortung}`);
		}
	}

	if (nutzer !== undefined) {
		await query(`DELETE wird_genutzt_von WHERE in = ${recordId}`);
		if (nutzer) {
			await query(`RELATE ${recordId}->wird_genutzt_von->${nutzer}`);
		}
	}

	return updatedRoom;
}

export async function updateRoomParameter(
	roomId: string | unknown,
	data: Partial<Omit<RaumParameter, 'id'>>
): Promise<RaumParameter> {
	const normalizedId = normalizeRecordId(roomId);
	const recordId = normalizedId.includes(':') ? normalizedId : `raum:${normalizedId}`;

	// Check if parameter record exists
	const existing = await query<{ out: RaumParameter }>(`
		SELECT out FROM hat_parameter WHERE in = ${recordId}
	`);

	let parameterId: string;

	// Extract just the ID part from room ID (e.g., "1" from "raum:1")
	const roomIdPart = normalizedId.includes(':') ? normalizedId.split(':')[1] : normalizedId;

	if (existing.length > 0 && existing[0].out) {
		// Update existing parameter - get full record ID
		const existingParamId = normalizeRecordId(existing[0].out);
		parameterId = existingParamId.includes(':') ? existingParamId : `raum_parameter:${existingParamId}`;
		await merge<RaumParameter>(parameterId, data);
	} else {
		// Create new parameter record and relation
		parameterId = `raum_parameter:${roomIdPart}`;
		await query(`UPSERT ${parameterId} SET ${
			Object.entries(data)
				.filter(([_, v]) => v !== undefined)
				.map(([k, v]) => `${k} = ${typeof v === 'string' ? `'${v}'` : v}`)
				.join(', ')
		}`);
		await query(`RELATE ${recordId}->hat_parameter->${parameterId}`);
	}

	const result = await selectOne<RaumParameter>(parameterId);
	return result!;
}

export async function searchRooms(filter: RoomFilter): Promise<Raum[]> {
	let whereClause = 'true';
	const vars: Record<string, unknown> = {};

	if (filter.search) {
		whereClause += ' AND (string::lowercase(bezeichnung) CONTAINS string::lowercase($search) OR string::contains(<string>nummer, $search))';
		vars.search = filter.search;
	}

	// Schema v3: Filter by relations using graph traversal
	if (filter.teilprojekt) {
		whereClause += ` AND ->gehoert_zu_teilprojekt->teilprojekt CONTAINS $teilprojekt`;
		vars.teilprojekt = filter.teilprojekt;
	}

	if (filter.funktionsbereich) {
		whereClause += ` AND ->hat_funktionsbereich->funktionsbereich CONTAINS $funktionsbereich`;
		vars.funktionsbereich = filter.funktionsbereich;
	}

	if (filter.verortung) {
		whereClause += ` AND ->hat_verortung->verortung CONTAINS $verortung`;
		vars.verortung = filter.verortung;
	}

	if (filter.raumtyp) {
		whereClause += ` AND ->ist_raumtyp->raumtyp CONTAINS $raumtyp`;
		vars.raumtyp = filter.raumtyp;
	}

	return query<Raum>(`
		SELECT * FROM raum
		WHERE ${whereClause}
		ORDER BY nummer ASC
	`, vars);
}

export async function searchRoomsWithRelations(filter: RoomFilter): Promise<RaumWithRelations[]> {
	let whereClause = 'true';
	const vars: Record<string, unknown> = {};

	if (filter.search) {
		whereClause += ' AND (string::lowercase(bezeichnung) CONTAINS string::lowercase($search) OR string::contains(<string>nummer, $search))';
		vars.search = filter.search;
	}

	// Schema v3: Filter by relations using graph traversal
	if (filter.teilprojekt) {
		whereClause += ` AND ->gehoert_zu_teilprojekt->teilprojekt CONTAINS $teilprojekt`;
		vars.teilprojekt = filter.teilprojekt;
	}

	if (filter.funktionsbereich) {
		whereClause += ` AND ->hat_funktionsbereich->funktionsbereich CONTAINS $funktionsbereich`;
		vars.funktionsbereich = filter.funktionsbereich;
	}

	if (filter.verortung) {
		whereClause += ` AND ->hat_verortung->verortung CONTAINS $verortung`;
		vars.verortung = filter.verortung;
	}

	if (filter.raumtyp) {
		whereClause += ` AND ->ist_raumtyp->raumtyp CONTAINS $raumtyp`;
		vars.raumtyp = filter.raumtyp;
	}

	return query<RaumWithRelations>(`
		SELECT
			*,
			->ist_raumtyp->raumtyp.*[0] AS raumtyp,
			->gehoert_zu_teilprojekt->teilprojekt.*[0] AS teilprojekt,
			->hat_funktionsbereich->funktionsbereich.*[0] AS funktionsbereich,
			->hat_verortung->verortung.*[0] AS verortung,
			->wird_genutzt_von->nutzer.*[0] AS nutzer
		FROM raum
		WHERE ${whereClause}
		ORDER BY nummer ASC
	`, vars);
}

export async function getPaginatedRooms(
	filter: RoomFilter,
	pagination: PaginationOptions
): Promise<PaginatedResult<RaumWithRelations>> {
	let whereClause = 'true';
	const vars: Record<string, unknown> = {};

	if (filter.search) {
		whereClause += ' AND (string::lowercase(bezeichnung) CONTAINS string::lowercase($search) OR string::contains(<string>nummer, $search))';
		vars.search = filter.search;
	}

	// Schema v3: Filter by relations using graph traversal
	if (filter.teilprojekt) {
		whereClause += ` AND ->gehoert_zu_teilprojekt->teilprojekt CONTAINS $teilprojekt`;
		vars.teilprojekt = filter.teilprojekt;
	}

	if (filter.funktionsbereich) {
		whereClause += ` AND ->hat_funktionsbereich->funktionsbereich CONTAINS $funktionsbereich`;
		vars.funktionsbereich = filter.funktionsbereich;
	}

	if (filter.verortung) {
		whereClause += ` AND ->hat_verortung->verortung CONTAINS $verortung`;
		vars.verortung = filter.verortung;
	}

	if (filter.raumtyp) {
		whereClause += ` AND ->ist_raumtyp->raumtyp CONTAINS $raumtyp`;
		vars.raumtyp = filter.raumtyp;
	}

	const offset = (pagination.page - 1) * pagination.pageSize;

	// Get total count
	const countResult = await query<{ count: number }>(`
		SELECT count() as count FROM raum WHERE ${whereClause} GROUP ALL
	`, vars);
	const total = countResult[0]?.count ?? 0;

	// Get paginated data with graph traversal
	// Use .* to fetch full record data instead of just IDs
	const data = await query<RaumWithRelations>(`
		SELECT
			*,
			->ist_raumtyp->raumtyp.*[0] AS raumtyp,
			->gehoert_zu_teilprojekt->teilprojekt.*[0] AS teilprojekt,
			->hat_funktionsbereich->funktionsbereich.*[0] AS funktionsbereich,
			->hat_verortung->verortung.*[0] AS verortung,
			->wird_genutzt_von->nutzer.*[0] AS nutzer
		FROM raum
		WHERE ${whereClause}
		ORDER BY nummer ASC
		LIMIT $limit START $offset
	`, { ...vars, limit: pagination.pageSize, offset });

	return {
		data,
		total,
		page: pagination.page,
		pageSize: pagination.pageSize,
		totalPages: Math.ceil(total / pagination.pageSize)
	};
}

// Lookup Data Queries

export async function getAllRaumtypen(): Promise<Raumtyp[]> {
	return query<Raumtyp>('SELECT * FROM raumtyp ORDER BY code ASC');
}

export async function getAllTeilprojekte(): Promise<Teilprojekt[]> {
	return query<Teilprojekt>('SELECT * FROM teilprojekt ORDER BY name ASC');
}

export async function getAllFunktionsbereiche(): Promise<Funktionsbereich[]> {
	return query<Funktionsbereich>('SELECT * FROM funktionsbereich ORDER BY name ASC');
}

export async function getAllVerortungen(): Promise<Verortung[]> {
	return query<Verortung>('SELECT * FROM verortung ORDER BY name ASC');
}

export async function getAllNutzer(): Promise<Nutzer[]> {
	return query<Nutzer>('SELECT * FROM nutzer ORDER BY ebene, name ASC');
}

// Combined lookup data for forms

export interface LookupData {
	raumtypen: Raumtyp[];
	teilprojekte: Teilprojekt[];
	funktionsbereiche: Funktionsbereich[];
	verortungen: Verortung[];
	nutzer: Nutzer[];
}

export async function getAllLookupData(): Promise<LookupData> {
	const [raumtypen, teilprojekte, funktionsbereiche, verortungen, nutzer] = await Promise.all([
		getAllRaumtypen(),
		getAllTeilprojekte(),
		getAllFunktionsbereiche(),
		getAllVerortungen(),
		getAllNutzer()
	]);

	return {
		raumtypen,
		teilprojekte,
		funktionsbereiche,
		verortungen,
		nutzer
	};
}

// Helper to extract ID from record reference
export function extractId(recordId: RecordId | unknown | undefined): string | undefined {
	if (!recordId) return undefined;
	const normalized = normalizeRecordId(recordId);
	const parts = normalized.split(':');
	return parts.length > 1 ? parts[1] : normalized;
}

export function formatRecordId<T extends string>(table: T, id: string | unknown): RecordId<T> {
	const normalized = normalizeRecordId(id);
	if (normalized.includes(':')) return normalized as RecordId<T>;
	return `${table}:${normalized}` as RecordId<T>;
}
