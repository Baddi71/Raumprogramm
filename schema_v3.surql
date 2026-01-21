-- ============================================================
-- SurrealDB Schema v3: Reine Graph-Struktur
-- Alle Verknüpfungen als Relations (keine direkten Referenzen)
-- ============================================================

DEFINE NAMESPACE IF NOT EXISTS university;
USE NS university;
DEFINE DATABASE IF NOT EXISTS facilities;
USE DB facilities;

-- ############################################################
-- TEIL 1: KNOTEN-TABELLEN (Entities)
-- Keine record<> Referenzen - alle Verknüpfungen über Relations
-- ############################################################

-- ============================================================
-- Tabelle: bereich
-- ============================================================
DEFINE TABLE bereich SCHEMAFULL;
DEFINE FIELD code ON TABLE bereich TYPE string;
DEFINE FIELD name ON TABLE bereich TYPE string;
DEFINE FIELD beschreibung ON TABLE bereich TYPE option<string>;
DEFINE INDEX idx_bereich_code ON TABLE bereich COLUMNS code UNIQUE;

-- ============================================================
-- Tabelle: teilprojekt
-- ============================================================
DEFINE TABLE teilprojekt SCHEMAFULL;
DEFINE FIELD code ON TABLE teilprojekt TYPE string;
DEFINE FIELD name ON TABLE teilprojekt TYPE string;
DEFINE FIELD beschreibung ON TABLE teilprojekt TYPE option<string>;
DEFINE INDEX idx_teilprojekt_code ON TABLE teilprojekt COLUMNS code UNIQUE;

-- ============================================================
-- Tabelle: funktionsbereich
-- ============================================================
DEFINE TABLE funktionsbereich SCHEMAFULL;
DEFINE FIELD code ON TABLE funktionsbereich TYPE string;
DEFINE FIELD name ON TABLE funktionsbereich TYPE string;
DEFINE FIELD beschreibung ON TABLE funktionsbereich TYPE option<string>;
DEFINE INDEX idx_funktionsbereich_code ON TABLE funktionsbereich COLUMNS code UNIQUE;

-- ============================================================
-- Tabelle: verortung
-- ============================================================
DEFINE TABLE verortung SCHEMAFULL;
DEFINE FIELD code ON TABLE verortung TYPE string;
DEFINE FIELD name ON TABLE verortung TYPE string;
DEFINE INDEX idx_verortung_code ON TABLE verortung COLUMNS code UNIQUE;

-- ============================================================
-- Tabelle: nutzer
-- ============================================================
DEFINE TABLE nutzer SCHEMAFULL;
DEFINE FIELD code ON TABLE nutzer TYPE string;
DEFINE FIELD name ON TABLE nutzer TYPE string;
DEFINE FIELD ebene ON TABLE nutzer TYPE int DEFAULT 1;
DEFINE INDEX idx_nutzer_code ON TABLE nutzer COLUMNS code UNIQUE;

-- ============================================================
-- Tabelle: medien_kategorie
-- ============================================================
DEFINE TABLE medien_kategorie SCHEMAFULL;
DEFINE FIELD code ON TABLE medien_kategorie TYPE string;
DEFINE FIELD name ON TABLE medien_kategorie TYPE string;
DEFINE FIELD sortierung ON TABLE medien_kategorie TYPE int;
DEFINE INDEX idx_medien_kategorie_code ON TABLE medien_kategorie COLUMNS code UNIQUE;

-- ============================================================
-- Tabelle: medienanschluss_typ
-- ============================================================
DEFINE TABLE medienanschluss_typ SCHEMAFULL;
DEFINE FIELD code ON TABLE medienanschluss_typ TYPE string;
DEFINE FIELD name ON TABLE medienanschluss_typ TYPE string;
DEFINE FIELD einheit ON TABLE medienanschluss_typ TYPE string DEFAULT 'Stück';
DEFINE FIELD technische_daten ON TABLE medienanschluss_typ TYPE option<object>;
DEFINE INDEX idx_medienanschluss_code ON TABLE medienanschluss_typ COLUMNS code UNIQUE;

