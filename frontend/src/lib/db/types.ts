// TypeScript interfaces matching schema_v2.surql

export type RecordId<T extends string = string> = `${T}:${string}`;

// Base interface for all records
export interface SurrealRecord {
	id: RecordId;
}

// Lookup/Master Data Tables

export interface Bereich extends SurrealRecord {
	id: RecordId<'bereich'>;
	code: string;
	name: string;
	beschreibung?: string;
}

export interface Teilprojekt extends SurrealRecord {
	id: RecordId<'teilprojekt'>;
	code: string;
	name: string;
	beschreibung?: string;
}

export interface Funktionsbereich extends SurrealRecord {
	id: RecordId<'funktionsbereich'>;
	code: string;
	name: string;
	beschreibung?: string;
}

export interface Verortung extends SurrealRecord {
	id: RecordId<'verortung'>;
	code: string;
	name: string;
}

export interface Nutzer extends SurrealRecord {
	id: RecordId<'nutzer'>;
	code: string;
	name: string;
	ebene: number;
	parent?: RecordId<'nutzer'>;
}

export interface MedienKategorie extends SurrealRecord {
	id: RecordId<'medien_kategorie'>;
	code: string;
	name: string;
	sortierung: number;
}

export interface MedienanschlussTyp extends SurrealRecord {
	id: RecordId<'medienanschluss_typ'>;
	code: string;
	name: string;
	kategorie: RecordId<'medien_kategorie'>;
	einheit: string;
	technische_daten?: Record<string, unknown>;
}

export interface AusstattungKategorie extends SurrealRecord {
	id: RecordId<'ausstattung_kategorie'>;
	code: string;
	name: string;
	sortierung: number;
}

export interface Ausstattungstyp extends SurrealRecord {
	id: RecordId<'ausstattungstyp'>;
	code: string;
	name: string;
	kategorie: RecordId<'ausstattung_kategorie'>;
	beschreibung?: string;
}

// Main Tables

export interface Raumtyp extends SurrealRecord {
	id: RecordId<'raumtyp'>;
	code: string;
	bezeichnung: string;
	bereich?: RecordId<'bereich'>;
	beschreibung?: string;
	erstellt_am: string;
	aktualisiert_am: string;
}

export interface Raum extends SurrealRecord {
	id: RecordId<'raum'>;
	nummer: number;
	bezeichnung: string;
	nc5_code?: string;
	nc5_bezeichnung?: string;
	raumtyp?: RecordId<'raumtyp'>;
	teilprojekt?: RecordId<'teilprojekt'>;
	funktionsbereich?: RecordId<'funktionsbereich'>;
	verortung?: RecordId<'verortung'>;
	nutzer?: RecordId<'nutzer'>;
	teil_der_beauftragung: boolean;
	flaeche_nuf_1_6?: number;
	flaeche_nuf_7_9?: number;
	din277?: string;
	personen_max?: number;
	anzahl_raeume?: number;
	hinweise?: string;
	erstellt_am: string;
	aktualisiert_am: string;
}

// Raum Parameter (zusätzliche technische Parameter)
export interface RaumParameter extends SurrealRecord {
	id: RecordId<'raum_parameter'>;

	// Grundparameter
	mindest_flaeche?: number;
	mindest_hoehe?: number;
	zugang_vorne?: number;
	zugang_hinten?: number;
	zugang_seite?: number;
	platzierung?: 'wand' | 'freistehend';
	service_zugang?: 'vorne' | 'hinten' | 'oben';
	boden_tragfaehigkeit?: number;
	vibrationsdaempfung?: string;

	// Mikroklima
	temperatur_min?: number;
	temperatur_max?: number;
	temperatur_schwankung?: number;
	luftfeuchtigkeit_min?: number;
	luftfeuchtigkeit_max?: number;
	luftfeuchtigkeit_schwankung?: number;
	kondensation_empfindlich?: boolean;

	// Luftstrom
	luftstrom_messeinfluss?: string;
	belueftungsart?: 'zuluft' | 'abluft' | 'ausgeglichen';
	luftstrom_sensibel?: boolean;
	lokale_abgasanlage?: boolean;
	turbulenzen_vermeiden?: boolean;
	rezirkulation_erlaubt?: boolean;

	// Elektrik & Kommunikation
	leistungsstabilitaet?: 'hoch' | 'standard';
	ueberspannungsschutz?: boolean;
	lan_geschwindigkeit?: string;
	ups_erforderlich?: boolean;

	// Umwelt
	vibrations_grad?: string;
	em_sensibel?: boolean;
	akustik_einschraenkungen?: string;
	staub_kritisch?: boolean;
	chemische_daempfe_erlaubt?: boolean;

	// Sicherheit
	zugang_beschraenkt?: boolean;
	personal_qualifikation?: string;
	psa_anforderungen?: string;
	verriegelung_erforderlich?: boolean;
	notabschaltung_erforderlich?: boolean;
	service_sperre_erforderlich?: boolean;

	// Wartung
	servicewerkzeug_platz?: boolean;
	ersatzteil_zugang?: boolean;
	dekontamination_erforderlich?: boolean;
	ausfallzeit_toleranz?: string;
	externe_dienste_erforderlich?: boolean;
	service_anderer_raum?: boolean;
}

// Extended types with resolved references for display

export interface RaumWithRelations extends Omit<Raum, 'raumtyp' | 'teilprojekt' | 'funktionsbereich' | 'verortung' | 'nutzer'> {
	raumtyp?: Raumtyp;
	teilprojekt?: Teilprojekt;
	funktionsbereich?: Funktionsbereich;
	verortung?: Verortung;
	nutzer?: Nutzer;
	parameter?: RaumParameter;
}

export interface RaumtypWithRelations extends Omit<Raumtyp, 'bereich'> {
	bereich?: Bereich;
}

// Form data for editing (without id and timestamps)

export interface RaumFormData {
	nummer: number;
	bezeichnung: string;
	nc5_code?: string;
	nc5_bezeichnung?: string;
	raumtyp?: RecordId<'raumtyp'>;
	teilprojekt?: RecordId<'teilprojekt'>;
	funktionsbereich?: RecordId<'funktionsbereich'>;
	verortung?: RecordId<'verortung'>;
	nutzer?: RecordId<'nutzer'>;
	teil_der_beauftragung: boolean;
	flaeche_nuf_1_6?: number;
	flaeche_nuf_7_9?: number;
	din277?: string;
	personen_max?: number;
	anzahl_raeume?: number;
	hinweise?: string;
}

// Query result types

export interface QueryResult<T> {
	result: T[];
	status: string;
	time: string;
}

// Filter options for room list

export interface RoomFilter {
	search?: string;
	teilprojekt?: RecordId<'teilprojekt'>;
	funktionsbereich?: RecordId<'funktionsbereich'>;
	verortung?: RecordId<'verortung'>;
	raumtyp?: RecordId<'raumtyp'>;
}

// Pagination

export interface PaginationOptions {
	page: number;
	pageSize: number;
}

export interface PaginatedResult<T> {
	data: T[];
	total: number;
	page: number;
	pageSize: number;
	totalPages: number;
}