-- ============================================================
-- Tabelle: ausstattung_kategorie
-- ============================================================
DEFINE TABLE ausstattung_kategorie SCHEMAFULL;
DEFINE FIELD code ON TABLE ausstattung_kategorie TYPE string;
DEFINE FIELD name ON TABLE ausstattung_kategorie TYPE string;
DEFINE FIELD sortierung ON TABLE ausstattung_kategorie TYPE int;
DEFINE INDEX idx_ausstattung_kategorie_code ON TABLE ausstattung_kategorie COLUMNS code UNIQUE;

-- ============================================================
-- Tabelle: ausstattungstyp
-- ============================================================
DEFINE TABLE ausstattungstyp SCHEMAFULL;
DEFINE FIELD code ON TABLE ausstattungstyp TYPE string;
DEFINE FIELD name ON TABLE ausstattungstyp TYPE string;
DEFINE FIELD beschreibung ON TABLE ausstattungstyp TYPE option<string>;
DEFINE INDEX idx_ausstattungstyp_code ON TABLE ausstattungstyp COLUMNS code UNIQUE;

-- ============================================================
-- Tabelle: raumtyp
-- ============================================================
DEFINE TABLE raumtyp SCHEMAFULL;
DEFINE FIELD code ON TABLE raumtyp TYPE string;
DEFINE FIELD bezeichnung ON TABLE raumtyp TYPE string;
DEFINE FIELD beschreibung ON TABLE raumtyp TYPE option<string>;
DEFINE FIELD erstellt_am ON TABLE raumtyp TYPE datetime DEFAULT time::now();
DEFINE INDEX idx_raumtyp_code ON TABLE raumtyp COLUMNS code UNIQUE;

-- ============================================================
-- Tabelle: raum
-- ============================================================
DEFINE TABLE raum SCHEMAFULL;
DEFINE FIELD nummer ON TABLE raum TYPE int;
DEFINE FIELD bezeichnung ON TABLE raum TYPE string;
DEFINE FIELD nc5_code ON TABLE raum TYPE option<string>;
DEFINE FIELD nc5_bezeichnung ON TABLE raum TYPE option<string>;
DEFINE FIELD teil_der_beauftragung ON TABLE raum TYPE bool DEFAULT true;
DEFINE FIELD flaeche_nuf_1_6 ON TABLE raum TYPE option<float>;
DEFINE FIELD flaeche_nuf_7_9 ON TABLE raum TYPE option<float>;
DEFINE FIELD din277 ON TABLE raum TYPE option<string>;
DEFINE FIELD personen_max ON TABLE raum TYPE option<int>;
DEFINE FIELD anzahl_raeume ON TABLE raum TYPE option<int>;
DEFINE FIELD hinweise ON TABLE raum TYPE option<string>;
DEFINE FIELD erstellt_am ON TABLE raum TYPE datetime DEFAULT time::now();
DEFINE INDEX idx_raum_nummer ON TABLE raum COLUMNS nummer UNIQUE;

-- ============================================================
-- Tabelle: raum_parameter (zusätzliche technische Parameter)
-- ============================================================
DEFINE TABLE raum_parameter SCHEMAFULL;

-- Grundparameter
DEFINE FIELD mindest_flaeche ON TABLE raum_parameter TYPE option<float>;
DEFINE FIELD mindest_hoehe ON TABLE raum_parameter TYPE option<float>;
DEFINE FIELD zugang_vorne ON TABLE raum_parameter TYPE option<int>;
DEFINE FIELD zugang_hinten ON TABLE raum_parameter TYPE option<int>;
DEFINE FIELD zugang_seite ON TABLE raum_parameter TYPE option<int>;
DEFINE FIELD platzierung ON TABLE raum_parameter TYPE option<string>; -- 'wand' | 'freistehend'
DEFINE FIELD service_zugang ON TABLE raum_parameter TYPE option<string>; -- 'vorne' | 'hinten' | 'oben'
DEFINE FIELD boden_tragfaehigkeit ON TABLE raum_parameter TYPE option<float>;
DEFINE FIELD vibrationsdaempfung ON TABLE raum_parameter TYPE option<string>; -- 'ja' | 'nein' | stufe

-- Mikroklima
DEFINE FIELD temperatur_min ON TABLE raum_parameter TYPE option<float>;
DEFINE FIELD temperatur_max ON TABLE raum_parameter TYPE option<float>;
DEFINE FIELD temperatur_schwankung ON TABLE raum_parameter TYPE option<float>;
DEFINE FIELD luftfeuchtigkeit_min ON TABLE raum_parameter TYPE option<float>;
DEFINE FIELD luftfeuchtigkeit_max ON TABLE raum_parameter TYPE option<float>;
DEFINE FIELD luftfeuchtigkeit_schwankung ON TABLE raum_parameter TYPE option<float>;
DEFINE FIELD kondensation_empfindlich ON TABLE raum_parameter TYPE option<bool>;

-- Luftstrom
DEFINE FIELD luftstrom_messeinfluss ON TABLE raum_parameter TYPE option<string>;
DEFINE FIELD belueftungsart ON TABLE raum_parameter TYPE option<string>; -- 'zuluft' | 'abluft' | 'ausgeglichen'
DEFINE FIELD luftstrom_sensibel ON TABLE raum_parameter TYPE option<bool>;
DEFINE FIELD lokale_abgasanlage ON TABLE raum_parameter TYPE option<bool>;
DEFINE FIELD turbulenzen_vermeiden ON TABLE raum_parameter TYPE option<bool>;
DEFINE FIELD rezirkulation_erlaubt ON TABLE raum_parameter TYPE option<bool>;

-- Elektrik & Kommunikation
DEFINE FIELD leistungsstabilitaet ON TABLE raum_parameter TYPE option<string>; -- 'hoch' | 'standard'
DEFINE FIELD ueberspannungsschutz ON TABLE raum_parameter TYPE option<bool>;
DEFINE FIELD lan_geschwindigkeit ON TABLE raum_parameter TYPE option<string>;
DEFINE FIELD ups_erforderlich ON TABLE raum_parameter TYPE option<bool>;

-- Umwelt
DEFINE FIELD vibrations_grad ON TABLE raum_parameter TYPE option<string>;
DEFINE FIELD em_sensibel ON TABLE raum_parameter TYPE option<bool>;
DEFINE FIELD akustik_einschraenkungen ON TABLE raum_parameter TYPE option<string>;
DEFINE FIELD staub_kritisch ON TABLE raum_parameter TYPE option<bool>;
DEFINE FIELD chemische_daempfe_erlaubt ON TABLE raum_parameter TYPE option<bool>;

-- Sicherheit
DEFINE FIELD zugang_beschraenkt ON TABLE raum_parameter TYPE option<bool>;
DEFINE FIELD personal_qualifikation ON TABLE raum_parameter TYPE option<string>;
DEFINE FIELD psa_anforderungen ON TABLE raum_parameter TYPE option<string>;
DEFINE FIELD verriegelung_erforderlich ON TABLE raum_parameter TYPE option<bool>;
DEFINE FIELD notabschaltung_erforderlich ON TABLE raum_parameter TYPE option<bool>;
DEFINE FIELD service_sperre_erforderlich ON TABLE raum_parameter TYPE option<bool>;

-- Wartung
DEFINE FIELD servicewerkzeug_platz ON TABLE raum_parameter TYPE option<bool>;
DEFINE FIELD ersatzteil_zugang ON TABLE raum_parameter TYPE option<bool>;
DEFINE FIELD dekontamination_erforderlich ON TABLE raum_parameter TYPE option<bool>;
DEFINE FIELD ausfallzeit_toleranz ON TABLE raum_parameter TYPE option<string>;
DEFINE FIELD externe_dienste_erforderlich ON TABLE raum_parameter TYPE option<bool>;
DEFINE FIELD service_anderer_raum ON TABLE raum_parameter TYPE option<bool>;

-- ############################################################
-- TEIL 2: KANTEN-TABELLEN (Relations)
-- Alle Verknüpfungen werden hier definiert
-- ############################################################

-- ============================================================
-- Relation: hat_kategorie (medienanschluss_typ -> medien_kategorie)
-- ============================================================
DEFINE TABLE hat_medien_kategorie TYPE RELATION SCHEMAFULL;
DEFINE FIELD in ON TABLE hat_medien_kategorie TYPE record<medienanschluss_typ>;
DEFINE FIELD out ON TABLE hat_medien_kategorie TYPE record<medien_kategorie>;
DEFINE INDEX idx_hat_medien_kategorie ON TABLE hat_medien_kategorie COLUMNS in UNIQUE;

-- ============================================================
-- Relation: hat_ausstattung_kategorie (ausstattungstyp -> ausstattung_kategorie)
-- ============================================================
DEFINE TABLE hat_ausstattung_kategorie TYPE RELATION SCHEMAFULL;
DEFINE FIELD in ON TABLE hat_ausstattung_kategorie TYPE record<ausstattungstyp>;
DEFINE FIELD out ON TABLE hat_ausstattung_kategorie TYPE record<ausstattung_kategorie>;
DEFINE INDEX idx_hat_ausstattung_kategorie ON TABLE hat_ausstattung_kategorie COLUMNS in UNIQUE;

-- ============================================================
-- Relation: hat_medienanschluss (ausstattungstyp -> medienanschluss_typ)
-- ============================================================
DEFINE TABLE hat_medienanschluss TYPE RELATION SCHEMAFULL;
DEFINE FIELD in ON TABLE hat_medienanschluss TYPE record<ausstattungstyp>;
DEFINE FIELD out ON TABLE hat_medienanschluss TYPE record<medienanschluss_typ>;
DEFINE FIELD anzahl ON TABLE hat_medienanschluss TYPE int DEFAULT 1;
DEFINE INDEX idx_hat_medienanschluss ON TABLE hat_medienanschluss COLUMNS in, out UNIQUE;

-- ============================================================
-- Relation: gehoert_zu_bereich (raumtyp -> bereich)
-- ============================================================
DEFINE TABLE gehoert_zu_bereich TYPE RELATION SCHEMAFULL;
DEFINE FIELD in ON TABLE gehoert_zu_bereich TYPE record<raumtyp>;
DEFINE FIELD out ON TABLE gehoert_zu_bereich TYPE record<bereich>;
DEFINE INDEX idx_gehoert_zu_bereich ON TABLE gehoert_zu_bereich COLUMNS in UNIQUE;

-- ============================================================
-- Relation: hat_ausstattung (raumtyp -> ausstattungstyp)
-- ============================================================
DEFINE TABLE hat_ausstattung TYPE RELATION SCHEMAFULL;
DEFINE FIELD in ON TABLE hat_ausstattung TYPE record<raumtyp>;
DEFINE FIELD out ON TABLE hat_ausstattung TYPE record<ausstattungstyp>;
DEFINE FIELD anzahl ON TABLE hat_ausstattung TYPE int DEFAULT 1;
DEFINE INDEX idx_hat_ausstattung ON TABLE hat_ausstattung COLUMNS in, out UNIQUE;

-- ============================================================
-- Relation: ist_raumtyp (raum -> raumtyp)
-- ============================================================
DEFINE TABLE ist_raumtyp TYPE RELATION SCHEMAFULL;
DEFINE FIELD in ON TABLE ist_raumtyp TYPE record<raum>;
DEFINE FIELD out ON TABLE ist_raumtyp TYPE record<raumtyp>;
DEFINE INDEX idx_ist_raumtyp ON TABLE ist_raumtyp COLUMNS in UNIQUE;

-- ============================================================
-- Relation: gehoert_zu_teilprojekt (raum -> teilprojekt)
-- ============================================================
DEFINE TABLE gehoert_zu_teilprojekt TYPE RELATION SCHEMAFULL;
DEFINE FIELD in ON TABLE gehoert_zu_teilprojekt TYPE record<raum>;
DEFINE FIELD out ON TABLE gehoert_zu_teilprojekt TYPE record<teilprojekt>;
DEFINE INDEX idx_gehoert_zu_teilprojekt ON TABLE gehoert_zu_teilprojekt COLUMNS in UNIQUE;

-- ============================================================
-- Relation: hat_funktionsbereich (raum -> funktionsbereich)
-- ============================================================
DEFINE TABLE hat_funktionsbereich TYPE RELATION SCHEMAFULL;
DEFINE FIELD in ON TABLE hat_funktionsbereich TYPE record<raum>;
DEFINE FIELD out ON TABLE hat_funktionsbereich TYPE record<funktionsbereich>;
DEFINE INDEX idx_hat_funktionsbereich ON TABLE hat_funktionsbereich COLUMNS in UNIQUE;

-- ============================================================
-- Relation: hat_verortung (raum -> verortung)
-- ============================================================
DEFINE TABLE hat_verortung TYPE RELATION SCHEMAFULL;
DEFINE FIELD in ON TABLE hat_verortung TYPE record<raum>;
DEFINE FIELD out ON TABLE hat_verortung TYPE record<verortung>;
DEFINE INDEX idx_hat_verortung ON TABLE hat_verortung COLUMNS in UNIQUE;

-- ============================================================
-- Relation: wird_genutzt_von (raum -> nutzer)
-- ============================================================
DEFINE TABLE wird_genutzt_von TYPE RELATION SCHEMAFULL;
DEFINE FIELD in ON TABLE wird_genutzt_von TYPE record<raum>;
DEFINE FIELD out ON TABLE wird_genutzt_von TYPE record<nutzer>;
DEFINE INDEX idx_wird_genutzt_von ON TABLE wird_genutzt_von COLUMNS in UNIQUE;

-- ============================================================
-- Relation: hat_parent_nutzer (nutzer -> nutzer) für Hierarchie
-- ============================================================
DEFINE TABLE hat_parent_nutzer TYPE RELATION SCHEMAFULL;
DEFINE FIELD in ON TABLE hat_parent_nutzer TYPE record<nutzer>;
DEFINE FIELD out ON TABLE hat_parent_nutzer TYPE record<nutzer>;
DEFINE INDEX idx_hat_parent_nutzer ON TABLE hat_parent_nutzer COLUMNS in UNIQUE;

-- ============================================================
-- Relation: hat_parameter (raum -> raum_parameter)
-- ============================================================
DEFINE TABLE hat_parameter TYPE RELATION SCHEMAFULL;
DEFINE FIELD in ON TABLE hat_parameter TYPE record<raum>;
DEFINE FIELD out ON TABLE hat_parameter TYPE record<raum_parameter>;
DEFINE INDEX idx_hat_parameter ON TABLE hat_parameter COLUMNS in UNIQUE;

-- ############################################################
-- TEIL 3: STAMMDATEN
-- ############################################################

-- Medien-Kategorien
CREATE medien_kategorie:strom SET code = 'STROM', name = 'Elektrische Anschlüsse', sortierung = 1;
CREATE medien_kategorie:gas SET code = 'GAS', name = 'Gasanschlüsse', sortierung = 2;
CREATE medien_kategorie:wasser SET code = 'WASSER', name = 'Wasseranschlüsse', sortierung = 3;
CREATE medien_kategorie:abluft SET code = 'ABLUFT', name = 'Ablufttechnische Anlagen', sortierung = 4;

-- Ausstattungs-Kategorien
CREATE ausstattung_kategorie:arbeitsplaetze SET code = '1', name = 'Arbeitsplätze', sortierung = 1;
CREATE ausstattung_kategorie:sanitaer SET code = '2', name = 'Sanitär & Spüleinrichtungen', sortierung = 2;
CREATE ausstattung_kategorie:sicherheit SET code = '3', name = 'Abzüge & Gefahrstoffschränke', sortierung = 3;
CREATE ausstattung_kategorie:medienzeilen SET code = '4', name = 'Medienzeilen', sortierung = 4;
CREATE ausstattung_kategorie:deckenmedien SET code = '5', name = 'Deckenmedien', sortierung = 5;
CREATE ausstattung_kategorie:geraete SET code = '6', name = 'Geräteanschlüsse', sortierung = 6;
CREATE ausstattung_kategorie:weitere SET code = '7-9', name = 'Weitere Arbeitsplätze', sortierung = 7;

-- Verortungen
CREATE verortung:neubau SET code = 'NEU', name = 'Neubau';
CREATE verortung:bestand SET code = 'BES', name = 'Bestand';
CREATE verortung:bestandsbau SET code = 'BSB', name = 'Bestandsbau';
CREATE verortung:bestand_neubau SET code = 'B_N', name = 'Bestand / Neubau';
CREATE verortung:vorzugsweise_bestand SET code = 'VZB', name = 'Vorzugsweise Bestand';

-- Bereiche
CREATE bereich:biologie SET code = 'BIO', name = 'Fakultät für Biologie', beschreibung = 'Biologische Forschung und Lehre';
CREATE bereich:chemie SET code = 'CHE', name = 'Fakultät für Chemie', beschreibung = 'Chemische Forschung und Lehre';
CREATE bereich:physik SET code = 'PHY', name = 'Fakultät für Physik', beschreibung = 'Physikalische Forschung und Lehre';
CREATE bereich:psychologie SET code = 'PSY', name = 'Fakultät für Psychologie und Sportwissenschaft';
CREATE bereich:teutolabs SET code = 'TEU', name = 'Teutolabs', beschreibung = 'Schülerlabore';

-- Medienanschluss-Typen mit Kategorie-Relation
CREATE medienanschluss_typ:v230_16a SET code = '230V_16A', name = '230 V, 16 A', technische_daten = { spannung: 230, stromstaerke: 16 };
RELATE medienanschluss_typ:v230_16a->hat_medien_kategorie->medien_kategorie:strom;

CREATE medienanschluss_typ:v230_32a SET code = '230V_32A', name = '230 V, 32 A', technische_daten = { spannung: 230, stromstaerke: 32 };
RELATE medienanschluss_typ:v230_32a->hat_medien_kategorie->medien_kategorie:strom;

CREATE medienanschluss_typ:nea_230v_16a SET code = 'NEA_230V_16A', name = 'NEA 230 V, 16 A (Notstrom)', technische_daten = { spannung: 230, stromstaerke: 16, notstrom: true };
RELATE medienanschluss_typ:nea_230v_16a->hat_medien_kategorie->medien_kategorie:strom;

CREATE medienanschluss_typ:v400_16a SET code = '400V_16A', name = '400 V, 16 A (Drehstrom)', technische_daten = { spannung: 400, stromstaerke: 16 };
RELATE medienanschluss_typ:v400_16a->hat_medien_kategorie->medien_kategorie:strom;

CREATE medienanschluss_typ:v400_32a SET code = '400V_32A', name = '400 V, 32 A (Drehstrom)', technische_daten = { spannung: 400, stromstaerke: 32 };
RELATE medienanschluss_typ:v400_32a->hat_medien_kategorie->medien_kategorie:strom;

CREATE medienanschluss_typ:v400_63a SET code = '400V_63A', name = '400 V, 63 A (Drehstrom)', technische_daten = { spannung: 400, stromstaerke: 63 };
RELATE medienanschluss_typ:v400_63a->hat_medien_kategorie->medien_kategorie:strom;

CREATE medienanschluss_typ:nea_400v_16a SET code = 'NEA_400V_16A', name = 'NEA 400 V, 16 A (Notstrom)', technische_daten = { spannung: 400, stromstaerke: 16, notstrom: true };
RELATE medienanschluss_typ:nea_400v_16a->hat_medien_kategorie->medien_kategorie:strom;

CREATE medienanschluss_typ:edv_rj45 SET code = 'EDV_RJ45', name = 'EDV RJ45 Netzwerk';
RELATE medienanschluss_typ:edv_rj45->hat_medien_kategorie->medien_kategorie:strom;

CREATE medienanschluss_typ:pe_erdung SET code = 'PE_ERDUNG', name = 'PE Erdungsschiene';
RELATE medienanschluss_typ:pe_erdung->hat_medien_kategorie->medien_kategorie:strom;

-- Gas
CREATE medienanschluss_typ:druckluft SET code = 'DRUCKLUFT', name = 'Druckluft (CA)';
RELATE medienanschluss_typ:druckluft->hat_medien_kategorie->medien_kategorie:gas;

CREATE medienanschluss_typ:stickstoff SET code = 'N2', name = 'Stickstoff (N2)';
RELATE medienanschluss_typ:stickstoff->hat_medien_kategorie->medien_kategorie:gas;

CREATE medienanschluss_typ:co2 SET code = 'CO2', name = 'Kohlenstoffdioxid (CO2)';
RELATE medienanschluss_typ:co2->hat_medien_kategorie->medien_kategorie:gas;

CREATE medienanschluss_typ:reinstgase SET code = 'REINSTGASE_5_0', name = 'Reinstgase Klassifizierung 5.0';
RELATE medienanschluss_typ:reinstgase->hat_medien_kategorie->medien_kategorie:gas;

CREATE medienanschluss_typ:schutzgas SET code = 'SCHUTZGAS', name = 'Schutzgas Ringleitung';
RELATE medienanschluss_typ:schutzgas->hat_medien_kategorie->medien_kategorie:gas;

CREATE medienanschluss_typ:vakuum SET code = 'VAKUUM', name = 'Vakuum';
RELATE medienanschluss_typ:vakuum->hat_medien_kategorie->medien_kategorie:gas;

-- Wasser
CREATE medienanschluss_typ:labor_kalt SET code = 'LABOR_KALT', name = 'Laborwasser kalt';
RELATE medienanschluss_typ:labor_kalt->hat_medien_kategorie->medien_kategorie:wasser;

CREATE medienanschluss_typ:labor_warm SET code = 'LABOR_WARM', name = 'Laborwasser warm';
RELATE medienanschluss_typ:labor_warm->hat_medien_kategorie->medien_kategorie:wasser;

CREATE medienanschluss_typ:ve_wasser SET code = 'VE_WASSER', name = 'VE-Wasser (vollentsalzt)';
RELATE medienanschluss_typ:ve_wasser->hat_medien_kategorie->medien_kategorie:wasser;

CREATE medienanschluss_typ:reinstwasser SET code = 'REINSTWASSER', name = 'Reinstwasser';
RELATE medienanschluss_typ:reinstwasser->hat_medien_kategorie->medien_kategorie:wasser;

CREATE medienanschluss_typ:abwasser SET code = 'ABWASSER', name = 'Laborabwasser';
RELATE medienanschluss_typ:abwasser->hat_medien_kategorie->medien_kategorie:wasser;

CREATE medienanschluss_typ:kuehlwasser SET code = 'KUEHLWASSER', name = 'Kühlwasser Vor-/Rücklauf';
RELATE medienanschluss_typ:kuehlwasser->hat_medien_kategorie->medien_kategorie:wasser;

CREATE medienanschluss_typ:zisternenwasser SET code = 'ZISTERNENWASSER', name = 'Zisternenwasser';
RELATE medienanschluss_typ:zisternenwasser->hat_medien_kategorie->medien_kategorie:wasser;

CREATE medienanschluss_typ:eismaschine SET code = 'EISMASCHINE', name = 'Eismaschine (inkl. Abwasser)';
RELATE medienanschluss_typ:eismaschine->hat_medien_kategorie->medien_kategorie:wasser;

-- Abluft
CREATE medienanschluss_typ:abzug_480 SET code = 'ABZUG_480', name = 'Abluft Abzug 480 m³/h', technische_daten = { volumenstrom: 480 };
RELATE medienanschluss_typ:abzug_480->hat_medien_kategorie->medien_kategorie:abluft;

CREATE medienanschluss_typ:punktabsaugung_100 SET code = 'PUNKTABSAUGUNG_100', name = 'Punktabsaugung 100 m³/h', technische_daten = { volumenstrom: 100 };
RELATE medienanschluss_typ:punktabsaugung_100->hat_medien_kategorie->medien_kategorie:abluft;

CREATE medienanschluss_typ:schnueffelabsaugung_25 SET code = 'SCHNUEFFEL_25', name = 'Schnüffelabsaugung 25 m³/h', technische_daten = { volumenstrom: 25 };
RELATE medienanschluss_typ:schnueffelabsaugung_25->hat_medien_kategorie->medien_kategorie:abluft;

CREATE medienanschluss_typ:pumpenabluft_5 SET code = 'PUMPENABLUFT_5', name = 'Pumpenabluft 5 m³/h', technische_daten = { volumenstrom: 5 };
RELATE medienanschluss_typ:pumpenabluft_5->hat_medien_kategorie->medien_kategorie:abluft;

CREATE medienanschluss_typ:gefahrstoff_unterschrank SET code = 'GEFAHRSTOFF_US', name = 'Gefahrstoffunterschrank (24h)';
RELATE medienanschluss_typ:gefahrstoff_unterschrank->hat_medien_kategorie->medien_kategorie:abluft;

CREATE medienanschluss_typ:gefahrstoffschrank_60 SET code = 'GEFAHRSTOFF_60', name = 'Gefahrstoffschrank 60 m³/h (24h)', technische_daten = { volumenstrom: 60 };
RELATE medienanschluss_typ:gefahrstoffschrank_60->hat_medien_kategorie->medien_kategorie:abluft;

CREATE medienanschluss_typ:gefahrstoffschrank_60_4 SET code = 'GEFAHRSTOFF_60_4', name = 'Gefahrstoffschrank 60-4 m³/h (24h)';
RELATE medienanschluss_typ:gefahrstoffschrank_60_4->hat_medien_kategorie->medien_kategorie:abluft;

CREATE medienanschluss_typ:gefahrstoffschrank_90 SET code = 'GEFAHRSTOFF_90', name = 'Gefahrstoffschrank 90 m³/h (24h)', technische_daten = { volumenstrom: 90 };
RELATE medienanschluss_typ:gefahrstoffschrank_90->hat_medien_kategorie->medien_kategorie:abluft;

CREATE medienanschluss_typ:gefahrstoffschrank_120 SET code = 'GEFAHRSTOFF_120', name = 'Gefahrstoffschrank 120 m³/h (24h)', technische_daten = { volumenstrom: 120 };
RELATE medienanschluss_typ:gefahrstoffschrank_120->hat_medien_kategorie->medien_kategorie:abluft;

-- ############################################################
-- TEIL 4: BEISPIEL-ABFRAGEN FÜR GRAPH VIEWER
-- ############################################################

-- Alle Verbindungen eines Raums (perfekt für Graph Viewer)
-- SELECT * FROM raum:1;
-- SELECT * FROM ist_raumtyp WHERE in = raum:1;
-- SELECT * FROM gehoert_zu_teilprojekt WHERE in = raum:1;
-- SELECT * FROM hat_funktionsbereich WHERE in = raum:1;
-- SELECT * FROM hat_verortung WHERE in = raum:1;
-- SELECT * FROM wird_genutzt_von WHERE in = raum:1;

-- Raum mit allen Relationen traversieren
-- SELECT
--     *,
--     ->ist_raumtyp->raumtyp AS raumtyp,
--     ->gehoert_zu_teilprojekt->teilprojekt AS teilprojekt,
--     ->hat_funktionsbereich->funktionsbereich AS funktionsbereich,
--     ->hat_verortung->verortung AS verortung,
--     ->wird_genutzt_von->nutzer AS nutzer
-- FROM raum:1;

-- Vollständiger Graph: Raum -> Raumtyp -> Ausstattung -> Medien
-- SELECT
--     *,
--     ->ist_raumtyp->raumtyp.{
--         *,
--         bereich: ->gehoert_zu_bereich->bereich,
--         ausstattungen: ->hat_ausstattung.{
--             anzahl,
--             typ: ->ausstattungstyp.{
--                 *,
--                 kategorie: ->hat_ausstattung_kategorie->ausstattung_kategorie,
--                 medien: ->hat_medienanschluss.{
--                     anzahl,
--                     typ: ->medienanschluss_typ.{
--                         *,
--                         kategorie: ->hat_medien_kategorie->medien_kategorie
--                     }
--                 }
--             }
--         }
--     }
-- FROM raum:1;

-- Alle Kanten eines Raums für Graph-Visualisierung
-- LET $r = raum:1;
-- SELECT * FROM ist_raumtyp, gehoert_zu_teilprojekt, hat_funktionsbereich, hat_verortung, wird_genutzt_von
-- WHERE in = $r;
