-- ============================================================
-- SurrealDB Import für Schema v3 (Reine Graph-Struktur)
-- Generiert aus: 06.xlsx und 07.xlsx
--
-- WICHTIG: Zuerst schema_v3.surql importieren!
-- Dieses Script enthält nur dynamische Daten.
-- ============================================================

USE NS university;
USE DB facilities;


-- ############################################################
-- AUSSTATTUNGSTYPEN (aus 06.xlsx - Ausst-Typ Chemie + Rest)
-- ############################################################


-- Ausstattungstyp: 1.1 - Arbeitsplatz 1
UPSERT ausstattungstyp:typ_1_1 SET
    code = '1.1',
    name = 'Arbeitsplatz 1';
RELATE ausstattungstyp:typ_1_1->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_1->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_1_1->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 2;

-- Ausstattungstyp: 1.1.1 - Arbeitsplatz 1.1
UPSERT ausstattungstyp:typ_1_1_1 SET
    code = '1.1.1',
    name = 'Arbeitsplatz 1.1';
RELATE ausstattungstyp:typ_1_1_1->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_1_1->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_1_1_1->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 2;

-- Ausstattungstyp: 1.1.1.c - Arbeitsplatz 1.1.1.C
UPSERT ausstattungstyp:typ_1_1_1_c SET
    code = '1.1.1.c',
    name = 'Arbeitsplatz 1.1.1.C';
RELATE ausstattungstyp:typ_1_1_1_c->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_1_1_c->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_1_1_1_c->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_1_c->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_1_c->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_1_c->hat_medienanschluss->medienanschluss_typ:labor_warm SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_1_c->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_1_c->hat_medienanschluss->medienanschluss_typ:schnueffelabsaugung_25 SET anzahl = 1;

-- Ausstattungstyp: 1.1.2 - Arbeitsplatz 1.1.2
UPSERT ausstattungstyp:typ_1_1_2 SET
    code = '1.1.2',
    name = 'Arbeitsplatz 1.1.2';
RELATE ausstattungstyp:typ_1_1_2->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_1_2->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_1_1_2->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_2->hat_medienanschluss->medienanschluss_typ:v400_32a SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_2->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;

-- Ausstattungstyp: 1.1.3 - Arbeitsplatz 1.1.3 (Laborspülmaschinenplatz)
UPSERT ausstattungstyp:typ_1_1_3 SET
    code = '1.1.3',
    name = 'Arbeitsplatz 1.1.3 (Laborspülmaschinenplatz)';
RELATE ausstattungstyp:typ_1_1_3->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_1_3->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_1_1_3->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_3->hat_medienanschluss->medienanschluss_typ:ve_wasser SET anzahl = 1;

-- Ausstattungstyp: 1.1.4 - Arbeitsplatz 1.1.4
UPSERT ausstattungstyp:typ_1_1_4 SET
    code = '1.1.4',
    name = 'Arbeitsplatz 1.1.4';
RELATE ausstattungstyp:typ_1_1_4->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_1_4->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_1_1_4->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_4->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;

-- Ausstattungstyp: 1.1.5 - Arbeitsplatz 1.1.5
UPSERT ausstattungstyp:typ_1_1_5 SET
    code = '1.1.5',
    name = 'Arbeitsplatz 1.1.5';
RELATE ausstattungstyp:typ_1_1_5->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_1_5->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_1_1_5->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_5->hat_medienanschluss->medienanschluss_typ:labor_warm SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_5->hat_medienanschluss->medienanschluss_typ:ve_wasser SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_5->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 1;

-- Ausstattungstyp: 1.1.6 - Arbeitsplatz 1.1.6
UPSERT ausstattungstyp:typ_1_1_6 SET
    code = '1.1.6',
    name = 'Arbeitsplatz 1.1.6';
RELATE ausstattungstyp:typ_1_1_6->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_1_6->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_1_1_6->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_6->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_6->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;

-- Ausstattungstyp: 1.1.7 - Arbeitsplatz 1.1.7
UPSERT ausstattungstyp:typ_1_1_7 SET
    code = '1.1.7',
    name = 'Arbeitsplatz 1.1.7';
RELATE ausstattungstyp:typ_1_1_7->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_1_7->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_1_1_7->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_7->hat_medienanschluss->medienanschluss_typ:ve_wasser SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_7->hat_medienanschluss->medienanschluss_typ:schnueffelabsaugung_25 SET anzahl = 1;

-- Ausstattungstyp: 1.1.8 - Arbeitsplatz 1.1.8
UPSERT ausstattungstyp:typ_1_1_8 SET
    code = '1.1.8',
    name = 'Arbeitsplatz 1.1.8';
RELATE ausstattungstyp:typ_1_1_8->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_1_8->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_1_1_8->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_8->hat_medienanschluss->medienanschluss_typ:labor_warm SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_8->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_8->hat_medienanschluss->medienanschluss_typ:punktabsaugung_100 SET anzahl = 1;

-- Ausstattungstyp: 1.1.9 - Arbeitsplatz 1.1.9
UPSERT ausstattungstyp:typ_1_1_9 SET
    code = '1.1.9',
    name = 'Arbeitsplatz 1.1.9';
RELATE ausstattungstyp:typ_1_1_9->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_1_9->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_1_1_9->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_9->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_9->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_9->hat_medienanschluss->medienanschluss_typ:labor_warm SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_9->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 1;

-- Ausstattungstyp: 1.1.10 - Arbeitsplatz 1.1.10 (Abzug) 480 m³/h
UPSERT ausstattungstyp:typ_1_1_10 SET
    code = '1.1.10',
    name = 'Arbeitsplatz 1.1.10 (Abzug) 480 m³/h';
RELATE ausstattungstyp:typ_1_1_10->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_1_10->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_1_1_10->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_10->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_10->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_10->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_10->hat_medienanschluss->medienanschluss_typ:schutzgas SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_10->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 2;
RELATE ausstattungstyp:typ_1_1_10->hat_medienanschluss->medienanschluss_typ:labor_warm SET anzahl = 2;
RELATE ausstattungstyp:typ_1_1_10->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 2;
RELATE ausstattungstyp:typ_1_1_10->hat_medienanschluss->medienanschluss_typ:kuehlwasser SET anzahl = 2;
RELATE ausstattungstyp:typ_1_1_10->hat_medienanschluss->medienanschluss_typ:abzug_480 SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_10->hat_medienanschluss->medienanschluss_typ:schnueffelabsaugung_25 SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_10->hat_medienanschluss->medienanschluss_typ:gefahrstoff_unterschrank SET anzahl = 2;

-- Ausstattungstyp: 1.1.11 - Arbeitsplatz 1.1.11 (Waschbecken)
UPSERT ausstattungstyp:typ_1_1_11 SET
    code = '1.1.11',
    name = 'Arbeitsplatz 1.1.11 (Waschbecken)';
RELATE ausstattungstyp:typ_1_1_11->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_1_11->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_11->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_11->hat_medienanschluss->medienanschluss_typ:labor_warm SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_11->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 1;

-- Ausstattungstyp: 1.1.12 - Arbeitsplatz 1.1.12 (Laborwaschbecken)
UPSERT ausstattungstyp:typ_1_1_12 SET
    code = '1.1.12',
    name = 'Arbeitsplatz 1.1.12 (Laborwaschbecken)';
RELATE ausstattungstyp:typ_1_1_12->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_1_12->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_12->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_12->hat_medienanschluss->medienanschluss_typ:labor_warm SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_12->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 1;

-- Ausstattungstyp: 1.1.13 - Arbeitsplatz 1.1.13 (Gefahrenstoffschrank)
UPSERT ausstattungstyp:typ_1_1_13 SET
    code = '1.1.13',
    name = 'Arbeitsplatz 1.1.13 (Gefahrenstoffschrank)';
RELATE ausstattungstyp:typ_1_1_13->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_1_13->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_13->hat_medienanschluss->medienanschluss_typ:labor_warm SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_13->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 1;
RELATE ausstattungstyp:typ_1_1_13->hat_medienanschluss->medienanschluss_typ:gefahrstoffschrank_60 SET anzahl = 1;

-- Ausstattungstyp: 1.2 - Arbeitsplatz 2
UPSERT ausstattungstyp:typ_1_2 SET
    code = '1.2',
    name = 'Arbeitsplatz 2';
RELATE ausstattungstyp:typ_1_2->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_2->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;

-- Ausstattungstyp: 1.3 - Arbeitsplatz 3
UPSERT ausstattungstyp:typ_1_3 SET
    code = '1.3',
    name = 'Arbeitsplatz 3';
RELATE ausstattungstyp:typ_1_3->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_3->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 2;

-- Ausstattungstyp: 1.3.1 - Arbeitsplatz 1.3.1
UPSERT ausstattungstyp:typ_1_3_1 SET
    code = '1.3.1',
    name = 'Arbeitsplatz 1.3.1';
RELATE ausstattungstyp:typ_1_3_1->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_3_1->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_1_3_1->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_1_3_1->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;
RELATE ausstattungstyp:typ_1_3_1->hat_medienanschluss->medienanschluss_typ:ve_wasser SET anzahl = 1;
RELATE ausstattungstyp:typ_1_3_1->hat_medienanschluss->medienanschluss_typ:schnueffelabsaugung_25 SET anzahl = 1;

-- Ausstattungstyp: 1.3.2 - Arbeitsplatz 1.3.2
UPSERT ausstattungstyp:typ_1_3_2 SET
    code = '1.3.2',
    name = 'Arbeitsplatz 1.3.2';
RELATE ausstattungstyp:typ_1_3_2->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_3_2->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_1_3_2->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_1_3_2->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;

-- Ausstattungstyp: 1.3.3 - Arbeitsplatz 1.3.3 Laborspülmaschinenplatz
UPSERT ausstattungstyp:typ_1_3_3 SET
    code = '1.3.3',
    name = 'Arbeitsplatz 1.3.3 Laborspülmaschinenplatz';
RELATE ausstattungstyp:typ_1_3_3->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_3_3->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_1_3_3->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;

-- Ausstattungstyp: 1.3.4 - Arbeitsplatz 1.3.4
UPSERT ausstattungstyp:typ_1_3_4 SET
    code = '1.3.4',
    name = 'Arbeitsplatz 1.3.4';
RELATE ausstattungstyp:typ_1_3_4->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_3_4->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_1_3_4->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_1_3_4->hat_medienanschluss->medienanschluss_typ:ve_wasser SET anzahl = 1;

-- Ausstattungstyp: 1.3.5 - Arbeitsplatz 1.3.5
UPSERT ausstattungstyp:typ_1_3_5 SET
    code = '1.3.5',
    name = 'Arbeitsplatz 1.3.5';
RELATE ausstattungstyp:typ_1_3_5->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_3_5->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_1_3_5->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_1_3_5->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;
RELATE ausstattungstyp:typ_1_3_5->hat_medienanschluss->medienanschluss_typ:ve_wasser SET anzahl = 1;
RELATE ausstattungstyp:typ_1_3_5->hat_medienanschluss->medienanschluss_typ:schnueffelabsaugung_25 SET anzahl = 1;

-- Ausstattungstyp: 1.3.6 - Arbeitsplatz 1.3.6
UPSERT ausstattungstyp:typ_1_3_6 SET
    code = '1.3.6',
    name = 'Arbeitsplatz 1.3.6';
RELATE ausstattungstyp:typ_1_3_6->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_3_6->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_1_3_6->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_1_3_6->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 2;
RELATE ausstattungstyp:typ_1_3_6->hat_medienanschluss->medienanschluss_typ:labor_warm SET anzahl = 2;
RELATE ausstattungstyp:typ_1_3_6->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 2;

-- Ausstattungstyp: 1.3.7 - Arbeitsplatz 1.3.7
UPSERT ausstattungstyp:typ_1_3_7 SET
    code = '1.3.7',
    name = 'Arbeitsplatz 1.3.7';
RELATE ausstattungstyp:typ_1_3_7->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_3_7->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_1_3_7->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_1_3_7->hat_medienanschluss->medienanschluss_typ:v400_32a SET anzahl = 1;
RELATE ausstattungstyp:typ_1_3_7->hat_medienanschluss->medienanschluss_typ:punktabsaugung_100 SET anzahl = 1;

-- Ausstattungstyp: 1.3.8 - Arbeitsplatz 1.3.8
UPSERT ausstattungstyp:typ_1_3_8 SET
    code = '1.3.8',
    name = 'Arbeitsplatz 1.3.8';
RELATE ausstattungstyp:typ_1_3_8->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_3_8->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_1_3_8->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;
RELATE ausstattungstyp:typ_1_3_8->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;

-- Ausstattungstyp: 1.4 - Arbeitsplatz mit Punktabsaugung
UPSERT ausstattungstyp:typ_1_4 SET
    code = '1.4',
    name = 'Arbeitsplatz mit Punktabsaugung';
RELATE ausstattungstyp:typ_1_4->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_4->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_1_4->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 2;
RELATE ausstattungstyp:typ_1_4->hat_medienanschluss->medienanschluss_typ:punktabsaugung_100 SET anzahl = 1;

-- Ausstattungstyp: 1.4.1 - Arbeitsplatz 1.4.1
UPSERT ausstattungstyp:typ_1_4_1 SET
    code = '1.4.1',
    name = 'Arbeitsplatz 1.4.1';
RELATE ausstattungstyp:typ_1_4_1->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_4_1->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_1_4_1->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 1;
RELATE ausstattungstyp:typ_1_4_1->hat_medienanschluss->medienanschluss_typ:labor_warm SET anzahl = 1;
RELATE ausstattungstyp:typ_1_4_1->hat_medienanschluss->medienanschluss_typ:ve_wasser SET anzahl = 1;
RELATE ausstattungstyp:typ_1_4_1->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 1;

-- Ausstattungstyp: 1.4.2 - Arbeitsplatz 1.4.2  (Laborspülmaschinenplatz)
UPSERT ausstattungstyp:typ_1_4_2 SET
    code = '1.4.2',
    name = 'Arbeitsplatz 1.4.2  (Laborspülmaschinenplatz)';
RELATE ausstattungstyp:typ_1_4_2->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_4_2->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_1_4_2->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_1_4_2->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 2;
RELATE ausstattungstyp:typ_1_4_2->hat_medienanschluss->medienanschluss_typ:labor_warm SET anzahl = 2;
RELATE ausstattungstyp:typ_1_4_2->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 2;

-- Ausstattungstyp: 1.4.3 - Arbeitsplatz 1.4.3
UPSERT ausstattungstyp:typ_1_4_3 SET
    code = '1.4.3',
    name = 'Arbeitsplatz 1.4.3';
RELATE ausstattungstyp:typ_1_4_3->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_4_3->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_1_4_3->hat_medienanschluss->medienanschluss_typ:punktabsaugung_100 SET anzahl = 1;

-- Ausstattungstyp: 1.4.4 - Arbeitsplatz 1.4.4
UPSERT ausstattungstyp:typ_1_4_4 SET
    code = '1.4.4',
    name = 'Arbeitsplatz 1.4.4';
RELATE ausstattungstyp:typ_1_4_4->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_4_4->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;

-- Ausstattungstyp: 1.4.5 - Arbeitsplatz 1.4.5
UPSERT ausstattungstyp:typ_1_4_5 SET
    code = '1.4.5',
    name = 'Arbeitsplatz 1.4.5';
RELATE ausstattungstyp:typ_1_4_5->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_4_5->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_1_4_5->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_1_4_5->hat_medienanschluss->medienanschluss_typ:v400_32a SET anzahl = 1;
RELATE ausstattungstyp:typ_1_4_5->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;

-- Ausstattungstyp: 1.4.6 - Arbeitsplatz 1.4.6
UPSERT ausstattungstyp:typ_1_4_6 SET
    code = '1.4.6',
    name = 'Arbeitsplatz 1.4.6';
RELATE ausstattungstyp:typ_1_4_6->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_4_6->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_1_4_6->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_1_4_6->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 1;
RELATE ausstattungstyp:typ_1_4_6->hat_medienanschluss->medienanschluss_typ:labor_warm SET anzahl = 1;
RELATE ausstattungstyp:typ_1_4_6->hat_medienanschluss->medienanschluss_typ:ve_wasser SET anzahl = 1;
RELATE ausstattungstyp:typ_1_4_6->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 1;

-- Ausstattungstyp: 1.4.7 - Arbeitsplatz 1.4.7
UPSERT ausstattungstyp:typ_1_4_7 SET
    code = '1.4.7',
    name = 'Arbeitsplatz 1.4.7';
RELATE ausstattungstyp:typ_1_4_7->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_4_7->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_1_4_7->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_1_4_7->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;

-- Ausstattungstyp: 1.4.8 - Arbeitsplatz 1.4.8
UPSERT ausstattungstyp:typ_1_4_8 SET
    code = '1.4.8',
    name = 'Arbeitsplatz 1.4.8';
RELATE ausstattungstyp:typ_1_4_8->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_4_8->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_1_4_8->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_1_4_8->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;
RELATE ausstattungstyp:typ_1_4_8->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 1;
RELATE ausstattungstyp:typ_1_4_8->hat_medienanschluss->medienanschluss_typ:labor_warm SET anzahl = 1;
RELATE ausstattungstyp:typ_1_4_8->hat_medienanschluss->medienanschluss_typ:ve_wasser SET anzahl = 1;
RELATE ausstattungstyp:typ_1_4_8->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 1;

-- Ausstattungstyp: 1.4.9 - Arbeitsplatz 1.4.9 (Abzug) 480 m³/h
UPSERT ausstattungstyp:typ_1_4_9 SET
    code = '1.4.9',
    name = 'Arbeitsplatz 1.4.9 (Abzug) 480 m³/h';
RELATE ausstattungstyp:typ_1_4_9->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_4_9->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_1_4_9->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_1_4_9->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_1_4_9->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;
RELATE ausstattungstyp:typ_1_4_9->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_1_4_9->hat_medienanschluss->medienanschluss_typ:schutzgas SET anzahl = 1;
RELATE ausstattungstyp:typ_1_4_9->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 2;
RELATE ausstattungstyp:typ_1_4_9->hat_medienanschluss->medienanschluss_typ:labor_warm SET anzahl = 2;
RELATE ausstattungstyp:typ_1_4_9->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 2;
RELATE ausstattungstyp:typ_1_4_9->hat_medienanschluss->medienanschluss_typ:kuehlwasser SET anzahl = 2;
RELATE ausstattungstyp:typ_1_4_9->hat_medienanschluss->medienanschluss_typ:abzug_480 SET anzahl = 1;
RELATE ausstattungstyp:typ_1_4_9->hat_medienanschluss->medienanschluss_typ:schnueffelabsaugung_25 SET anzahl = 1;
RELATE ausstattungstyp:typ_1_4_9->hat_medienanschluss->medienanschluss_typ:gefahrstoff_unterschrank SET anzahl = 2;

-- Ausstattungstyp: 1.4.1.1 - Arbeitsplatz 1.4.1.1
UPSERT ausstattungstyp:typ_1_4_1_1 SET
    code = '1.4.1.1',
    name = 'Arbeitsplatz 1.4.1.1';
RELATE ausstattungstyp:typ_1_4_1_1->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_4_1_1->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_1_4_1_1->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_1_4_1_1->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_1_4_1_1->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;

-- Ausstattungstyp: 1.4.1.2 - Arbeitsplatz 1.4.1.2
UPSERT ausstattungstyp:typ_1_4_1_2 SET
    code = '1.4.1.2',
    name = 'Arbeitsplatz 1.4.1.2';
RELATE ausstattungstyp:typ_1_4_1_2->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_4_1_2->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_1_4_1_2->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;
RELATE ausstattungstyp:typ_1_4_1_2->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 1;
RELATE ausstattungstyp:typ_1_4_1_2->hat_medienanschluss->medienanschluss_typ:labor_warm SET anzahl = 1;
RELATE ausstattungstyp:typ_1_4_1_2->hat_medienanschluss->medienanschluss_typ:ve_wasser SET anzahl = 1;
RELATE ausstattungstyp:typ_1_4_1_2->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 1;

-- Ausstattungstyp: 1.5 - Mikroskopie-AP Biologie Praktikum
UPSERT ausstattungstyp:typ_1_5 SET
    code = '1.5',
    name = 'Mikroskopie-AP Biologie Praktikum';
RELATE ausstattungstyp:typ_1_5->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_5->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;

-- Ausstattungstyp: 1.6 - Biologie Praktikum Dozentenplatz
UPSERT ausstattungstyp:typ_1_6 SET
    code = '1.6',
    name = 'Biologie Praktikum Dozentenplatz';
RELATE ausstattungstyp:typ_1_6->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_6->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_1_6->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 2;

-- Ausstattungstyp: 1.7 - Display
UPSERT ausstattungstyp:typ_1_7 SET
    code = '1.7',
    name = 'Display';
RELATE ausstattungstyp:typ_1_7->hat_ausstattung_kategorie->ausstattung_kategorie:arbeitsplaetze;
RELATE ausstattungstyp:typ_1_7->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_1_7->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;

-- Ausstattungstyp: 2.1 - Laborspüle 1
UPSERT ausstattungstyp:typ_2_1 SET
    code = '2.1',
    name = 'Laborspüle 1';
RELATE ausstattungstyp:typ_2_1->hat_ausstattung_kategorie->ausstattung_kategorie:sanitaer;
RELATE ausstattungstyp:typ_2_1->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_2_1->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1->hat_medienanschluss->medienanschluss_typ:labor_warm SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1->hat_medienanschluss->medienanschluss_typ:ve_wasser SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 1;

-- Ausstattungstyp: 2.1.1 - Arbeitsplatz 2.1.1
UPSERT ausstattungstyp:typ_2_1_1 SET
    code = '2.1.1',
    name = 'Arbeitsplatz 2.1.1';
RELATE ausstattungstyp:typ_2_1_1->hat_ausstattung_kategorie->ausstattung_kategorie:sanitaer;
RELATE ausstattungstyp:typ_2_1_1->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_2_1_1->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_1->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_1->hat_medienanschluss->medienanschluss_typ:schutzgas SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_1->hat_medienanschluss->medienanschluss_typ:schnueffelabsaugung_25 SET anzahl = 1;

-- Ausstattungstyp: 2.1.2 - Arbeitsplatz 2.1.2
UPSERT ausstattungstyp:typ_2_1_2 SET
    code = '2.1.2',
    name = 'Arbeitsplatz 2.1.2';
RELATE ausstattungstyp:typ_2_1_2->hat_ausstattung_kategorie->ausstattung_kategorie:sanitaer;
RELATE ausstattungstyp:typ_2_1_2->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_2_1_2->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_2_1_2->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 2;
RELATE ausstattungstyp:typ_2_1_2->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_2->hat_medienanschluss->medienanschluss_typ:schnueffelabsaugung_25 SET anzahl = 1;

-- Ausstattungstyp: 2.1.3 - Arbeitsplatz 2.1.3
UPSERT ausstattungstyp:typ_2_1_3 SET
    code = '2.1.3',
    name = 'Arbeitsplatz 2.1.3';
RELATE ausstattungstyp:typ_2_1_3->hat_ausstattung_kategorie->ausstattung_kategorie:sanitaer;
RELATE ausstattungstyp:typ_2_1_3->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_2_1_3->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_3->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_3->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_3->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_3->hat_medienanschluss->medienanschluss_typ:kuehlwasser SET anzahl = 1;

-- Ausstattungstyp: 2.1.4 - Arbeitsplatz 2.1.4
UPSERT ausstattungstyp:typ_2_1_4 SET
    code = '2.1.4',
    name = 'Arbeitsplatz 2.1.4';
RELATE ausstattungstyp:typ_2_1_4->hat_ausstattung_kategorie->ausstattung_kategorie:sanitaer;
RELATE ausstattungstyp:typ_2_1_4->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_2_1_4->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_2_1_4->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_4->hat_medienanschluss->medienanschluss_typ:labor_warm SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_4->hat_medienanschluss->medienanschluss_typ:ve_wasser SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_4->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 1;

-- Ausstattungstyp: 2.1.5 - Arbeitsplatz 2.1.5
UPSERT ausstattungstyp:typ_2_1_5 SET
    code = '2.1.5',
    name = 'Arbeitsplatz 2.1.5';
RELATE ausstattungstyp:typ_2_1_5->hat_ausstattung_kategorie->ausstattung_kategorie:sanitaer;
RELATE ausstattungstyp:typ_2_1_5->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_2_1_5->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_5->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_5->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_5->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_5->hat_medienanschluss->medienanschluss_typ:labor_warm SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_5->hat_medienanschluss->medienanschluss_typ:ve_wasser SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_5->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_5->hat_medienanschluss->medienanschluss_typ:schnueffelabsaugung_25 SET anzahl = 1;

-- Ausstattungstyp: 2.1.6 - Arbeitsplatz 2.1.6
UPSERT ausstattungstyp:typ_2_1_6 SET
    code = '2.1.6',
    name = 'Arbeitsplatz 2.1.6';
RELATE ausstattungstyp:typ_2_1_6->hat_ausstattung_kategorie->ausstattung_kategorie:sanitaer;
RELATE ausstattungstyp:typ_2_1_6->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_2_1_6->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_6->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_6->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_6->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_6->hat_medienanschluss->medienanschluss_typ:punktabsaugung_100 SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_6->hat_medienanschluss->medienanschluss_typ:schnueffelabsaugung_25 SET anzahl = 2;

-- Ausstattungstyp: 2.1.7 - Arbeitsplatz 2.1.7
UPSERT ausstattungstyp:typ_2_1_7 SET
    code = '2.1.7',
    name = 'Arbeitsplatz 2.1.7';
RELATE ausstattungstyp:typ_2_1_7->hat_ausstattung_kategorie->ausstattung_kategorie:sanitaer;
RELATE ausstattungstyp:typ_2_1_7->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 8;
RELATE ausstattungstyp:typ_2_1_7->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_2_1_7->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_2_1_7->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 2;
RELATE ausstattungstyp:typ_2_1_7->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_7->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 2;
RELATE ausstattungstyp:typ_2_1_7->hat_medienanschluss->medienanschluss_typ:labor_warm SET anzahl = 2;
RELATE ausstattungstyp:typ_2_1_7->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 2;
RELATE ausstattungstyp:typ_2_1_7->hat_medienanschluss->medienanschluss_typ:punktabsaugung_100 SET anzahl = 2;
RELATE ausstattungstyp:typ_2_1_7->hat_medienanschluss->medienanschluss_typ:schnueffelabsaugung_25 SET anzahl = 2;

-- Ausstattungstyp: 2.1.BC.1 - Arbeitsplatz 2.1.BC.1
UPSERT ausstattungstyp:typ_2_1_bc_1 SET
    code = '2.1.BC.1',
    name = 'Arbeitsplatz 2.1.BC.1';
RELATE ausstattungstyp:typ_2_1_bc_1->hat_ausstattung_kategorie->ausstattung_kategorie:sanitaer;
RELATE ausstattungstyp:typ_2_1_bc_1->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 5;
RELATE ausstattungstyp:typ_2_1_bc_1->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_bc_1->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_bc_1->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_bc_1->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_bc_1->hat_medienanschluss->medienanschluss_typ:schnueffelabsaugung_25 SET anzahl = 1;

-- Ausstattungstyp: 2.1.BC.2 - Arbeitsplatz 2.1.BC.2
UPSERT ausstattungstyp:typ_2_1_bc_2 SET
    code = '2.1.BC.2',
    name = 'Arbeitsplatz 2.1.BC.2';
RELATE ausstattungstyp:typ_2_1_bc_2->hat_ausstattung_kategorie->ausstattung_kategorie:sanitaer;
RELATE ausstattungstyp:typ_2_1_bc_2->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 5;
RELATE ausstattungstyp:typ_2_1_bc_2->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_bc_2->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_bc_2->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;

-- Ausstattungstyp: 2.1.BC.3 - Arbeitsplatz 2.1.BC.3
UPSERT ausstattungstyp:typ_2_1_bc_3 SET
    code = '2.1.BC.3',
    name = 'Arbeitsplatz 2.1.BC.3';
RELATE ausstattungstyp:typ_2_1_bc_3->hat_ausstattung_kategorie->ausstattung_kategorie:sanitaer;
RELATE ausstattungstyp:typ_2_1_bc_3->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_2_1_bc_3->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_2_1_bc_3->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_bc_3->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_bc_3->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_bc_3->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_bc_3->hat_medienanschluss->medienanschluss_typ:labor_warm SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_bc_3->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 1;

-- Ausstattungstyp: 2.1.BC.4 - Arbeitsplatz 2.1.BC.4 (Laborspülmaschiene)
UPSERT ausstattungstyp:typ_2_1_bc_4 SET
    code = '2.1.BC.4',
    name = 'Arbeitsplatz 2.1.BC.4 (Laborspülmaschiene)';
RELATE ausstattungstyp:typ_2_1_bc_4->hat_ausstattung_kategorie->ausstattung_kategorie:sanitaer;
RELATE ausstattungstyp:typ_2_1_bc_4->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_2_1_bc_4->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_bc_4->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_bc_4->hat_medienanschluss->medienanschluss_typ:ve_wasser SET anzahl = 1;

-- Ausstattungstyp: 2.1.BC.5 - Arbeitsplatz 2.1.BC.5
UPSERT ausstattungstyp:typ_2_1_bc_5 SET
    code = '2.1.BC.5',
    name = 'Arbeitsplatz 2.1.BC.5';
RELATE ausstattungstyp:typ_2_1_bc_5->hat_ausstattung_kategorie->ausstattung_kategorie:sanitaer;
RELATE ausstattungstyp:typ_2_1_bc_5->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_2_1_bc_5->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_2_1_bc_5->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_bc_5->hat_medienanschluss->medienanschluss_typ:ve_wasser SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_bc_5->hat_medienanschluss->medienanschluss_typ:punktabsaugung_100 SET anzahl = 1;

-- Ausstattungstyp: 2.1.BC.6 - Arbeitsplatz 2.1.BC.6
UPSERT ausstattungstyp:typ_2_1_bc_6 SET
    code = '2.1.BC.6',
    name = 'Arbeitsplatz 2.1.BC.6';
RELATE ausstattungstyp:typ_2_1_bc_6->hat_ausstattung_kategorie->ausstattung_kategorie:sanitaer;
RELATE ausstattungstyp:typ_2_1_bc_6->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_2_1_bc_6->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_2_1_bc_6->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_bc_6->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_bc_6->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_bc_6->hat_medienanschluss->medienanschluss_typ:schnueffelabsaugung_25 SET anzahl = 1;

-- Ausstattungstyp: 2.1.BC.7 - Arbeitsplatz 2.1.BC.7
UPSERT ausstattungstyp:typ_2_1_bc_7 SET
    code = '2.1.BC.7',
    name = 'Arbeitsplatz 2.1.BC.7';
RELATE ausstattungstyp:typ_2_1_bc_7->hat_ausstattung_kategorie->ausstattung_kategorie:sanitaer;
RELATE ausstattungstyp:typ_2_1_bc_7->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_2_1_bc_7->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_bc_7->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;
RELATE ausstattungstyp:typ_2_1_bc_7->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;

-- Ausstattungstyp: 2.2 - Laborspüle + Reinstwasser
UPSERT ausstattungstyp:typ_2_2 SET
    code = '2.2',
    name = 'Laborspüle + Reinstwasser';
RELATE ausstattungstyp:typ_2_2->hat_ausstattung_kategorie->ausstattung_kategorie:sanitaer;
RELATE ausstattungstyp:typ_2_2->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_2_2->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 1;
RELATE ausstattungstyp:typ_2_2->hat_medienanschluss->medienanschluss_typ:labor_warm SET anzahl = 1;
RELATE ausstattungstyp:typ_2_2->hat_medienanschluss->medienanschluss_typ:ve_wasser SET anzahl = 1;
RELATE ausstattungstyp:typ_2_2->hat_medienanschluss->medienanschluss_typ:reinstwasser SET anzahl = 1;
RELATE ausstattungstyp:typ_2_2->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 1;

-- Ausstattungstyp: 2.2.1 - Laborspüle 2
UPSERT ausstattungstyp:typ_2_2_1 SET
    code = '2.2.1',
    name = 'Laborspüle 2';
RELATE ausstattungstyp:typ_2_2_1->hat_ausstattung_kategorie->ausstattung_kategorie:sanitaer;
RELATE ausstattungstyp:typ_2_2_1->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_2_2_1->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 1;
RELATE ausstattungstyp:typ_2_2_1->hat_medienanschluss->medienanschluss_typ:labor_warm SET anzahl = 1;
RELATE ausstattungstyp:typ_2_2_1->hat_medienanschluss->medienanschluss_typ:ve_wasser SET anzahl = 1;
RELATE ausstattungstyp:typ_2_2_1->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 1;

-- Ausstattungstyp: 2.3 - Handwaschbecken
UPSERT ausstattungstyp:typ_2_3 SET
    code = '2.3',
    name = 'Handwaschbecken';
RELATE ausstattungstyp:typ_2_3->hat_ausstattung_kategorie->ausstattung_kategorie:sanitaer;
RELATE ausstattungstyp:typ_2_3->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_2_3->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 1;
RELATE ausstattungstyp:typ_2_3->hat_medienanschluss->medienanschluss_typ:labor_warm SET anzahl = 1;
RELATE ausstattungstyp:typ_2_3->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 1;

-- Ausstattungstyp: 2.3.1 - Arbeitsplatz 2.3.1
UPSERT ausstattungstyp:typ_2_3_1 SET
    code = '2.3.1',
    name = 'Arbeitsplatz 2.3.1';
RELATE ausstattungstyp:typ_2_3_1->hat_ausstattung_kategorie->ausstattung_kategorie:sanitaer;
RELATE ausstattungstyp:typ_2_3_1->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_2_3_1->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 1;
RELATE ausstattungstyp:typ_2_3_1->hat_medienanschluss->medienanschluss_typ:labor_warm SET anzahl = 1;
RELATE ausstattungstyp:typ_2_3_1->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 1;

-- Ausstattungstyp: 2.3.2 - Arbeitsplatz 2.3.2
UPSERT ausstattungstyp:typ_2_3_2 SET
    code = '2.3.2',
    name = 'Arbeitsplatz 2.3.2';
RELATE ausstattungstyp:typ_2_3_2->hat_ausstattung_kategorie->ausstattung_kategorie:sanitaer;
RELATE ausstattungstyp:typ_2_3_2->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_2_3_2->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;
RELATE ausstattungstyp:typ_2_3_2->hat_medienanschluss->medienanschluss_typ:kuehlwasser SET anzahl = 1;

-- Ausstattungstyp: 2.4 - Spülmaschine / Waschmaschine
UPSERT ausstattungstyp:typ_2_4 SET
    code = '2.4',
    name = 'Spülmaschine / Waschmaschine';
RELATE ausstattungstyp:typ_2_4->hat_ausstattung_kategorie->ausstattung_kategorie:sanitaer;
RELATE ausstattungstyp:typ_2_4->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_2_4->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 1;
RELATE ausstattungstyp:typ_2_4->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 1;

-- Ausstattungstyp: 2.5 - Mangrovenbecken
UPSERT ausstattungstyp:typ_2_5 SET
    code = '2.5',
    name = 'Mangrovenbecken';
RELATE ausstattungstyp:typ_2_5->hat_ausstattung_kategorie->ausstattung_kategorie:sanitaer;
RELATE ausstattungstyp:typ_2_5->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_2_5->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 1;
RELATE ausstattungstyp:typ_2_5->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 1;
RELATE ausstattungstyp:typ_2_5->hat_medienanschluss->medienanschluss_typ:zisternenwasser SET anzahl = 1;

-- Ausstattungstyp: 2.6 - Klimakammer
UPSERT ausstattungstyp:typ_2_6 SET
    code = '2.6',
    name = 'Klimakammer';
RELATE ausstattungstyp:typ_2_6->hat_ausstattung_kategorie->ausstattung_kategorie:sanitaer;
RELATE ausstattungstyp:typ_2_6->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_2_6->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;

-- Ausstattungstyp: 2.7 - Desinfektionsmittelmischanlage
UPSERT ausstattungstyp:typ_2_7 SET
    code = '2.7',
    name = 'Desinfektionsmittelmischanlage';
RELATE ausstattungstyp:typ_2_7->hat_ausstattung_kategorie->ausstattung_kategorie:sanitaer;
RELATE ausstattungstyp:typ_2_7->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 1;

-- Ausstattungstyp: 3.1 - Abzug (1.20m)
UPSERT ausstattungstyp:typ_3_1 SET
    code = '3.1',
    name = 'Abzug (1.20m)';
RELATE ausstattungstyp:typ_3_1->hat_ausstattung_kategorie->ausstattung_kategorie:sicherheit;
RELATE ausstattungstyp:typ_3_1->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_3_1->hat_medienanschluss->medienanschluss_typ:abzug_480 SET anzahl = 1;
RELATE ausstattungstyp:typ_3_1->hat_medienanschluss->medienanschluss_typ:gefahrstoff_unterschrank SET anzahl = 2;

-- Ausstattungstyp: 3.1.1 - Sonderausstattung Physik Abzug
UPSERT ausstattungstyp:typ_3_1_1 SET
    code = '3.1.1',
    name = 'Sonderausstattung Physik Abzug';
RELATE ausstattungstyp:typ_3_1_1->hat_ausstattung_kategorie->ausstattung_kategorie:sicherheit;
RELATE ausstattungstyp:typ_3_1_1->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_3_1_1->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_3_1_1->hat_medienanschluss->medienanschluss_typ:stickstoff SET anzahl = 1;
RELATE ausstattungstyp:typ_3_1_1->hat_medienanschluss->medienanschluss_typ:reinstgase SET anzahl = 3;
RELATE ausstattungstyp:typ_3_1_1->hat_medienanschluss->medienanschluss_typ:kuehlwasser SET anzahl = 1;
RELATE ausstattungstyp:typ_3_1_1->hat_medienanschluss->medienanschluss_typ:abzug_480 SET anzahl = 1;
RELATE ausstattungstyp:typ_3_1_1->hat_medienanschluss->medienanschluss_typ:gefahrstoff_unterschrank SET anzahl = 1;

-- Ausstattungstyp: 3.2 - Gefahrstoffschrank 1.20 x 0.6
UPSERT ausstattungstyp:typ_3_2 SET
    code = '3.2',
    name = 'Gefahrstoffschrank 1.20 x 0.6';
RELATE ausstattungstyp:typ_3_2->hat_ausstattung_kategorie->ausstattung_kategorie:sicherheit;
RELATE ausstattungstyp:typ_3_2->hat_medienanschluss->medienanschluss_typ:gefahrstoffschrank_120 SET anzahl = 1;

-- Ausstattungstyp: 3.3 - Gefahrstoffschrank 0.9 x 0.6
UPSERT ausstattungstyp:typ_3_3 SET
    code = '3.3',
    name = 'Gefahrstoffschrank 0.9 x 0.6';
RELATE ausstattungstyp:typ_3_3->hat_ausstattung_kategorie->ausstattung_kategorie:sicherheit;
RELATE ausstattungstyp:typ_3_3->hat_medienanschluss->medienanschluss_typ:gefahrstoffschrank_90 SET anzahl = 1;

-- Ausstattungstyp: 3.4 - Gefahrstoffschrank 0.6 x 0.6
UPSERT ausstattungstyp:typ_3_4 SET
    code = '3.4',
    name = 'Gefahrstoffschrank 0.6 x 0.6';
RELATE ausstattungstyp:typ_3_4->hat_ausstattung_kategorie->ausstattung_kategorie:sicherheit;
RELATE ausstattungstyp:typ_3_4->hat_medienanschluss->medienanschluss_typ:gefahrstoffschrank_60_4 SET anzahl = 1;

-- Ausstattungstyp: 3.5 - Gefahrstoffschrank 1.20 x 0.9
UPSERT ausstattungstyp:typ_3_5 SET
    code = '3.5',
    name = 'Gefahrstoffschrank 1.20 x 0.9';
RELATE ausstattungstyp:typ_3_5->hat_ausstattung_kategorie->ausstattung_kategorie:sicherheit;
RELATE ausstattungstyp:typ_3_5->hat_medienanschluss->medienanschluss_typ:gefahrstoffschrank_120 SET anzahl = 1;

-- Ausstattungstyp: 3.6 - Arbeitsplatzabsaugung
UPSERT ausstattungstyp:typ_3_6 SET
    code = '3.6',
    name = 'Arbeitsplatzabsaugung';
RELATE ausstattungstyp:typ_3_6->hat_ausstattung_kategorie->ausstattung_kategorie:sicherheit;
RELATE ausstattungstyp:typ_3_6->hat_medienanschluss->medienanschluss_typ:punktabsaugung_100 SET anzahl = 1;

-- Ausstattungstyp: 3.7 - Druckluft
UPSERT ausstattungstyp:typ_3_7 SET
    code = '3.7',
    name = 'Druckluft';
RELATE ausstattungstyp:typ_3_7->hat_ausstattung_kategorie->ausstattung_kategorie:sicherheit;
RELATE ausstattungstyp:typ_3_7->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;

-- Ausstattungstyp: 4.1 - Medienzeile
UPSERT ausstattungstyp:typ_4_1 SET
    code = '4.1',
    name = 'Medienzeile';
RELATE ausstattungstyp:typ_4_1->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_1->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_4_1->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 2;

-- Ausstattungstyp: 4.1.F.1 - Arbeitsplatz 4.1.F.1
UPSERT ausstattungstyp:typ_4_1_f_1 SET
    code = '4.1.F.1',
    name = 'Arbeitsplatz 4.1.F.1';
RELATE ausstattungstyp:typ_4_1_f_1->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_1_f_1->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_4_1_f_1->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_4_1_f_1->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;

-- Ausstattungstyp: 4.1.F.2 - Arbeitsplatz 4.1.F.2
UPSERT ausstattungstyp:typ_4_1_f_2 SET
    code = '4.1.F.2',
    name = 'Arbeitsplatz 4.1.F.2';
RELATE ausstattungstyp:typ_4_1_f_2->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_1_f_2->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_4_1_f_2->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_4_1_f_2->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;

-- Ausstattungstyp: 4.1.F.3 - Arbeitsplatz 4.1.F.3
UPSERT ausstattungstyp:typ_4_1_f_3 SET
    code = '4.1.F.3',
    name = 'Arbeitsplatz 4.1.F.3';
RELATE ausstattungstyp:typ_4_1_f_3->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_1_f_3->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_4_1_f_3->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;

-- Ausstattungstyp: 4.1.M.1 - Arbeitsplatz 4.1.M.1
UPSERT ausstattungstyp:typ_4_1_m_1 SET
    code = '4.1.M.1',
    name = 'Arbeitsplatz 4.1.M.1';
RELATE ausstattungstyp:typ_4_1_m_1->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_1_m_1->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_4_1_m_1->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_4_1_m_1->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_4_1_m_1->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 2;
RELATE ausstattungstyp:typ_4_1_m_1->hat_medienanschluss->medienanschluss_typ:schnueffelabsaugung_25 SET anzahl = 1;

-- Ausstattungstyp: 4.1.M.2 - Arbeitsplatz 4.1.M.2
UPSERT ausstattungstyp:typ_4_1_m_2 SET
    code = '4.1.M.2',
    name = 'Arbeitsplatz 4.1.M.2';
RELATE ausstattungstyp:typ_4_1_m_2->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_1_m_2->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_4_1_m_2->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_4_1_m_2->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_4_1_m_2->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_4_1_m_2->hat_medienanschluss->medienanschluss_typ:punktabsaugung_100 SET anzahl = 1;

-- Ausstattungstyp: 4.1.M.3 - Arbeitsplatz 4.1.M.3 (Laborspülmaschiene)
UPSERT ausstattungstyp:typ_4_1_m_3 SET
    code = '4.1.M.3',
    name = 'Arbeitsplatz 4.1.M.3 (Laborspülmaschiene)';
RELATE ausstattungstyp:typ_4_1_m_3->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_1_m_3->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_4_1_m_3->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 1;
RELATE ausstattungstyp:typ_4_1_m_3->hat_medienanschluss->medienanschluss_typ:labor_warm SET anzahl = 1;
RELATE ausstattungstyp:typ_4_1_m_3->hat_medienanschluss->medienanschluss_typ:ve_wasser SET anzahl = 1;
RELATE ausstattungstyp:typ_4_1_m_3->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 1;

-- Ausstattungstyp: 4.1.M.4 - Arbeitsplatz 4.1.M.4
UPSERT ausstattungstyp:typ_4_1_m_4 SET
    code = '4.1.M.4',
    name = 'Arbeitsplatz 4.1.M.4';
RELATE ausstattungstyp:typ_4_1_m_4->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_1_m_4->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_4_1_m_4->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_4_1_m_4->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_4_1_m_4->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_4_1_m_4->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 2;
RELATE ausstattungstyp:typ_4_1_m_4->hat_medienanschluss->medienanschluss_typ:labor_warm SET anzahl = 2;
RELATE ausstattungstyp:typ_4_1_m_4->hat_medienanschluss->medienanschluss_typ:ve_wasser SET anzahl = 1;
RELATE ausstattungstyp:typ_4_1_m_4->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 2;

-- Ausstattungstyp: 4.1.M.5 - Arbeitsplatz 4.1.M.5
UPSERT ausstattungstyp:typ_4_1_m_5 SET
    code = '4.1.M.5',
    name = 'Arbeitsplatz 4.1.M.5';
RELATE ausstattungstyp:typ_4_1_m_5->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_1_m_5->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_4_1_m_5->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_4_1_m_5->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_4_1_m_5->hat_medienanschluss->medienanschluss_typ:schutzgas SET anzahl = 1;
RELATE ausstattungstyp:typ_4_1_m_5->hat_medienanschluss->medienanschluss_typ:punktabsaugung_100 SET anzahl = 1;
RELATE ausstattungstyp:typ_4_1_m_5->hat_medienanschluss->medienanschluss_typ:schnueffelabsaugung_25 SET anzahl = 1;

-- Ausstattungstyp: 4.1.M.6 - Arbeitsplatz 4.1.M.6
UPSERT ausstattungstyp:typ_4_1_m_6 SET
    code = '4.1.M.6',
    name = 'Arbeitsplatz 4.1.M.6';
RELATE ausstattungstyp:typ_4_1_m_6->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_1_m_6->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_4_1_m_6->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_4_1_m_6->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_4_1_m_6->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 2;
RELATE ausstattungstyp:typ_4_1_m_6->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_4_1_m_6->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 1;
RELATE ausstattungstyp:typ_4_1_m_6->hat_medienanschluss->medienanschluss_typ:labor_warm SET anzahl = 1;
RELATE ausstattungstyp:typ_4_1_m_6->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 1;
RELATE ausstattungstyp:typ_4_1_m_6->hat_medienanschluss->medienanschluss_typ:schnueffelabsaugung_25 SET anzahl = 2;

-- Ausstattungstyp: 4.2 - Medienzeile
UPSERT ausstattungstyp:typ_4_2 SET
    code = '4.2',
    name = 'Medienzeile';
RELATE ausstattungstyp:typ_4_2->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_2->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;

-- Ausstattungstyp: 4.3 - Medienzeile
UPSERT ausstattungstyp:typ_4_3 SET
    code = '4.3',
    name = 'Medienzeile';
RELATE ausstattungstyp:typ_4_3->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_3->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 2;

-- Ausstattungstyp: 4.4 - Medienzeile
UPSERT ausstattungstyp:typ_4_4 SET
    code = '4.4',
    name = 'Medienzeile';
RELATE ausstattungstyp:typ_4_4->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_4->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_4_4->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 2;
RELATE ausstattungstyp:typ_4_4->hat_medienanschluss->medienanschluss_typ:punktabsaugung_100 SET anzahl = 1;

-- Ausstattungstyp: 4.4.1 - Medienzeile
UPSERT ausstattungstyp:typ_4_4_1 SET
    code = '4.4.1',
    name = 'Medienzeile';
RELATE ausstattungstyp:typ_4_4_1->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_4_1->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_4_4_1->hat_medienanschluss->medienanschluss_typ:v400_32a SET anzahl = 1;
RELATE ausstattungstyp:typ_4_4_1->hat_medienanschluss->medienanschluss_typ:pe_erdung SET anzahl = 1;

-- Ausstattungstyp: 4.5 - Medienzeile
UPSERT ausstattungstyp:typ_4_5 SET
    code = '4.5',
    name = 'Medienzeile';
RELATE ausstattungstyp:typ_4_5->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_5->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_4_5->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_4_5->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_4_5->hat_medienanschluss->medienanschluss_typ:ve_wasser SET anzahl = 1;
RELATE ausstattungstyp:typ_4_5->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 1;
RELATE ausstattungstyp:typ_4_5->hat_medienanschluss->medienanschluss_typ:kuehlwasser SET anzahl = 1;

-- Ausstattungstyp: 4.6 - Medienzeile
UPSERT ausstattungstyp:typ_4_6 SET
    code = '4.6',
    name = 'Medienzeile';
RELATE ausstattungstyp:typ_4_6->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_6->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_4_6->hat_medienanschluss->medienanschluss_typ:co2 SET anzahl = 1;
RELATE ausstattungstyp:typ_4_6->hat_medienanschluss->medienanschluss_typ:ve_wasser SET anzahl = 1;

-- Ausstattungstyp: 4.7 - Medienzeile
UPSERT ausstattungstyp:typ_4_7 SET
    code = '4.7',
    name = 'Medienzeile';
RELATE ausstattungstyp:typ_4_7->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_7->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_4_7->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_4_7->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 1;
RELATE ausstattungstyp:typ_4_7->hat_medienanschluss->medienanschluss_typ:ve_wasser SET anzahl = 1;

-- Ausstattungstyp: 4.8 - Medienzeile
UPSERT ausstattungstyp:typ_4_8 SET
    code = '4.8',
    name = 'Medienzeile';
RELATE ausstattungstyp:typ_4_8->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_8->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_4_8->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 1;
RELATE ausstattungstyp:typ_4_8->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 1;

-- Ausstattungstyp: 4.9 - Medienzeile
UPSERT ausstattungstyp:typ_4_9 SET
    code = '4.9',
    name = 'Medienzeile';
RELATE ausstattungstyp:typ_4_9->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_9->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_4_9->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_4_9->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_4_9->hat_medienanschluss->medienanschluss_typ:ve_wasser SET anzahl = 1;
RELATE ausstattungstyp:typ_4_9->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 1;
RELATE ausstattungstyp:typ_4_9->hat_medienanschluss->medienanschluss_typ:kuehlwasser SET anzahl = 1;

-- Ausstattungstyp: 4.10 - Medienzeile
UPSERT ausstattungstyp:typ_4_10 SET
    code = '4.10',
    name = 'Medienzeile';
RELATE ausstattungstyp:typ_4_10->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_10->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_4_10->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;

-- Ausstattungstyp: 4.12 - 400 V
UPSERT ausstattungstyp:typ_4_12 SET
    code = '4.12',
    name = '400 V';
RELATE ausstattungstyp:typ_4_12->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_12->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_4_12->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;

-- Ausstattungstyp: 4.13 - Druckluft
UPSERT ausstattungstyp:typ_4_13 SET
    code = '4.13',
    name = 'Druckluft';
RELATE ausstattungstyp:typ_4_13->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_13->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;

-- Ausstattungstyp: 4.14 - Medienzeile Elektro
UPSERT ausstattungstyp:typ_4_14 SET
    code = '4.14',
    name = 'Medienzeile Elektro';
RELATE ausstattungstyp:typ_4_14->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_14->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 6;
RELATE ausstattungstyp:typ_4_14->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;

-- Ausstattungstyp: 4.15 - Medienzeile Elektro
UPSERT ausstattungstyp:typ_4_15 SET
    code = '4.15',
    name = 'Medienzeile Elektro';
RELATE ausstattungstyp:typ_4_15->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_15->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 8;
RELATE ausstattungstyp:typ_4_15->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_4_15->hat_medienanschluss->medienanschluss_typ:v400_32a SET anzahl = 1;
RELATE ausstattungstyp:typ_4_15->hat_medienanschluss->medienanschluss_typ:nea_400v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_4_15->hat_medienanschluss->medienanschluss_typ:pe_erdung SET anzahl = 1;

-- Ausstattungstyp: 4.16 - Medienzeile Gase
UPSERT ausstattungstyp:typ_4_16 SET
    code = '4.16',
    name = 'Medienzeile Gase';
RELATE ausstattungstyp:typ_4_16->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_16->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 2;
RELATE ausstattungstyp:typ_4_16->hat_medienanschluss->medienanschluss_typ:stickstoff SET anzahl = 2;
RELATE ausstattungstyp:typ_4_16->hat_medienanschluss->medienanschluss_typ:reinstgase SET anzahl = 3;

-- Ausstattungstyp: 4.17 - Medienzeile Gase
UPSERT ausstattungstyp:typ_4_17 SET
    code = '4.17',
    name = 'Medienzeile Gase';
RELATE ausstattungstyp:typ_4_17->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_17->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 2;
RELATE ausstattungstyp:typ_4_17->hat_medienanschluss->medienanschluss_typ:stickstoff SET anzahl = 2;

-- Ausstattungstyp: 4.18 - Medienzeile (weitere Medien)
UPSERT ausstattungstyp:typ_4_18 SET
    code = '4.18',
    name = 'Medienzeile (weitere Medien)';
RELATE ausstattungstyp:typ_4_18->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_18->hat_medienanschluss->medienanschluss_typ:kuehlwasser SET anzahl = 2;
RELATE ausstattungstyp:typ_4_18->hat_medienanschluss->medienanschluss_typ:pumpenabluft_5 SET anzahl = 2;

-- Ausstattungstyp: 4.19 - Medienzeile
UPSERT ausstattungstyp:typ_4_19 SET
    code = '4.19',
    name = 'Medienzeile';
RELATE ausstattungstyp:typ_4_19->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_19->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 8;

-- Ausstattungstyp: 4.20 - Medienzeile
UPSERT ausstattungstyp:typ_4_20 SET
    code = '4.20',
    name = 'Medienzeile';
RELATE ausstattungstyp:typ_4_20->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_20->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_4_20->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 2;
RELATE ausstattungstyp:typ_4_20->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;

-- Ausstattungstyp: 4.21 - Medienzeile
UPSERT ausstattungstyp:typ_4_21 SET
    code = '4.21',
    name = 'Medienzeile';
RELATE ausstattungstyp:typ_4_21->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_21->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_4_21->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 2;

-- Ausstattungstyp: 4.22 - Medienzeile
UPSERT ausstattungstyp:typ_4_22 SET
    code = '4.22',
    name = 'Medienzeile';
RELATE ausstattungstyp:typ_4_22->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_22->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_4_22->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;

-- Ausstattungstyp: 4.23 - Medienzeile
UPSERT ausstattungstyp:typ_4_23 SET
    code = '4.23',
    name = 'Medienzeile';
RELATE ausstattungstyp:typ_4_23->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_23->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_4_23->hat_medienanschluss->medienanschluss_typ:v400_32a SET anzahl = 1;

-- Ausstattungstyp: 4.24 - Medienzeile
UPSERT ausstattungstyp:typ_4_24 SET
    code = '4.24',
    name = 'Medienzeile';
RELATE ausstattungstyp:typ_4_24->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_24->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_4_24->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_4_24->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;

-- Ausstattungstyp: 4.25 - Medienzeile
UPSERT ausstattungstyp:typ_4_25 SET
    code = '4.25',
    name = 'Medienzeile';
RELATE ausstattungstyp:typ_4_25->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_25->hat_medienanschluss->medienanschluss_typ:v400_32a SET anzahl = 1;

-- Ausstattungstyp: 4.26 - Medienzeile
UPSERT ausstattungstyp:typ_4_26 SET
    code = '4.26',
    name = 'Medienzeile';
RELATE ausstattungstyp:typ_4_26->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_26->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;

-- Ausstattungstyp: 4.27 - Medienzeile
UPSERT ausstattungstyp:typ_4_27 SET
    code = '4.27',
    name = 'Medienzeile';
RELATE ausstattungstyp:typ_4_27->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_27->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_4_27->hat_medienanschluss->medienanschluss_typ:v400_32a SET anzahl = 1;
RELATE ausstattungstyp:typ_4_27->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 2;

-- Ausstattungstyp: 4.28 - Medienzeile
UPSERT ausstattungstyp:typ_4_28 SET
    code = '4.28',
    name = 'Medienzeile';
RELATE ausstattungstyp:typ_4_28->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_28->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_4_28->hat_medienanschluss->medienanschluss_typ:v400_32a SET anzahl = 2;
RELATE ausstattungstyp:typ_4_28->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 4;

-- Ausstattungstyp: 4.29 - Medienzeile
UPSERT ausstattungstyp:typ_4_29 SET
    code = '4.29',
    name = 'Medienzeile';
RELATE ausstattungstyp:typ_4_29->hat_ausstattung_kategorie->ausstattung_kategorie:medienzeilen;
RELATE ausstattungstyp:typ_4_29->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_4_29->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 2;
RELATE ausstattungstyp:typ_4_29->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;

-- Ausstattungstyp: 5.1 - Deckenmedien Arbeitsplatzversorgung
UPSERT ausstattungstyp:typ_5_1 SET
    code = '5.1',
    name = 'Deckenmedien Arbeitsplatzversorgung';
RELATE ausstattungstyp:typ_5_1->hat_ausstattung_kategorie->ausstattung_kategorie:deckenmedien;
RELATE ausstattungstyp:typ_5_1->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_5_1->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 2;
RELATE ausstattungstyp:typ_5_1->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_5_1->hat_medienanschluss->medienanschluss_typ:stickstoff SET anzahl = 1;

-- Ausstattungstyp: 5.2 - Deckenmedien Arbeitsplatzv. mit Absaugung
UPSERT ausstattungstyp:typ_5_2 SET
    code = '5.2',
    name = 'Deckenmedien Arbeitsplatzv. mit Absaugung';
RELATE ausstattungstyp:typ_5_2->hat_ausstattung_kategorie->ausstattung_kategorie:deckenmedien;
RELATE ausstattungstyp:typ_5_2->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_5_2->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 2;
RELATE ausstattungstyp:typ_5_2->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_5_2->hat_medienanschluss->medienanschluss_typ:stickstoff SET anzahl = 1;
RELATE ausstattungstyp:typ_5_2->hat_medienanschluss->medienanschluss_typ:punktabsaugung_100 SET anzahl = 1;

-- Ausstattungstyp: 5.2.1 - Arbeitsplatz 5.2.1
UPSERT ausstattungstyp:typ_5_2_1 SET
    code = '5.2.1',
    name = 'Arbeitsplatz 5.2.1';
RELATE ausstattungstyp:typ_5_2_1->hat_ausstattung_kategorie->ausstattung_kategorie:deckenmedien;
RELATE ausstattungstyp:typ_5_2_1->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 5;
RELATE ausstattungstyp:typ_5_2_1->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_5_2_1->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;

-- Ausstattungstyp: 5.2.2 - Arbeitsplatz 5.2.2
UPSERT ausstattungstyp:typ_5_2_2 SET
    code = '5.2.2',
    name = 'Arbeitsplatz 5.2.2';
RELATE ausstattungstyp:typ_5_2_2->hat_ausstattung_kategorie->ausstattung_kategorie:deckenmedien;
RELATE ausstattungstyp:typ_5_2_2->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 5;

-- Ausstattungstyp: 5.3 - Deckenmedien Gerätestellfläche
UPSERT ausstattungstyp:typ_5_3 SET
    code = '5.3',
    name = 'Deckenmedien Gerätestellfläche';
RELATE ausstattungstyp:typ_5_3->hat_ausstattung_kategorie->ausstattung_kategorie:deckenmedien;
RELATE ausstattungstyp:typ_5_3->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_5_3->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 2;

-- Ausstattungstyp: 5.4 - Deckenmedien Deckenwürfel
UPSERT ausstattungstyp:typ_5_4 SET
    code = '5.4',
    name = 'Deckenmedien Deckenwürfel';
RELATE ausstattungstyp:typ_5_4->hat_ausstattung_kategorie->ausstattung_kategorie:deckenmedien;
RELATE ausstattungstyp:typ_5_4->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 6;

-- Ausstattungstyp: 5.5 - Deckenmedien Deckenwürfel
UPSERT ausstattungstyp:typ_5_5 SET
    code = '5.5',
    name = 'Deckenmedien Deckenwürfel';
RELATE ausstattungstyp:typ_5_5->hat_ausstattung_kategorie->ausstattung_kategorie:deckenmedien;
RELATE ausstattungstyp:typ_5_5->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;

-- Ausstattungstyp: 5.6 - Deckenmedien Flügel
UPSERT ausstattungstyp:typ_5_6 SET
    code = '5.6',
    name = 'Deckenmedien Flügel';
RELATE ausstattungstyp:typ_5_6->hat_ausstattung_kategorie->ausstattung_kategorie:deckenmedien;
RELATE ausstattungstyp:typ_5_6->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 2;

-- Ausstattungstyp: 6.1 - Geräteanschlüsse REM/TEM
UPSERT ausstattungstyp:typ_6_1 SET
    code = '6.1',
    name = 'Geräteanschlüsse REM/TEM';
RELATE ausstattungstyp:typ_6_1->hat_ausstattung_kategorie->ausstattung_kategorie:geraete;
RELATE ausstattungstyp:typ_6_1->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_6_1->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_6_1->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 2;
RELATE ausstattungstyp:typ_6_1->hat_medienanschluss->medienanschluss_typ:vakuum SET anzahl = 1;
RELATE ausstattungstyp:typ_6_1->hat_medienanschluss->medienanschluss_typ:kuehlwasser SET anzahl = 1;

-- Ausstattungstyp: 6.1.1 - Arbeitsplatz 6.1.1 (Wägebereich)
UPSERT ausstattungstyp:typ_6_1_1 SET
    code = '6.1.1',
    name = 'Arbeitsplatz 6.1.1 (Wägebereich)';
RELATE ausstattungstyp:typ_6_1_1->hat_ausstattung_kategorie->ausstattung_kategorie:geraete;
RELATE ausstattungstyp:typ_6_1_1->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_6_1_1->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_6_1_1->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_6_1_1->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_6_1_1->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 1;
RELATE ausstattungstyp:typ_6_1_1->hat_medienanschluss->medienanschluss_typ:labor_warm SET anzahl = 1;
RELATE ausstattungstyp:typ_6_1_1->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 1;
RELATE ausstattungstyp:typ_6_1_1->hat_medienanschluss->medienanschluss_typ:punktabsaugung_100 SET anzahl = 1;

-- Ausstattungstyp: 6.2 - Käfigwaschanlage
UPSERT ausstattungstyp:typ_6_2 SET
    code = '6.2',
    name = 'Käfigwaschanlage';
RELATE ausstattungstyp:typ_6_2->hat_ausstattung_kategorie->ausstattung_kategorie:geraete;
RELATE ausstattungstyp:typ_6_2->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_6_2->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;
RELATE ausstattungstyp:typ_6_2->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_6_2->hat_medienanschluss->medienanschluss_typ:ve_wasser SET anzahl = 1;
RELATE ausstattungstyp:typ_6_2->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 1;
RELATE ausstattungstyp:typ_6_2->hat_medienanschluss->medienanschluss_typ:kuehlwasser SET anzahl = 1;

-- Ausstattungstyp: 6.3 - Sonderausstattung
UPSERT ausstattungstyp:typ_6_3 SET
    code = '6.3',
    name = 'Sonderausstattung';
RELATE ausstattungstyp:typ_6_3->hat_ausstattung_kategorie->ausstattung_kategorie:geraete;
RELATE ausstattungstyp:typ_6_3->hat_medienanschluss->medienanschluss_typ:v400_32a SET anzahl = 1;

-- Ausstattungstyp: 6.4 - Sonderausstattung
UPSERT ausstattungstyp:typ_6_4 SET
    code = '6.4',
    name = 'Sonderausstattung';
RELATE ausstattungstyp:typ_6_4->hat_ausstattung_kategorie->ausstattung_kategorie:geraete;
RELATE ausstattungstyp:typ_6_4->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_6_4->hat_medienanschluss->medienanschluss_typ:pe_erdung SET anzahl = 1;

-- Ausstattungstyp: 6.5 - Geräteanschluss
UPSERT ausstattungstyp:typ_6_5 SET
    code = '6.5',
    name = 'Geräteanschluss';
RELATE ausstattungstyp:typ_6_5->hat_ausstattung_kategorie->ausstattung_kategorie:geraete;
RELATE ausstattungstyp:typ_6_5->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_6_5->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;

-- Ausstattungstyp: 6.6 - Geräteanschluss
UPSERT ausstattungstyp:typ_6_6 SET
    code = '6.6',
    name = 'Geräteanschluss';
RELATE ausstattungstyp:typ_6_6->hat_ausstattung_kategorie->ausstattung_kategorie:geraete;
RELATE ausstattungstyp:typ_6_6->hat_medienanschluss->medienanschluss_typ:v400_32a SET anzahl = 1;
RELATE ausstattungstyp:typ_6_6->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;

-- Ausstattungstyp: 6.7 - Geräteanschluss
UPSERT ausstattungstyp:typ_6_7 SET
    code = '6.7',
    name = 'Geräteanschluss';
RELATE ausstattungstyp:typ_6_7->hat_ausstattung_kategorie->ausstattung_kategorie:geraete;
RELATE ausstattungstyp:typ_6_7->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;

-- Ausstattungstyp: 6.8 - Geräteanschluss
UPSERT ausstattungstyp:typ_6_8 SET
    code = '6.8',
    name = 'Geräteanschluss';
RELATE ausstattungstyp:typ_6_8->hat_ausstattung_kategorie->ausstattung_kategorie:geraete;
RELATE ausstattungstyp:typ_6_8->hat_medienanschluss->medienanschluss_typ:v400_63a SET anzahl = 1;
RELATE ausstattungstyp:typ_6_8->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;

-- Ausstattungstyp: 6.9 - Geräteanschluss
UPSERT ausstattungstyp:typ_6_9 SET
    code = '6.9',
    name = 'Geräteanschluss';
RELATE ausstattungstyp:typ_6_9->hat_ausstattung_kategorie->ausstattung_kategorie:geraete;
RELATE ausstattungstyp:typ_6_9->hat_medienanschluss->medienanschluss_typ:v230_32a SET anzahl = 4;
RELATE ausstattungstyp:typ_6_9->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;

-- Ausstattungstyp: 6.10 - Geräteanschluss
UPSERT ausstattungstyp:typ_6_10 SET
    code = '6.10',
    name = 'Geräteanschluss';
RELATE ausstattungstyp:typ_6_10->hat_ausstattung_kategorie->ausstattung_kategorie:geraete;
RELATE ausstattungstyp:typ_6_10->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_6_10->hat_medienanschluss->medienanschluss_typ:v400_32a SET anzahl = 1;

-- Ausstattungstyp: 6.11 - Geräteanschluss
UPSERT ausstattungstyp:typ_6_11 SET
    code = '6.11',
    name = 'Geräteanschluss';
RELATE ausstattungstyp:typ_6_11->hat_ausstattung_kategorie->ausstattung_kategorie:geraete;
RELATE ausstattungstyp:typ_6_11->hat_medienanschluss->medienanschluss_typ:v400_32a SET anzahl = 1;

-- Ausstattungstyp: 7.1.1 - Arbeitsplatz 7.1.1
UPSERT ausstattungstyp:typ_7_1_1 SET
    code = '7.1.1',
    name = 'Arbeitsplatz 7.1.1';
RELATE ausstattungstyp:typ_7_1_1->hat_ausstattung_kategorie->ausstattung_kategorie:weitere;
RELATE ausstattungstyp:typ_7_1_1->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 6;
RELATE ausstattungstyp:typ_7_1_1->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_7_1_1->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;

-- Ausstattungstyp: 8.1.1.1 - Arbeitsplatz 8.1.1.1
UPSERT ausstattungstyp:typ_8_1_1_1 SET
    code = '8.1.1.1',
    name = 'Arbeitsplatz 8.1.1.1';
RELATE ausstattungstyp:typ_8_1_1_1->hat_ausstattung_kategorie->ausstattung_kategorie:weitere;
RELATE ausstattungstyp:typ_8_1_1_1->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_8_1_1_1->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_8_1_1_1->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_8_1_1_1->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;
RELATE ausstattungstyp:typ_8_1_1_1->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_8_1_1_1->hat_medienanschluss->medienanschluss_typ:kuehlwasser SET anzahl = 1;
RELATE ausstattungstyp:typ_8_1_1_1->hat_medienanschluss->medienanschluss_typ:schnueffelabsaugung_25 SET anzahl = 1;

-- Ausstattungstyp: 8.1.1.2 - Arbeitsplatz 8.1.1.2
UPSERT ausstattungstyp:typ_8_1_1_2 SET
    code = '8.1.1.2',
    name = 'Arbeitsplatz 8.1.1.2';
RELATE ausstattungstyp:typ_8_1_1_2->hat_ausstattung_kategorie->ausstattung_kategorie:weitere;
RELATE ausstattungstyp:typ_8_1_1_2->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_8_1_1_2->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_8_1_1_2->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_8_1_1_2->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;
RELATE ausstattungstyp:typ_8_1_1_2->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_8_1_1_2->hat_medienanschluss->medienanschluss_typ:kuehlwasser SET anzahl = 1;
RELATE ausstattungstyp:typ_8_1_1_2->hat_medienanschluss->medienanschluss_typ:eismaschine SET anzahl = 1;
RELATE ausstattungstyp:typ_8_1_1_2->hat_medienanschluss->medienanschluss_typ:schnueffelabsaugung_25 SET anzahl = 1;

-- Ausstattungstyp: 8.1.1.3 - Arbeitsplatz 8.1.1.3
UPSERT ausstattungstyp:typ_8_1_1_3 SET
    code = '8.1.1.3',
    name = 'Arbeitsplatz 8.1.1.3';
RELATE ausstattungstyp:typ_8_1_1_3->hat_ausstattung_kategorie->ausstattung_kategorie:weitere;
RELATE ausstattungstyp:typ_8_1_1_3->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_8_1_1_3->hat_medienanschluss->medienanschluss_typ:kuehlwasser SET anzahl = 1;

-- Ausstattungstyp: 8.1.1.4 - Arbeitsplatz 8.1.1.4
UPSERT ausstattungstyp:typ_8_1_1_4 SET
    code = '8.1.1.4',
    name = 'Arbeitsplatz 8.1.1.4';
RELATE ausstattungstyp:typ_8_1_1_4->hat_ausstattung_kategorie->ausstattung_kategorie:weitere;
RELATE ausstattungstyp:typ_8_1_1_4->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_8_1_1_4->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;
RELATE ausstattungstyp:typ_8_1_1_4->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_8_1_1_4->hat_medienanschluss->medienanschluss_typ:ve_wasser SET anzahl = 1;
RELATE ausstattungstyp:typ_8_1_1_4->hat_medienanschluss->medienanschluss_typ:schnueffelabsaugung_25 SET anzahl = 1;

-- Ausstattungstyp: 8.1.1.5 - Arbeitsplatz 8.1.1.5
UPSERT ausstattungstyp:typ_8_1_1_5 SET
    code = '8.1.1.5',
    name = 'Arbeitsplatz 8.1.1.5';
RELATE ausstattungstyp:typ_8_1_1_5->hat_ausstattung_kategorie->ausstattung_kategorie:weitere;
RELATE ausstattungstyp:typ_8_1_1_5->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_8_1_1_5->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;
RELATE ausstattungstyp:typ_8_1_1_5->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_8_1_1_5->hat_medienanschluss->medienanschluss_typ:schnueffelabsaugung_25 SET anzahl = 1;

-- Ausstattungstyp: 8.1.1.6 - Arbeitsplatz 8.1.1.6 (Abzug Praktikum)
UPSERT ausstattungstyp:typ_8_1_1_6 SET
    code = '8.1.1.6',
    name = 'Arbeitsplatz 8.1.1.6 (Abzug Praktikum)';
RELATE ausstattungstyp:typ_8_1_1_6->hat_ausstattung_kategorie->ausstattung_kategorie:weitere;
RELATE ausstattungstyp:typ_8_1_1_6->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 7;
RELATE ausstattungstyp:typ_8_1_1_6->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_8_1_1_6->hat_medienanschluss->medienanschluss_typ:kuehlwasser SET anzahl = 2;
RELATE ausstattungstyp:typ_8_1_1_6->hat_medienanschluss->medienanschluss_typ:schnueffelabsaugung_25 SET anzahl = 1;
RELATE ausstattungstyp:typ_8_1_1_6->hat_medienanschluss->medienanschluss_typ:gefahrstoff_unterschrank SET anzahl = 2;

-- Ausstattungstyp: 8.1.2.3 - Arbeitsplatz 8.1.2.3
UPSERT ausstattungstyp:typ_8_1_2_3 SET
    code = '8.1.2.3',
    name = 'Arbeitsplatz 8.1.2.3';
RELATE ausstattungstyp:typ_8_1_2_3->hat_ausstattung_kategorie->ausstattung_kategorie:weitere;
RELATE ausstattungstyp:typ_8_1_2_3->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_8_1_2_3->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;
RELATE ausstattungstyp:typ_8_1_2_3->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_8_1_2_3->hat_medienanschluss->medienanschluss_typ:ve_wasser SET anzahl = 1;

-- Ausstattungstyp: 8.1.2.4 - Arbeitsplatz 8.1.2.4
UPSERT ausstattungstyp:typ_8_1_2_4 SET
    code = '8.1.2.4',
    name = 'Arbeitsplatz 8.1.2.4';
RELATE ausstattungstyp:typ_8_1_2_4->hat_ausstattung_kategorie->ausstattung_kategorie:weitere;
RELATE ausstattungstyp:typ_8_1_2_4->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_8_1_2_4->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;
RELATE ausstattungstyp:typ_8_1_2_4->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;

-- Ausstattungstyp: 8.2.1 - Arbeitsplatz 8.2.1
UPSERT ausstattungstyp:typ_8_2_1 SET
    code = '8.2.1',
    name = 'Arbeitsplatz 8.2.1';
RELATE ausstattungstyp:typ_8_2_1->hat_ausstattung_kategorie->ausstattung_kategorie:weitere;
RELATE ausstattungstyp:typ_8_2_1->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_8_2_1->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_8_2_1->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_8_2_1->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;
RELATE ausstattungstyp:typ_8_2_1->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_8_2_1->hat_medienanschluss->medienanschluss_typ:ve_wasser SET anzahl = 1;
RELATE ausstattungstyp:typ_8_2_1->hat_medienanschluss->medienanschluss_typ:kuehlwasser SET anzahl = 1;
RELATE ausstattungstyp:typ_8_2_1->hat_medienanschluss->medienanschluss_typ:schnueffelabsaugung_25 SET anzahl = 1;

-- Ausstattungstyp: 8.2.2 - Arbeitsplatz 8.2.2
UPSERT ausstattungstyp:typ_8_2_2 SET
    code = '8.2.2',
    name = 'Arbeitsplatz 8.2.2';
RELATE ausstattungstyp:typ_8_2_2->hat_ausstattung_kategorie->ausstattung_kategorie:weitere;
RELATE ausstattungstyp:typ_8_2_2->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_8_2_2->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;
RELATE ausstattungstyp:typ_8_2_2->hat_medienanschluss->medienanschluss_typ:ve_wasser SET anzahl = 1;

-- Ausstattungstyp: 8.2.3 - Arbeitsplatz 8.2.3 (Abzug Praktikum Syn)
UPSERT ausstattungstyp:typ_8_2_3 SET
    code = '8.2.3',
    name = 'Arbeitsplatz 8.2.3 (Abzug Praktikum Syn)';
RELATE ausstattungstyp:typ_8_2_3->hat_ausstattung_kategorie->ausstattung_kategorie:weitere;
RELATE ausstattungstyp:typ_8_2_3->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 5;
RELATE ausstattungstyp:typ_8_2_3->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_8_2_3->hat_medienanschluss->medienanschluss_typ:schutzgas SET anzahl = 1;
RELATE ausstattungstyp:typ_8_2_3->hat_medienanschluss->medienanschluss_typ:kuehlwasser SET anzahl = 2;
RELATE ausstattungstyp:typ_8_2_3->hat_medienanschluss->medienanschluss_typ:abzug_480 SET anzahl = 1;
RELATE ausstattungstyp:typ_8_2_3->hat_medienanschluss->medienanschluss_typ:schnueffelabsaugung_25 SET anzahl = 1;
RELATE ausstattungstyp:typ_8_2_3->hat_medienanschluss->medienanschluss_typ:gefahrstoff_unterschrank SET anzahl = 2;

-- Ausstattungstyp: 8.4.1 - Arbeitsplatz 8.4.1
UPSERT ausstattungstyp:typ_8_4_1 SET
    code = '8.4.1',
    name = 'Arbeitsplatz 8.4.1';
RELATE ausstattungstyp:typ_8_4_1->hat_ausstattung_kategorie->ausstattung_kategorie:weitere;
RELATE ausstattungstyp:typ_8_4_1->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 4;
RELATE ausstattungstyp:typ_8_4_1->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_8_4_1->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_8_4_1->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 1;
RELATE ausstattungstyp:typ_8_4_1->hat_medienanschluss->medienanschluss_typ:labor_warm SET anzahl = 1;
RELATE ausstattungstyp:typ_8_4_1->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 1;
RELATE ausstattungstyp:typ_8_4_1->hat_medienanschluss->medienanschluss_typ:punktabsaugung_100 SET anzahl = 1;

-- Ausstattungstyp: 8.4.2 - Arbeitsplatz 8.4.2
UPSERT ausstattungstyp:typ_8_4_2 SET
    code = '8.4.2',
    name = 'Arbeitsplatz 8.4.2';
RELATE ausstattungstyp:typ_8_4_2->hat_ausstattung_kategorie->ausstattung_kategorie:weitere;
RELATE ausstattungstyp:typ_8_4_2->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_8_4_2->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_8_4_2->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_8_4_2->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_8_4_2->hat_medienanschluss->medienanschluss_typ:labor_kalt SET anzahl = 1;
RELATE ausstattungstyp:typ_8_4_2->hat_medienanschluss->medienanschluss_typ:labor_warm SET anzahl = 1;
RELATE ausstattungstyp:typ_8_4_2->hat_medienanschluss->medienanschluss_typ:abwasser SET anzahl = 1;

-- Ausstattungstyp: 8.5.1 - Arbeitsplatz 8.5.1
UPSERT ausstattungstyp:typ_8_5_1 SET
    code = '8.5.1',
    name = 'Arbeitsplatz 8.5.1';
RELATE ausstattungstyp:typ_8_5_1->hat_ausstattung_kategorie->ausstattung_kategorie:weitere;
RELATE ausstattungstyp:typ_8_5_1->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_8_5_1->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 2;
RELATE ausstattungstyp:typ_8_5_1->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_8_5_1->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;
RELATE ausstattungstyp:typ_8_5_1->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_8_5_1->hat_medienanschluss->medienanschluss_typ:kuehlwasser SET anzahl = 1;
RELATE ausstattungstyp:typ_8_5_1->hat_medienanschluss->medienanschluss_typ:eismaschine SET anzahl = 1;

-- Ausstattungstyp: 8.5.2 - Arbeitsplatz 8.5.2
UPSERT ausstattungstyp:typ_8_5_2 SET
    code = '8.5.2',
    name = 'Arbeitsplatz 8.5.2';
RELATE ausstattungstyp:typ_8_5_2->hat_ausstattung_kategorie->ausstattung_kategorie:weitere;
RELATE ausstattungstyp:typ_8_5_2->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_8_5_2->hat_medienanschluss->medienanschluss_typ:edv_rj45 SET anzahl = 1;
RELATE ausstattungstyp:typ_8_5_2->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_8_5_2->hat_medienanschluss->medienanschluss_typ:ve_wasser SET anzahl = 1;

-- Ausstattungstyp: L1.1.1 - Arbeitsplatz L1.1.1
UPSERT ausstattungstyp:l1_1_1 SET
    code = 'L1.1.1',
    name = 'Arbeitsplatz L1.1.1';
RELATE ausstattungstyp:l1_1_1->hat_ausstattung_kategorie->ausstattung_kategorie:weitere;
RELATE ausstattungstyp:l1_1_1->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 10;
RELATE ausstattungstyp:l1_1_1->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 2;
RELATE ausstattungstyp:l1_1_1->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:l1_1_1->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:l1_1_1->hat_medienanschluss->medienanschluss_typ:ve_wasser SET anzahl = 1;
RELATE ausstattungstyp:l1_1_1->hat_medienanschluss->medienanschluss_typ:eismaschine SET anzahl = 1;

-- Ausstattungstyp: L1.2.1 - Arbeitsplatz L1.2.1
UPSERT ausstattungstyp:l1_2_1 SET
    code = 'L1.2.1',
    name = 'Arbeitsplatz L1.2.1';
RELATE ausstattungstyp:l1_2_1->hat_ausstattung_kategorie->ausstattung_kategorie:weitere;
RELATE ausstattungstyp:l1_2_1->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 6;
RELATE ausstattungstyp:l1_2_1->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 2;
RELATE ausstattungstyp:l1_2_1->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:l1_2_1->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:l1_2_1->hat_medienanschluss->medienanschluss_typ:eismaschine SET anzahl = 1;

-- Ausstattungstyp: 9.1.1 - Arbeitsplatz 9.1.1 (Medienwürfel)
UPSERT ausstattungstyp:typ_9_1_1 SET
    code = '9.1.1',
    name = 'Arbeitsplatz 9.1.1 (Medienwürfel)';
RELATE ausstattungstyp:typ_9_1_1->hat_ausstattung_kategorie->ausstattung_kategorie:weitere;
RELATE ausstattungstyp:typ_9_1_1->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_9_1_1->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_9_1_1->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;

-- Ausstattungstyp: 9.1.2 - Arbeitsplatz 9.1.2 (Medienwürfel)
UPSERT ausstattungstyp:typ_9_1_2 SET
    code = '9.1.2',
    name = 'Arbeitsplatz 9.1.2 (Medienwürfel)';
RELATE ausstattungstyp:typ_9_1_2->hat_ausstattung_kategorie->ausstattung_kategorie:weitere;
RELATE ausstattungstyp:typ_9_1_2->hat_medienanschluss->medienanschluss_typ:v230_16a SET anzahl = 3;
RELATE ausstattungstyp:typ_9_1_2->hat_medienanschluss->medienanschluss_typ:nea_230v_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_9_1_2->hat_medienanschluss->medienanschluss_typ:v400_16a SET anzahl = 1;
RELATE ausstattungstyp:typ_9_1_2->hat_medienanschluss->medienanschluss_typ:druckluft SET anzahl = 1;
RELATE ausstattungstyp:typ_9_1_2->hat_medienanschluss->medienanschluss_typ:schnueffelabsaugung_25 SET anzahl = 1;

-- ############################################################
-- RAUMTYPEN (aus 06.xlsx - Ausst.merkm._Übersicht_Versand)
-- ############################################################


-- Raumtyp: F.1.1 - Nasslabor 1 klein
UPSERT raumtyp:f_1_1 SET
    code = 'F.1.1',
    bezeichnung = 'Nasslabor 1 klein';
RELATE raumtyp:f_1_1->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:f_1_1->hat_ausstattung->ausstattungstyp:typ_1_1 SET anzahl = 2;
RELATE raumtyp:f_1_1->hat_ausstattung->ausstattungstyp:typ_1_3 SET anzahl = 1;
RELATE raumtyp:f_1_1->hat_ausstattung->ausstattungstyp:typ_2_2 SET anzahl = 1;
RELATE raumtyp:f_1_1->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:f_1_1->hat_ausstattung->ausstattungstyp:typ_3_2 SET anzahl = 1;
RELATE raumtyp:f_1_1->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 2;
RELATE raumtyp:f_1_1->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 1;

-- Raumtyp: F.2.1 - Nasslabor 2 klein
UPSERT raumtyp:f_2_1 SET
    code = 'F.2.1',
    bezeichnung = 'Nasslabor 2 klein';
RELATE raumtyp:f_2_1->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:f_2_1->hat_ausstattung->ausstattungstyp:typ_1_1 SET anzahl = 2;
RELATE raumtyp:f_2_1->hat_ausstattung->ausstattungstyp:typ_1_3 SET anzahl = 1;
RELATE raumtyp:f_2_1->hat_ausstattung->ausstattungstyp:typ_2_2 SET anzahl = 1;
RELATE raumtyp:f_2_1->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:f_2_1->hat_ausstattung->ausstattungstyp:typ_3_1 SET anzahl = 1;
RELATE raumtyp:f_2_1->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;
RELATE raumtyp:f_2_1->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 1;

-- Raumtyp: F.2.2 - Nasslabor 2
UPSERT raumtyp:f_2_2 SET
    code = 'F.2.2',
    bezeichnung = 'Nasslabor 2';
RELATE raumtyp:f_2_2->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:f_2_2->hat_ausstattung->ausstattungstyp:typ_1_1 SET anzahl = 6;
RELATE raumtyp:f_2_2->hat_ausstattung->ausstattungstyp:typ_1_2 SET anzahl = 2;
RELATE raumtyp:f_2_2->hat_ausstattung->ausstattungstyp:typ_1_3 SET anzahl = 1;
RELATE raumtyp:f_2_2->hat_ausstattung->ausstattungstyp:typ_2_2 SET anzahl = 1;
RELATE raumtyp:f_2_2->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:f_2_2->hat_ausstattung->ausstattungstyp:typ_3_1 SET anzahl = 1;
RELATE raumtyp:f_2_2->hat_ausstattung->ausstattungstyp:typ_3_2 SET anzahl = 1;
RELATE raumtyp:f_2_2->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;
RELATE raumtyp:f_2_2->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 2;

-- Raumtyp: F.2.2.1 - Nasslabor 2 groß
UPSERT raumtyp:f_2_2_1 SET
    code = 'F.2.2.1',
    bezeichnung = 'Nasslabor 2 groß';
RELATE raumtyp:f_2_2_1->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:f_2_2_1->hat_ausstattung->ausstattungstyp:typ_1_1 SET anzahl = 6;
RELATE raumtyp:f_2_2_1->hat_ausstattung->ausstattungstyp:typ_1_2 SET anzahl = 2;
RELATE raumtyp:f_2_2_1->hat_ausstattung->ausstattungstyp:typ_1_3 SET anzahl = 1;
RELATE raumtyp:f_2_2_1->hat_ausstattung->ausstattungstyp:typ_2_2 SET anzahl = 1;
RELATE raumtyp:f_2_2_1->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:f_2_2_1->hat_ausstattung->ausstattungstyp:typ_3_1 SET anzahl = 2;
RELATE raumtyp:f_2_2_1->hat_ausstattung->ausstattungstyp:typ_3_2 SET anzahl = 1;
RELATE raumtyp:f_2_2_1->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;
RELATE raumtyp:f_2_2_1->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 1;

-- Raumtyp: F.3.1 - Zellkultur 1
UPSERT raumtyp:f_3_1 SET
    code = 'F.3.1',
    bezeichnung = 'Zellkultur 1';
RELATE raumtyp:f_3_1->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:f_3_1->hat_ausstattung->ausstattungstyp:typ_1_1 SET anzahl = 1;
RELATE raumtyp:f_3_1->hat_ausstattung->ausstattungstyp:typ_1_3 SET anzahl = 1;
RELATE raumtyp:f_3_1->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:f_3_1->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:f_3_1->hat_ausstattung->ausstattungstyp:typ_3_3 SET anzahl = 1;
RELATE raumtyp:f_3_1->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;
RELATE raumtyp:f_3_1->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 4;

-- Raumtyp: F.3.2 - Zellkultur
UPSERT raumtyp:f_3_2 SET
    code = 'F.3.2',
    bezeichnung = 'Zellkultur';
RELATE raumtyp:f_3_2->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:f_3_2->hat_ausstattung->ausstattungstyp:typ_1_1 SET anzahl = 1;
RELATE raumtyp:f_3_2->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:f_3_2->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:f_3_2->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 1;
RELATE raumtyp:f_3_2->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 4;

-- Raumtyp: F.3.2.1 - Zellkultur 1 groß
UPSERT raumtyp:f_3_2_1 SET
    code = 'F.3.2.1',
    bezeichnung = 'Zellkultur 1 groß';
RELATE raumtyp:f_3_2_1->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:f_3_2_1->hat_ausstattung->ausstattungstyp:typ_1_1 SET anzahl = 3;
RELATE raumtyp:f_3_2_1->hat_ausstattung->ausstattungstyp:typ_1_2 SET anzahl = 2;
RELATE raumtyp:f_3_2_1->hat_ausstattung->ausstattungstyp:typ_1_3 SET anzahl = 1;
RELATE raumtyp:f_3_2_1->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:f_3_2_1->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:f_3_2_1->hat_ausstattung->ausstattungstyp:typ_3_3 SET anzahl = 1;
RELATE raumtyp:f_3_2_1->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;
RELATE raumtyp:f_3_2_1->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 1;
RELATE raumtyp:f_3_2_1->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 6;

-- Raumtyp: F.4 - Robotiklabor
UPSERT raumtyp:f_4 SET
    code = 'F.4',
    bezeichnung = 'Robotiklabor';
RELATE raumtyp:f_4->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:f_4->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 3;
RELATE raumtyp:f_4->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 4;
RELATE raumtyp:f_4->hat_ausstattung->ausstattungstyp:typ_5_3 SET anzahl = 1;

-- Raumtyp: F.5 - Physiologielabor
UPSERT raumtyp:f_5 SET
    code = 'F.5',
    bezeichnung = 'Physiologielabor';
RELATE raumtyp:f_5->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:f_5->hat_ausstattung->ausstattungstyp:typ_1_1 SET anzahl = 1;
RELATE raumtyp:f_5->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:f_5->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 2;
RELATE raumtyp:f_5->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 3;
RELATE raumtyp:f_5->hat_ausstattung->ausstattungstyp:typ_5_3 SET anzahl = 1;

-- Raumtyp: F.6 - Psychophysik Dunkelraum
UPSERT raumtyp:f_6 SET
    code = 'F.6',
    bezeichnung = 'Psychophysik Dunkelraum';
RELATE raumtyp:f_6->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:f_6->hat_ausstattung->ausstattungstyp:typ_1_1 SET anzahl = 1;
RELATE raumtyp:f_6->hat_ausstattung->ausstattungstyp:typ_2_2 SET anzahl = 1;
RELATE raumtyp:f_6->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;
RELATE raumtyp:f_6->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 2;
RELATE raumtyp:f_6->hat_ausstattung->ausstattungstyp:typ_5_3 SET anzahl = 1;

-- Raumtyp: F.6.2 - Psychophysik Dunkelraum
UPSERT raumtyp:f_6_2 SET
    code = 'F.6.2',
    bezeichnung = 'Psychophysik Dunkelraum';
RELATE raumtyp:f_6_2->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:f_6_2->hat_ausstattung->ausstattungstyp:typ_1_1 SET anzahl = 1;
RELATE raumtyp:f_6_2->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:f_6_2->hat_ausstattung->ausstattungstyp:typ_2_4 SET anzahl = 1;
RELATE raumtyp:f_6_2->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;
RELATE raumtyp:f_6_2->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 2;
RELATE raumtyp:f_6_2->hat_ausstattung->ausstattungstyp:typ_5_3 SET anzahl = 1;

-- Raumtyp: F.6.3 - Psychophysik AG Engelmann Dunkelraum
UPSERT raumtyp:f_6_3 SET
    code = 'F.6.3',
    bezeichnung = 'Psychophysik AG Engelmann Dunkelraum';
RELATE raumtyp:f_6_3->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:f_6_3->hat_ausstattung->ausstattungstyp:typ_1_1 SET anzahl = 1;
RELATE raumtyp:f_6_3->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:f_6_3->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;
RELATE raumtyp:f_6_3->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 2;
RELATE raumtyp:f_6_3->hat_ausstattung->ausstattungstyp:typ_5_3 SET anzahl = 1;

-- Raumtyp: F.7.1 - Messraum Typ 2 REM/TEM Dunkelraum
UPSERT raumtyp:f_7_1 SET
    code = 'F.7.1',
    bezeichnung = 'Messraum Typ 2 REM/TEM Dunkelraum';
RELATE raumtyp:f_7_1->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:f_7_1->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 4;
RELATE raumtyp:f_7_1->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 4;
RELATE raumtyp:f_7_1->hat_ausstattung->ausstattungstyp:typ_6_1 SET anzahl = 1;

-- Raumtyp: F.7.2 - Messraum Typ 1 Konfokalmikroskopie Fluoreszenzmikroskopie Dunkelraum
UPSERT raumtyp:f_7_2 SET
    code = 'F.7.2',
    bezeichnung = 'Messraum Typ 1 Konfokalmikroskopie Fluoreszenzmikroskopie Dunkelraum';
RELATE raumtyp:f_7_2->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:f_7_2->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:f_7_2->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 4;
RELATE raumtyp:f_7_2->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 5;

-- Raumtyp: F.7.3 - Messraum Typ 1 Mikroskopie Dunkelraum
UPSERT raumtyp:f_7_3 SET
    code = 'F.7.3',
    bezeichnung = 'Messraum Typ 1 Mikroskopie Dunkelraum';
RELATE raumtyp:f_7_3->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:f_7_3->hat_ausstattung->ausstattungstyp:typ_1_1 SET anzahl = 1;
RELATE raumtyp:f_7_3->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:f_7_3->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 3;
RELATE raumtyp:f_7_3->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 3;
RELATE raumtyp:f_7_3->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 1;

-- Raumtyp: F.7.5 - Messraum Typ  Dunkelraum
UPSERT raumtyp:f_7_5 SET
    code = 'F.7.5',
    bezeichnung = 'Messraum Typ  Dunkelraum';
RELATE raumtyp:f_7_5->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:f_7_5->hat_ausstattung->ausstattungstyp:typ_1_1 SET anzahl = 1;
RELATE raumtyp:f_7_5->hat_ausstattung->ausstattungstyp:typ_1_2 SET anzahl = 2;
RELATE raumtyp:f_7_5->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:f_7_5->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:f_7_5->hat_ausstattung->ausstattungstyp:typ_3_1 SET anzahl = 1;
RELATE raumtyp:f_7_5->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;
RELATE raumtyp:f_7_5->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 1;

-- Raumtyp: F.8 - Separater Auswerte- und Steuerarbeitsplatz
UPSERT raumtyp:f_8 SET
    code = 'F.8',
    bezeichnung = 'Separater Auswerte- und Steuerarbeitsplatz';
RELATE raumtyp:f_8->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:f_8->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 3;
RELATE raumtyp:f_8->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 2;

-- Raumtyp: F.8.1 - Separater Auswerte- und Steuerarbeitsplatz
UPSERT raumtyp:f_8_1 SET
    code = 'F.8.1',
    bezeichnung = 'Separater Auswerte- und Steuerarbeitsplatz';
RELATE raumtyp:f_8_1->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:f_8_1->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 5;
RELATE raumtyp:f_8_1->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 5;

-- Raumtyp: F.9 - Isotopenlabor
UPSERT raumtyp:f_9 SET
    code = 'F.9',
    bezeichnung = 'Isotopenlabor';
RELATE raumtyp:f_9->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:f_9->hat_ausstattung->ausstattungstyp:typ_1_1 SET anzahl = 4;
RELATE raumtyp:f_9->hat_ausstattung->ausstattungstyp:typ_1_2 SET anzahl = 2;
RELATE raumtyp:f_9->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:f_9->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:f_9->hat_ausstattung->ausstattungstyp:typ_3_1 SET anzahl = 1;
RELATE raumtyp:f_9->hat_ausstattung->ausstattungstyp:typ_3_3 SET anzahl = 1;
RELATE raumtyp:f_9->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 1;

-- Raumtyp: F.9.2 - Isotopenlabor
UPSERT raumtyp:f_9_2 SET
    code = 'F.9.2',
    bezeichnung = 'Isotopenlabor';
RELATE raumtyp:f_9_2->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:f_9_2->hat_ausstattung->ausstattungstyp:typ_1_1 SET anzahl = 3;
RELATE raumtyp:f_9_2->hat_ausstattung->ausstattungstyp:typ_1_2 SET anzahl = 2;
RELATE raumtyp:f_9_2->hat_ausstattung->ausstattungstyp:typ_1_3 SET anzahl = 1;
RELATE raumtyp:f_9_2->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:f_9_2->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:f_9_2->hat_ausstattung->ausstattungstyp:typ_3_1 SET anzahl = 1;
RELATE raumtyp:f_9_2->hat_ausstattung->ausstattungstyp:typ_3_5 SET anzahl = 1;
RELATE raumtyp:f_9_2->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 1;

-- Raumtyp: FN.1.2 - Spülküche S1/S2
UPSERT raumtyp:fn_1_2 SET
    code = 'FN.1.2',
    bezeichnung = 'Spülküche S1/S2';
RELATE raumtyp:fn_1_2->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:fn_1_2->hat_ausstattung->ausstattungstyp:typ_1_1 SET anzahl = 2;
RELATE raumtyp:fn_1_2->hat_ausstattung->ausstattungstyp:typ_1_2 SET anzahl = 1;
RELATE raumtyp:fn_1_2->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:fn_1_2->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:fn_1_2->hat_ausstattung->ausstattungstyp:typ_2_4 SET anzahl = 1;
RELATE raumtyp:fn_1_2->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;
RELATE raumtyp:fn_1_2->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 1;
RELATE raumtyp:fn_1_2->hat_ausstattung->ausstattungstyp:typ_4_5 SET anzahl = 2;

-- Raumtyp: FN.1.2.1 - Spülraum
UPSERT raumtyp:fn_1_2_1 SET
    code = 'FN.1.2.1',
    bezeichnung = 'Spülraum';
RELATE raumtyp:fn_1_2_1->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:fn_1_2_1->hat_ausstattung->ausstattungstyp:typ_1_1 SET anzahl = 2;
RELATE raumtyp:fn_1_2_1->hat_ausstattung->ausstattungstyp:typ_1_2 SET anzahl = 1;
RELATE raumtyp:fn_1_2_1->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:fn_1_2_1->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:fn_1_2_1->hat_ausstattung->ausstattungstyp:typ_2_4 SET anzahl = 1;
RELATE raumtyp:fn_1_2_1->hat_ausstattung->ausstattungstyp:typ_3_3 SET anzahl = 1;
RELATE raumtyp:fn_1_2_1->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 1;
RELATE raumtyp:fn_1_2_1->hat_ausstattung->ausstattungstyp:typ_4_8 SET anzahl = 2;
RELATE raumtyp:fn_1_2_1->hat_ausstattung->ausstattungstyp:typ_4_9 SET anzahl = 1;

-- Raumtyp: FN.10 - Szintillationsraum
UPSERT raumtyp:fn_10 SET
    code = 'FN.10',
    bezeichnung = 'Szintillationsraum';
RELATE raumtyp:fn_10->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:fn_10->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;
RELATE raumtyp:fn_10->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 3;

-- Raumtyp: FN.11 - Vorbereitungsraum REM/TEM
UPSERT raumtyp:fn_11 SET
    code = 'FN.11',
    bezeichnung = 'Vorbereitungsraum REM/TEM';
RELATE raumtyp:fn_11->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:fn_11->hat_ausstattung->ausstattungstyp:typ_1_1 SET anzahl = 1;
RELATE raumtyp:fn_11->hat_ausstattung->ausstattungstyp:typ_1_3 SET anzahl = 1;
RELATE raumtyp:fn_11->hat_ausstattung->ausstattungstyp:typ_2_2 SET anzahl = 1;
RELATE raumtyp:fn_11->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:fn_11->hat_ausstattung->ausstattungstyp:typ_3_1 SET anzahl = 2;
RELATE raumtyp:fn_11->hat_ausstattung->ausstattungstyp:typ_3_2 SET anzahl = 1;
RELATE raumtyp:fn_11->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 2;

-- Raumtyp: FN.2.2.1 - Mikroskopieraum klein
UPSERT raumtyp:fn_2_2_1 SET
    code = 'FN.2.2.1',
    bezeichnung = 'Mikroskopieraum klein';
RELATE raumtyp:fn_2_2_1->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:fn_2_2_1->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:fn_2_2_1->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 2;
RELATE raumtyp:fn_2_2_1->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 1;

-- Raumtyp: FN.3 - Vorbereitungsraum / Lager
UPSERT raumtyp:fn_3 SET
    code = 'FN.3',
    bezeichnung = 'Vorbereitungsraum / Lager';
RELATE raumtyp:fn_3->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:fn_3->hat_ausstattung->ausstattungstyp:typ_1_1 SET anzahl = 1;
RELATE raumtyp:fn_3->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:fn_3->hat_ausstattung->ausstattungstyp:typ_3_3 SET anzahl = 1;
RELATE raumtyp:fn_3->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;
RELATE raumtyp:fn_3->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 1;
RELATE raumtyp:fn_3->hat_ausstattung->ausstattungstyp:typ_4_4 SET anzahl = 1;

-- Raumtyp: FN.3.1 - Vorbereitungsraum Großpraktika Dunkelraum
UPSERT raumtyp:fn_3_1 SET
    code = 'FN.3.1',
    bezeichnung = 'Vorbereitungsraum Großpraktika Dunkelraum';
RELATE raumtyp:fn_3_1->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:fn_3_1->hat_ausstattung->ausstattungstyp:typ_1_1 SET anzahl = 1;
RELATE raumtyp:fn_3_1->hat_ausstattung->ausstattungstyp:typ_1_1_1 SET anzahl = 1;
RELATE raumtyp:fn_3_1->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:fn_3_1->hat_ausstattung->ausstattungstyp:typ_3_1 SET anzahl = 1;
RELATE raumtyp:fn_3_1->hat_ausstattung->ausstattungstyp:typ_3_3 SET anzahl = 1;
RELATE raumtyp:fn_3_1->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;
RELATE raumtyp:fn_3_1->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 1;

-- Raumtyp: FN.3.1.1 - Vorbereitungsraum mit ABZ Dunkelraum
UPSERT raumtyp:fn_3_1_1 SET
    code = 'FN.3.1.1',
    bezeichnung = 'Vorbereitungsraum mit ABZ Dunkelraum';
RELATE raumtyp:fn_3_1_1->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:fn_3_1_1->hat_ausstattung->ausstattungstyp:typ_3_1 SET anzahl = 1;
RELATE raumtyp:fn_3_1_1->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;
RELATE raumtyp:fn_3_1_1->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 4;

-- Raumtyp: FN.3.2 - Vorbereitungsraum
UPSERT raumtyp:fn_3_2 SET
    code = 'FN.3.2',
    bezeichnung = 'Vorbereitungsraum';
RELATE raumtyp:fn_3_2->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:fn_3_2->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;
RELATE raumtyp:fn_3_2->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 4;

-- Raumtyp: FN.4.1 - Geräteraum 01
UPSERT raumtyp:fn_4_1 SET
    code = 'FN.4.1',
    bezeichnung = 'Geräteraum 01';
RELATE raumtyp:fn_4_1->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:fn_4_1->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:fn_4_1->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 4;
RELATE raumtyp:fn_4_1->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 5;
RELATE raumtyp:fn_4_1->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 1;

-- Raumtyp: FN.4.2 - Geräteraum 01 klein
UPSERT raumtyp:fn_4_2 SET
    code = 'FN.4.2',
    bezeichnung = 'Geräteraum 01 klein';
RELATE raumtyp:fn_4_2->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:fn_4_2->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 2;
RELATE raumtyp:fn_4_2->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 2;
RELATE raumtyp:fn_4_2->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 2;

-- Raumtyp: FN.4.2.1 - Sterilbankraum
UPSERT raumtyp:fn_4_2_1 SET
    code = 'FN.4.2.1',
    bezeichnung = 'Sterilbankraum';
RELATE raumtyp:fn_4_2_1->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:fn_4_2_1->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;
RELATE raumtyp:fn_4_2_1->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 1;
RELATE raumtyp:fn_4_2_1->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 3;

-- Raumtyp: FN.4.3 - Geräteraum 02
UPSERT raumtyp:fn_4_3 SET
    code = 'FN.4.3',
    bezeichnung = 'Geräteraum 02';
RELATE raumtyp:fn_4_3->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:fn_4_3->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 2;
RELATE raumtyp:fn_4_3->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 3;

-- Raumtyp: FN.4.4 - Geräteraum 02 klein
UPSERT raumtyp:fn_4_4 SET
    code = 'FN.4.4',
    bezeichnung = 'Geräteraum 02 klein';
RELATE raumtyp:fn_4_4->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:fn_4_4->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;
RELATE raumtyp:fn_4_4->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 1;
RELATE raumtyp:fn_4_4->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 1;

-- Raumtyp: FN.4.4.1 - Kühlraum
UPSERT raumtyp:fn_4_4_1 SET
    code = 'FN.4.4.1',
    bezeichnung = 'Kühlraum';
RELATE raumtyp:fn_4_4_1->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:fn_4_4_1->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 2;

-- Raumtyp: FN.5.2 - Chemikalienlager klein AG1
UPSERT raumtyp:fn_5_2 SET
    code = 'FN.5.2',
    bezeichnung = 'Chemikalienlager klein AG1';
RELATE raumtyp:fn_5_2->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:fn_5_2->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:fn_5_2->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:fn_5_2->hat_ausstattung->ausstattungstyp:typ_3_1 SET anzahl = 1;
RELATE raumtyp:fn_5_2->hat_ausstattung->ausstattungstyp:typ_3_2 SET anzahl = 4;
RELATE raumtyp:fn_5_2->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;

-- Raumtyp: FN.7 - Lagerraum
UPSERT raumtyp:fn_7 SET
    code = 'FN.7',
    bezeichnung = 'Lagerraum';
RELATE raumtyp:fn_7->gehoert_zu_bereich->bereich:biologie;

-- Raumtyp: FN.7.2 - Kühlraum
UPSERT raumtyp:fn_7_2 SET
    code = 'FN.7.2',
    bezeichnung = 'Kühlraum';
RELATE raumtyp:fn_7_2->gehoert_zu_bereich->bereich:biologie;

-- Raumtyp: FN.8 - Schleuse Isotopenlabor
UPSERT raumtyp:fn_8 SET
    code = 'FN.8',
    bezeichnung = 'Schleuse Isotopenlabor';
RELATE raumtyp:fn_8->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:fn_8->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:fn_8->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;
RELATE raumtyp:fn_8->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 1;

-- Raumtyp: FN.9 - Lager groß
UPSERT raumtyp:fn_9 SET
    code = 'FN.9',
    bezeichnung = 'Lager groß';
RELATE raumtyp:fn_9->gehoert_zu_bereich->bereich:biologie;

-- Raumtyp: GWH_01 - Gewächshaus Kompartiment Forschung S1
UPSERT raumtyp:gwh_01 SET
    code = 'GWH_01',
    bezeichnung = 'Gewächshaus Kompartiment Forschung S1';
RELATE raumtyp:gwh_01->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:gwh_01->hat_ausstattung->ausstattungstyp:typ_2_5 SET anzahl = 1;
RELATE raumtyp:gwh_01->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 2;
RELATE raumtyp:gwh_01->hat_ausstattung->ausstattungstyp:typ_5_6 SET anzahl = 1;

-- Raumtyp: GWH_01.1 - S1 Kompartiment mit Verdunklungstisch
UPSERT raumtyp:gwh_01_1 SET
    code = 'GWH_01.1',
    bezeichnung = 'S1 Kompartiment mit Verdunklungstisch';
RELATE raumtyp:gwh_01_1->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:gwh_01_1->hat_ausstattung->ausstattungstyp:typ_2_5 SET anzahl = 1;
RELATE raumtyp:gwh_01_1->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 2;
RELATE raumtyp:gwh_01_1->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 3;

-- Raumtyp: GWH_04 - Arbeitsraum Gärtner
UPSERT raumtyp:gwh_04 SET
    code = 'GWH_04',
    bezeichnung = 'Arbeitsraum Gärtner';
RELATE raumtyp:gwh_04->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:gwh_04->hat_ausstattung->ausstattungstyp:typ_5_6 SET anzahl = 3;

-- Raumtyp: GWH_05 - Vorbereitungsraum Gewächshaus S1
UPSERT raumtyp:gwh_05 SET
    code = 'GWH_05',
    bezeichnung = 'Vorbereitungsraum Gewächshaus S1';
RELATE raumtyp:gwh_05->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:gwh_05->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:gwh_05->hat_ausstattung->ausstattungstyp:typ_5_6 SET anzahl = 1;

-- Raumtyp: GWH_06 - Nachbereitungsraum Klimakammer
UPSERT raumtyp:gwh_06 SET
    code = 'GWH_06',
    bezeichnung = 'Nachbereitungsraum Klimakammer';
RELATE raumtyp:gwh_06->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:gwh_06->hat_ausstattung->ausstattungstyp:typ_1_2 SET anzahl = 1;
RELATE raumtyp:gwh_06->hat_ausstattung->ausstattungstyp:typ_1_3 SET anzahl = 2;
RELATE raumtyp:gwh_06->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:gwh_06->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:gwh_06->hat_ausstattung->ausstattungstyp:typ_2_4 SET anzahl = 3;
RELATE raumtyp:gwh_06->hat_ausstattung->ausstattungstyp:typ_4_9 SET anzahl = 1;
RELATE raumtyp:gwh_06->hat_ausstattung->ausstattungstyp:typ_5_6 SET anzahl = 1;

-- Raumtyp: GWH_08 - Raum mit Klimaschrank
UPSERT raumtyp:gwh_08 SET
    code = 'GWH_08',
    bezeichnung = 'Raum mit Klimaschrank';
RELATE raumtyp:gwh_08->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:gwh_08->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:gwh_08->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;
RELATE raumtyp:gwh_08->hat_ausstattung->ausstattungstyp:typ_4_6 SET anzahl = 6;

-- Raumtyp: GWH_09 - Klimakammer 1
UPSERT raumtyp:gwh_09 SET
    code = 'GWH_09',
    bezeichnung = 'Klimakammer 1';
RELATE raumtyp:gwh_09->gehoert_zu_bereich->bereich:biologie;

-- Raumtyp: GWH_12 - Lager Gewächshaus S1 groß
UPSERT raumtyp:gwh_12 SET
    code = 'GWH_12',
    bezeichnung = 'Lager Gewächshaus S1 groß';
RELATE raumtyp:gwh_12->gehoert_zu_bereich->bereich:biologie;

-- Raumtyp: GWH_13 - Lager Gewächshaus S1 klein
UPSERT raumtyp:gwh_13 SET
    code = 'GWH_13',
    bezeichnung = 'Lager Gewächshaus S1 klein';
RELATE raumtyp:gwh_13->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:gwh_13->hat_ausstattung->ausstattungstyp:typ_3_2 SET anzahl = 2;

-- Raumtyp: GWH_17 - Abreifkammer
UPSERT raumtyp:gwh_17 SET
    code = 'GWH_17',
    bezeichnung = 'Abreifkammer';
RELATE raumtyp:gwh_17->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:gwh_17->hat_ausstattung->ausstattungstyp:typ_2_5 SET anzahl = 1;
RELATE raumtyp:gwh_17->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 2;
RELATE raumtyp:gwh_17->hat_ausstattung->ausstattungstyp:typ_5_6 SET anzahl = 1;

-- Raumtyp: GWH_18 - Erdlager mit Erdsterilisation
UPSERT raumtyp:gwh_18 SET
    code = 'GWH_18',
    bezeichnung = 'Erdlager mit Erdsterilisation';
RELATE raumtyp:gwh_18->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:gwh_18->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:gwh_18->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 1;
RELATE raumtyp:gwh_18->hat_ausstattung->ausstattungstyp:typ_4_7 SET anzahl = 1;

-- Raumtyp: kein RT - Duschen/WC | Umkleide | Colearning Space | Co-Learning Space | Besprechungsraum/ Kommunikationsfläche | Schließfächer | Informelle Kommunikation
UPSERT raumtyp:kein_rt SET
    code = 'kein RT',
    bezeichnung = 'Duschen/WC | Umkleide | Colearning Space | Co-Learning Space | Besprechungsraum/ Kommunikationsfläche | Schließfächer | Informelle Kommunikation';
RELATE raumtyp:kein_rt->gehoert_zu_bereich->bereich:biologie;

-- Raumtyp: MH_01 - Tierhaltungsraum
UPSERT raumtyp:mh_01 SET
    code = 'MH_01',
    bezeichnung = 'Tierhaltungsraum';
RELATE raumtyp:mh_01->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:mh_01->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 2;
RELATE raumtyp:mh_01->hat_ausstattung->ausstattungstyp:typ_5_1 SET anzahl = 2;

-- Raumtyp: MH_02 - Labor Embryotransfer & Kyrokoservierung
UPSERT raumtyp:mh_02 SET
    code = 'MH_02',
    bezeichnung = 'Labor Embryotransfer & Kyrokoservierung';
RELATE raumtyp:mh_02->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:mh_02->hat_ausstattung->ausstattungstyp:typ_1_1 SET anzahl = 1;
RELATE raumtyp:mh_02->hat_ausstattung->ausstattungstyp:typ_1_2 SET anzahl = 1;
RELATE raumtyp:mh_02->hat_ausstattung->ausstattungstyp:typ_1_3 SET anzahl = 1;
RELATE raumtyp:mh_02->hat_ausstattung->ausstattungstyp:typ_2_2 SET anzahl = 1;
RELATE raumtyp:mh_02->hat_ausstattung->ausstattungstyp:typ_3_1 SET anzahl = 1;
RELATE raumtyp:mh_02->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;
RELATE raumtyp:mh_02->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 1;
RELATE raumtyp:mh_02->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 2;
RELATE raumtyp:mh_02->hat_ausstattung->ausstattungstyp:typ_4_8 SET anzahl = 1;

-- Raumtyp: MH_03 - Tierannahme-und abgabe
UPSERT raumtyp:mh_03 SET
    code = 'MH_03',
    bezeichnung = 'Tierannahme-und abgabe';
RELATE raumtyp:mh_03->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:mh_03->hat_ausstattung->ausstattungstyp:typ_1_1 SET anzahl = 1;
RELATE raumtyp:mh_03->hat_ausstattung->ausstattungstyp:typ_1_2 SET anzahl = 2;
RELATE raumtyp:mh_03->hat_ausstattung->ausstattungstyp:typ_2_2 SET anzahl = 1;
RELATE raumtyp:mh_03->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;
RELATE raumtyp:mh_03->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 2;
RELATE raumtyp:mh_03->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 2;

-- Raumtyp: MH_08 - Spülküche/Käfigwaschanlage
UPSERT raumtyp:mh_08 SET
    code = 'MH_08',
    bezeichnung = 'Spülküche/Käfigwaschanlage';
RELATE raumtyp:mh_08->gehoert_zu_bereich->bereich:biologie;

-- Raumtyp: MH_10 - Sterilgutlager
UPSERT raumtyp:mh_10 SET
    code = 'MH_10',
    bezeichnung = 'Sterilgutlager';
RELATE raumtyp:mh_10->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:mh_10->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 2;
RELATE raumtyp:mh_10->hat_ausstattung->ausstattungstyp:typ_5_1 SET anzahl = 2;

-- Raumtyp: MH_11 - Futtermittel-Lager
UPSERT raumtyp:mh_11 SET
    code = 'MH_11',
    bezeichnung = 'Futtermittel-Lager';
RELATE raumtyp:mh_11->gehoert_zu_bereich->bereich:biologie;

-- Raumtyp: MH_14 - Materiallager
UPSERT raumtyp:mh_14 SET
    code = 'MH_14',
    bezeichnung = 'Materiallager';
RELATE raumtyp:mh_14->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:mh_14->hat_ausstattung->ausstattungstyp:typ_3_2 SET anzahl = 1;
RELATE raumtyp:mh_14->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;

-- Raumtyp: MH_15 - Quarantäne
UPSERT raumtyp:mh_15 SET
    code = 'MH_15',
    bezeichnung = 'Quarantäne';
RELATE raumtyp:mh_15->gehoert_zu_bereich->bereich:biologie;

-- Raumtyp: PL.1 - Großpraktika
UPSERT raumtyp:pl_1 SET
    code = 'PL.1',
    bezeichnung = 'Großpraktika';
RELATE raumtyp:pl_1->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:pl_1->hat_ausstattung->ausstattungstyp:typ_1_1 SET anzahl = 2;
RELATE raumtyp:pl_1->hat_ausstattung->ausstattungstyp:typ_1_2 SET anzahl = 5;
RELATE raumtyp:pl_1->hat_ausstattung->ausstattungstyp:typ_1_5 SET anzahl = 108;
RELATE raumtyp:pl_1->hat_ausstattung->ausstattungstyp:typ_1_6 SET anzahl = 1;
RELATE raumtyp:pl_1->hat_ausstattung->ausstattungstyp:typ_1_7 SET anzahl = 4;
RELATE raumtyp:pl_1->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 4;
RELATE raumtyp:pl_1->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 4;
RELATE raumtyp:pl_1->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 7;
RELATE raumtyp:pl_1->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 14;

-- Raumtyp: PL.2 - Praktikum
UPSERT raumtyp:pl_2 SET
    code = 'PL.2',
    bezeichnung = 'Praktikum';
RELATE raumtyp:pl_2->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:pl_2->hat_ausstattung->ausstattungstyp:typ_1_1 SET anzahl = 2;
RELATE raumtyp:pl_2->hat_ausstattung->ausstattungstyp:typ_1_2 SET anzahl = 4;
RELATE raumtyp:pl_2->hat_ausstattung->ausstattungstyp:typ_1_5 SET anzahl = 30;
RELATE raumtyp:pl_2->hat_ausstattung->ausstattungstyp:typ_1_6 SET anzahl = 1;
RELATE raumtyp:pl_2->hat_ausstattung->ausstattungstyp:typ_1_7 SET anzahl = 3;
RELATE raumtyp:pl_2->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 5;
RELATE raumtyp:pl_2->hat_ausstattung->ausstattungstyp:typ_3_1 SET anzahl = 4;

-- Raumtyp: PL.3 - Praktikum einfach
UPSERT raumtyp:pl_3 SET
    code = 'PL.3',
    bezeichnung = 'Praktikum einfach';
RELATE raumtyp:pl_3->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:pl_3->hat_ausstattung->ausstattungstyp:typ_1_1 SET anzahl = 2;
RELATE raumtyp:pl_3->hat_ausstattung->ausstattungstyp:typ_1_2 SET anzahl = 4;
RELATE raumtyp:pl_3->hat_ausstattung->ausstattungstyp:typ_1_6 SET anzahl = 1;
RELATE raumtyp:pl_3->hat_ausstattung->ausstattungstyp:typ_1_7 SET anzahl = 3;
RELATE raumtyp:pl_3->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 2;
RELATE raumtyp:pl_3->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 5;
RELATE raumtyp:pl_3->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 4;

-- Raumtyp: PL.3.1 - Praktikum einfach trennbar
UPSERT raumtyp:pl_3_1 SET
    code = 'PL.3.1',
    bezeichnung = 'Praktikum einfach trennbar';
RELATE raumtyp:pl_3_1->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:pl_3_1->hat_ausstattung->ausstattungstyp:typ_1_1 SET anzahl = 2;
RELATE raumtyp:pl_3_1->hat_ausstattung->ausstattungstyp:typ_1_2 SET anzahl = 4;
RELATE raumtyp:pl_3_1->hat_ausstattung->ausstattungstyp:typ_1_6 SET anzahl = 1;
RELATE raumtyp:pl_3_1->hat_ausstattung->ausstattungstyp:typ_1_7 SET anzahl = 2;
RELATE raumtyp:pl_3_1->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 2;
RELATE raumtyp:pl_3_1->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 5;
RELATE raumtyp:pl_3_1->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 4;
RELATE raumtyp:pl_3_1->hat_ausstattung->ausstattungstyp:typ_5_5 SET anzahl = 4;

-- Raumtyp: PL.4 - Labor neu NEURO-MA
UPSERT raumtyp:pl_4 SET
    code = 'PL.4',
    bezeichnung = 'Labor neu NEURO-MA';
RELATE raumtyp:pl_4->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:pl_4->hat_ausstattung->ausstattungstyp:typ_1_1 SET anzahl = 1;
RELATE raumtyp:pl_4->hat_ausstattung->ausstattungstyp:typ_1_2 SET anzahl = 1;
RELATE raumtyp:pl_4->hat_ausstattung->ausstattungstyp:typ_1_6 SET anzahl = 1;
RELATE raumtyp:pl_4->hat_ausstattung->ausstattungstyp:typ_1_7 SET anzahl = 2;
RELATE raumtyp:pl_4->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:pl_4->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 3;
RELATE raumtyp:pl_4->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 1;

-- Raumtyp: PL.5 - Labor neu
UPSERT raumtyp:pl_5 SET
    code = 'PL.5',
    bezeichnung = 'Labor neu';
RELATE raumtyp:pl_5->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:pl_5->hat_ausstattung->ausstattungstyp:typ_1_5 SET anzahl = 18;
RELATE raumtyp:pl_5->hat_ausstattung->ausstattungstyp:typ_1_6 SET anzahl = 1;
RELATE raumtyp:pl_5->hat_ausstattung->ausstattungstyp:typ_1_7 SET anzahl = 1;
RELATE raumtyp:pl_5->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 2;
RELATE raumtyp:pl_5->hat_ausstattung->ausstattungstyp:typ_3_1 SET anzahl = 2;

-- Raumtyp: SPT_01 - Meerwasser
UPSERT raumtyp:spt_01 SET
    code = 'SPT_01',
    bezeichnung = 'Meerwasser';
RELATE raumtyp:spt_01->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:spt_01->hat_ausstattung->ausstattungstyp:typ_1_1 SET anzahl = 1;
RELATE raumtyp:spt_01->hat_ausstattung->ausstattungstyp:typ_1_2 SET anzahl = 1;
RELATE raumtyp:spt_01->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:spt_01->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 14;
RELATE raumtyp:spt_01->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 5;

-- Raumtyp: SPT_02 - Terrarien (Klimaraum)
UPSERT raumtyp:spt_02 SET
    code = 'SPT_02',
    bezeichnung = 'Terrarien (Klimaraum)';
RELATE raumtyp:spt_02->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:spt_02->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 2;
RELATE raumtyp:spt_02->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 5;
RELATE raumtyp:spt_02->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 7;

-- Raumtyp: SPT_03 - Reptilien/ Amphibien
UPSERT raumtyp:spt_03 SET
    code = 'SPT_03',
    bezeichnung = 'Reptilien/ Amphibien';
RELATE raumtyp:spt_03->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:spt_03->hat_ausstattung->ausstattungstyp:typ_1_2 SET anzahl = 2;
RELATE raumtyp:spt_03->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:spt_03->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 4;
RELATE raumtyp:spt_03->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 7;
RELATE raumtyp:spt_03->hat_ausstattung->ausstattungstyp:typ_5_5 SET anzahl = 2;

-- Raumtyp: SPT_04 - Fische
UPSERT raumtyp:spt_04 SET
    code = 'SPT_04',
    bezeichnung = 'Fische';
RELATE raumtyp:spt_04->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:spt_04->hat_ausstattung->ausstattungstyp:typ_1_2 SET anzahl = 1;
RELATE raumtyp:spt_04->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:spt_04->hat_ausstattung->ausstattungstyp:typ_4_19 SET anzahl = 6;
RELATE raumtyp:spt_04->hat_ausstattung->ausstattungstyp:typ_5_5 SET anzahl = 1;

-- Raumtyp: SPT_05 - Insekten
UPSERT raumtyp:spt_05 SET
    code = 'SPT_05',
    bezeichnung = 'Insekten';
RELATE raumtyp:spt_05->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:spt_05->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 2;
RELATE raumtyp:spt_05->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 1;

-- Raumtyp: SPT_06 - Vorbereitungs- und Rückhalteraum
UPSERT raumtyp:spt_06 SET
    code = 'SPT_06',
    bezeichnung = 'Vorbereitungs- und Rückhalteraum';
RELATE raumtyp:spt_06->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:spt_06->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:spt_06->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 4;

-- Raumtyp: VBW_01 - Werkbänke und freistehende Bearbeitungsmaschinen
UPSERT raumtyp:vbw_01 SET
    code = 'VBW_01',
    bezeichnung = 'Werkbänke und freistehende Bearbeitungsmaschinen';
RELATE raumtyp:vbw_01->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:vbw_01->hat_ausstattung->ausstattungstyp:typ_4_29 SET anzahl = 12;
RELATE raumtyp:vbw_01->hat_ausstattung->ausstattungstyp:typ_6_5 SET anzahl = 3;
RELATE raumtyp:vbw_01->hat_ausstattung->ausstattungstyp:typ_6_6 SET anzahl = 8;
RELATE raumtyp:vbw_01->hat_ausstattung->ausstattungstyp:typ_6_7 SET anzahl = 2;

-- Raumtyp: VBW_02 - Laserschneider
UPSERT raumtyp:vbw_02 SET
    code = 'VBW_02',
    bezeichnung = 'Laserschneider';
RELATE raumtyp:vbw_02->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:vbw_02->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 2;
RELATE raumtyp:vbw_02->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 1;
RELATE raumtyp:vbw_02->hat_ausstattung->ausstattungstyp:typ_4_21 SET anzahl = 2;
RELATE raumtyp:vbw_02->hat_ausstattung->ausstattungstyp:typ_4_22 SET anzahl = 1;

-- Raumtyp: VBW_03 - Wasserstrahlschneider (inkl. Pumpenraum)
UPSERT raumtyp:vbw_03 SET
    code = 'VBW_03',
    bezeichnung = 'Wasserstrahlschneider (inkl. Pumpenraum)';
RELATE raumtyp:vbw_03->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:vbw_03->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;
RELATE raumtyp:vbw_03->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 4;
RELATE raumtyp:vbw_03->hat_ausstattung->ausstattungstyp:typ_4_23 SET anzahl = 1;

-- Raumtyp: VBW_04 - Schweißraum
UPSERT raumtyp:vbw_04 SET
    code = 'VBW_04',
    bezeichnung = 'Schweißraum';
RELATE raumtyp:vbw_04->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:vbw_04->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 4;
RELATE raumtyp:vbw_04->hat_ausstattung->ausstattungstyp:typ_4_23 SET anzahl = 2;
RELATE raumtyp:vbw_04->hat_ausstattung->ausstattungstyp:typ_4_24 SET anzahl = 1;
RELATE raumtyp:vbw_04->hat_ausstattung->ausstattungstyp:typ_4_25 SET anzahl = 2;
RELATE raumtyp:vbw_04->hat_ausstattung->ausstattungstyp:typ_5_5 SET anzahl = 1;
RELATE raumtyp:vbw_04->hat_ausstattung->ausstattungstyp:typ_6_9 SET anzahl = 1;

-- Raumtyp: VBW_07 - Rapid-Prototyping
UPSERT raumtyp:vbw_07 SET
    code = 'VBW_07',
    bezeichnung = 'Rapid-Prototyping';
RELATE raumtyp:vbw_07->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:vbw_07->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 1;
RELATE raumtyp:vbw_07->hat_ausstattung->ausstattungstyp:typ_4_13 SET anzahl = 1;
RELATE raumtyp:vbw_07->hat_ausstattung->ausstattungstyp:typ_4_20 SET anzahl = 1;

-- Raumtyp: VBW_08 - CNC-Bearbeitungsraum
UPSERT raumtyp:vbw_08 SET
    code = 'VBW_08',
    bezeichnung = 'CNC-Bearbeitungsraum';
RELATE raumtyp:vbw_08->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:vbw_08->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 1;
RELATE raumtyp:vbw_08->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 6;
RELATE raumtyp:vbw_08->hat_ausstattung->ausstattungstyp:typ_4_20 SET anzahl = 3;
RELATE raumtyp:vbw_08->hat_ausstattung->ausstattungstyp:typ_4_22 SET anzahl = 1;
RELATE raumtyp:vbw_08->hat_ausstattung->ausstattungstyp:typ_4_24 SET anzahl = 2;
RELATE raumtyp:vbw_08->hat_ausstattung->ausstattungstyp:typ_6_5 SET anzahl = 1;
RELATE raumtyp:vbw_08->hat_ausstattung->ausstattungstyp:typ_6_8 SET anzahl = 2;

-- Raumtyp: VBW_10 - Lackierraum
UPSERT raumtyp:vbw_10 SET
    code = 'VBW_10',
    bezeichnung = 'Lackierraum';
RELATE raumtyp:vbw_10->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:vbw_10->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 1;

-- Raumtyp: VBW_11 - Nassraum
UPSERT raumtyp:vbw_11 SET
    code = 'VBW_11',
    bezeichnung = 'Nassraum';
RELATE raumtyp:vbw_11->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:vbw_11->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:vbw_11->hat_ausstattung->ausstattungstyp:typ_2_4 SET anzahl = 2;
RELATE raumtyp:vbw_11->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 2;
RELATE raumtyp:vbw_11->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 1;
RELATE raumtyp:vbw_11->hat_ausstattung->ausstattungstyp:typ_4_22 SET anzahl = 1;

-- Raumtyp: VBW_12 - Lager, Metall, Kunststoffe, sonstiges
UPSERT raumtyp:vbw_12 SET
    code = 'VBW_12',
    bezeichnung = 'Lager, Metall, Kunststoffe, sonstiges';
RELATE raumtyp:vbw_12->gehoert_zu_bereich->bereich:biologie;

-- Raumtyp: VBW_17 - Elektronikwerkstatt
UPSERT raumtyp:vbw_17 SET
    code = 'VBW_17',
    bezeichnung = 'Elektronikwerkstatt';
RELATE raumtyp:vbw_17->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:vbw_17->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 3;
RELATE raumtyp:vbw_17->hat_ausstattung->ausstattungstyp:typ_4_13 SET anzahl = 4;
RELATE raumtyp:vbw_17->hat_ausstattung->ausstattungstyp:typ_4_27 SET anzahl = 2;
RELATE raumtyp:vbw_17->hat_ausstattung->ausstattungstyp:typ_4_28 SET anzahl = 2;

-- Raumtyp: VBW_18 - Lager, Metall, Kunststoffe, sonstiges
UPSERT raumtyp:vbw_18 SET
    code = 'VBW_18',
    bezeichnung = 'Lager, Metall, Kunststoffe, sonstiges';
RELATE raumtyp:vbw_18->gehoert_zu_bereich->bereich:biologie;

-- Raumtyp: VBW_19 - Ätzraum
UPSERT raumtyp:vbw_19 SET
    code = 'VBW_19',
    bezeichnung = 'Ätzraum';
RELATE raumtyp:vbw_19->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:vbw_19->hat_ausstattung->ausstattungstyp:typ_2_2 SET anzahl = 1;
RELATE raumtyp:vbw_19->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 1;
RELATE raumtyp:vbw_19->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 3;
RELATE raumtyp:vbw_19->hat_ausstattung->ausstattungstyp:typ_4_13 SET anzahl = 1;
RELATE raumtyp:vbw_19->hat_ausstattung->ausstattungstyp:typ_4_22 SET anzahl = 1;

-- Raumtyp: VBW_20 - Bestückungsautomat und Löten
UPSERT raumtyp:vbw_20 SET
    code = 'VBW_20',
    bezeichnung = 'Bestückungsautomat und Löten';
RELATE raumtyp:vbw_20->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:vbw_20->hat_ausstattung->ausstattungstyp:typ_1_4 SET anzahl = 1;
RELATE raumtyp:vbw_20->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 1;
RELATE raumtyp:vbw_20->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 1;
RELATE raumtyp:vbw_20->hat_ausstattung->ausstattungstyp:typ_4_13 SET anzahl = 1;
RELATE raumtyp:vbw_20->hat_ausstattung->ausstattungstyp:typ_4_20 SET anzahl = 1;
RELATE raumtyp:vbw_20->hat_ausstattung->ausstattungstyp:typ_4_21 SET anzahl = 1;
RELATE raumtyp:vbw_20->hat_ausstattung->ausstattungstyp:typ_4_22 SET anzahl = 1;

-- Raumtyp: ZooSa.1 - Lager
UPSERT raumtyp:zoosa_1 SET
    code = 'ZooSa.1',
    bezeichnung = 'Lager';
RELATE raumtyp:zoosa_1->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:zoosa_1->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:zoosa_1->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:zoosa_1->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;

-- Raumtyp: ZooSa.1.1 - Lager Nasssammlung
UPSERT raumtyp:zoosa_1_1 SET
    code = 'ZooSa.1.1',
    bezeichnung = 'Lager Nasssammlung';
RELATE raumtyp:zoosa_1_1->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:zoosa_1_1->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:zoosa_1_1->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:zoosa_1_1->hat_ausstattung->ausstattungstyp:typ_3_2 SET anzahl = 19;
RELATE raumtyp:zoosa_1_1->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;

-- Raumtyp: ZooSa.2 - Kühlraum / Kadaverraum
UPSERT raumtyp:zoosa_2 SET
    code = 'ZooSa.2',
    bezeichnung = 'Kühlraum / Kadaverraum';
RELATE raumtyp:zoosa_2->gehoert_zu_bereich->bereich:biologie;

-- Raumtyp: ZooSa.3 - Präparatorenwerkstatt
UPSERT raumtyp:zoosa_3 SET
    code = 'ZooSa.3',
    bezeichnung = 'Präparatorenwerkstatt';
RELATE raumtyp:zoosa_3->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:zoosa_3->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:zoosa_3->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:zoosa_3->hat_ausstattung->ausstattungstyp:typ_3_1 SET anzahl = 1;
RELATE raumtyp:zoosa_3->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;
RELATE raumtyp:zoosa_3->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 1;
RELATE raumtyp:zoosa_3->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 2;

-- Raumtyp: ZooSa.4 - Arbeitsraum Studierende (ehem.Tierhaltungsraum)
UPSERT raumtyp:zoosa_4 SET
    code = 'ZooSa.4',
    bezeichnung = 'Arbeitsraum Studierende (ehem.Tierhaltungsraum)';
RELATE raumtyp:zoosa_4->gehoert_zu_bereich->bereich:biologie;
RELATE raumtyp:zoosa_4->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 2;
RELATE raumtyp:zoosa_4->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 7;

-- Raumtyp: A.1 - Separater Auswerte- und Steuerarbeitsplatz
UPSERT raumtyp:a_1 SET
    code = 'A.1',
    bezeichnung = 'Separater Auswerte- und Steuerarbeitsplatz';
RELATE raumtyp:a_1->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:a_1->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 3;
RELATE raumtyp:a_1->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 2;

-- Raumtyp: A.3 - Vorlesungssammlung Didaktik
UPSERT raumtyp:a_3 SET
    code = 'A.3',
    bezeichnung = 'Vorlesungssammlung Didaktik';
RELATE raumtyp:a_3->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:a_3->hat_ausstattung->ausstattungstyp:typ_1_4 SET anzahl = 1;
RELATE raumtyp:a_3->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:a_3->hat_ausstattung->ausstattungstyp:typ_3_2 SET anzahl = 2;
RELATE raumtyp:a_3->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 2;
RELATE raumtyp:a_3->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 7;
RELATE raumtyp:a_3->hat_ausstattung->ausstattungstyp:typ_4_15 SET anzahl = 1;
RELATE raumtyp:a_3->hat_ausstattung->ausstattungstyp:typ_4_17 SET anzahl = 1;
RELATE raumtyp:a_3->hat_ausstattung->ausstattungstyp:typ_5_4 SET anzahl = 1;

-- Raumtyp: L.1.1 - Labor hohe Anforderungen
UPSERT raumtyp:l_1_1 SET
    code = 'L.1.1',
    bezeichnung = 'Labor hohe Anforderungen';
RELATE raumtyp:l_1_1->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:l_1_1->hat_ausstattung->ausstattungstyp:typ_2_2_1 SET anzahl = 1;
RELATE raumtyp:l_1_1->hat_ausstattung->ausstattungstyp:typ_3_2 SET anzahl = 1;
RELATE raumtyp:l_1_1->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 2;
RELATE raumtyp:l_1_1->hat_ausstattung->ausstattungstyp:typ_4_14 SET anzahl = 1;
RELATE raumtyp:l_1_1->hat_ausstattung->ausstattungstyp:typ_4_15 SET anzahl = 1;
RELATE raumtyp:l_1_1->hat_ausstattung->ausstattungstyp:typ_4_16 SET anzahl = 1;
RELATE raumtyp:l_1_1->hat_ausstattung->ausstattungstyp:typ_4_18 SET anzahl = 1;
RELATE raumtyp:l_1_1->hat_ausstattung->ausstattungstyp:typ_5_3 SET anzahl = 1;
RELATE raumtyp:l_1_1->hat_ausstattung->ausstattungstyp:typ_6_4 SET anzahl = 1;

-- Raumtyp: L.1.2 - Labor hohe Anforderungen Bodenplatte / Gründung
UPSERT raumtyp:l_1_2 SET
    code = 'L.1.2',
    bezeichnung = 'Labor hohe Anforderungen Bodenplatte / Gründung';
RELATE raumtyp:l_1_2->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:l_1_2->hat_ausstattung->ausstattungstyp:typ_2_2_1 SET anzahl = 1;
RELATE raumtyp:l_1_2->hat_ausstattung->ausstattungstyp:typ_3_2 SET anzahl = 1;
RELATE raumtyp:l_1_2->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 2;
RELATE raumtyp:l_1_2->hat_ausstattung->ausstattungstyp:typ_4_14 SET anzahl = 1;
RELATE raumtyp:l_1_2->hat_ausstattung->ausstattungstyp:typ_4_15 SET anzahl = 1;
RELATE raumtyp:l_1_2->hat_ausstattung->ausstattungstyp:typ_4_16 SET anzahl = 1;
RELATE raumtyp:l_1_2->hat_ausstattung->ausstattungstyp:typ_4_18 SET anzahl = 1;
RELATE raumtyp:l_1_2->hat_ausstattung->ausstattungstyp:typ_5_3 SET anzahl = 1;
RELATE raumtyp:l_1_2->hat_ausstattung->ausstattungstyp:typ_6_4 SET anzahl = 1;

-- Raumtyp: L.2 - Labor einfach
UPSERT raumtyp:l_2 SET
    code = 'L.2',
    bezeichnung = 'Labor einfach';
RELATE raumtyp:l_2->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:l_2->hat_ausstattung->ausstattungstyp:typ_2_2_1 SET anzahl = 1;
RELATE raumtyp:l_2->hat_ausstattung->ausstattungstyp:typ_3_2 SET anzahl = 1;
RELATE raumtyp:l_2->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 2;
RELATE raumtyp:l_2->hat_ausstattung->ausstattungstyp:typ_4_14 SET anzahl = 1;
RELATE raumtyp:l_2->hat_ausstattung->ausstattungstyp:typ_4_15 SET anzahl = 1;
RELATE raumtyp:l_2->hat_ausstattung->ausstattungstyp:typ_4_17 SET anzahl = 1;
RELATE raumtyp:l_2->hat_ausstattung->ausstattungstyp:typ_4_18 SET anzahl = 1;
RELATE raumtyp:l_2->hat_ausstattung->ausstattungstyp:typ_5_3 SET anzahl = 1;

-- Raumtyp: L.3.1 - Laserlabor hohe Anforderungen
UPSERT raumtyp:l_3_1 SET
    code = 'L.3.1',
    bezeichnung = 'Laserlabor hohe Anforderungen';
RELATE raumtyp:l_3_1->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:l_3_1->hat_ausstattung->ausstattungstyp:typ_1_4 SET anzahl = 1;
RELATE raumtyp:l_3_1->hat_ausstattung->ausstattungstyp:typ_2_2_1 SET anzahl = 1;
RELATE raumtyp:l_3_1->hat_ausstattung->ausstattungstyp:typ_3_2 SET anzahl = 1;
RELATE raumtyp:l_3_1->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 2;
RELATE raumtyp:l_3_1->hat_ausstattung->ausstattungstyp:typ_4_14 SET anzahl = 1;
RELATE raumtyp:l_3_1->hat_ausstattung->ausstattungstyp:typ_4_15 SET anzahl = 1;
RELATE raumtyp:l_3_1->hat_ausstattung->ausstattungstyp:typ_4_16 SET anzahl = 1;
RELATE raumtyp:l_3_1->hat_ausstattung->ausstattungstyp:typ_4_18 SET anzahl = 1;
RELATE raumtyp:l_3_1->hat_ausstattung->ausstattungstyp:typ_5_1 SET anzahl = 1;
RELATE raumtyp:l_3_1->hat_ausstattung->ausstattungstyp:typ_5_2 SET anzahl = 1;
RELATE raumtyp:l_3_1->hat_ausstattung->ausstattungstyp:typ_6_4 SET anzahl = 1;

-- Raumtyp: L.3.2 - Laserlabor hohe Anforderungen Bodenplatte / Gründung
UPSERT raumtyp:l_3_2 SET
    code = 'L.3.2',
    bezeichnung = 'Laserlabor hohe Anforderungen Bodenplatte / Gründung';
RELATE raumtyp:l_3_2->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:l_3_2->hat_ausstattung->ausstattungstyp:typ_1_4 SET anzahl = 1;
RELATE raumtyp:l_3_2->hat_ausstattung->ausstattungstyp:typ_2_2_1 SET anzahl = 1;
RELATE raumtyp:l_3_2->hat_ausstattung->ausstattungstyp:typ_3_2 SET anzahl = 1;
RELATE raumtyp:l_3_2->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 2;
RELATE raumtyp:l_3_2->hat_ausstattung->ausstattungstyp:typ_4_14 SET anzahl = 1;
RELATE raumtyp:l_3_2->hat_ausstattung->ausstattungstyp:typ_4_15 SET anzahl = 1;
RELATE raumtyp:l_3_2->hat_ausstattung->ausstattungstyp:typ_4_16 SET anzahl = 1;
RELATE raumtyp:l_3_2->hat_ausstattung->ausstattungstyp:typ_4_18 SET anzahl = 1;
RELATE raumtyp:l_3_2->hat_ausstattung->ausstattungstyp:typ_5_1 SET anzahl = 1;
RELATE raumtyp:l_3_2->hat_ausstattung->ausstattungstyp:typ_5_2 SET anzahl = 1;
RELATE raumtyp:l_3_2->hat_ausstattung->ausstattungstyp:typ_6_4 SET anzahl = 1;

-- Raumtyp: L.4 - Laserlabor einfach
UPSERT raumtyp:l_4 SET
    code = 'L.4',
    bezeichnung = 'Laserlabor einfach';
RELATE raumtyp:l_4->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:l_4->hat_ausstattung->ausstattungstyp:typ_2_2_1 SET anzahl = 1;
RELATE raumtyp:l_4->hat_ausstattung->ausstattungstyp:typ_3_2 SET anzahl = 1;
RELATE raumtyp:l_4->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 2;
RELATE raumtyp:l_4->hat_ausstattung->ausstattungstyp:typ_4_14 SET anzahl = 1;
RELATE raumtyp:l_4->hat_ausstattung->ausstattungstyp:typ_4_15 SET anzahl = 1;
RELATE raumtyp:l_4->hat_ausstattung->ausstattungstyp:typ_4_17 SET anzahl = 1;
RELATE raumtyp:l_4->hat_ausstattung->ausstattungstyp:typ_4_18 SET anzahl = 1;
RELATE raumtyp:l_4->hat_ausstattung->ausstattungstyp:typ_5_1 SET anzahl = 2;

-- Raumtyp: L.5 - Labor präparativ / Chemisch
UPSERT raumtyp:l_5 SET
    code = 'L.5',
    bezeichnung = 'Labor präparativ / Chemisch';
RELATE raumtyp:l_5->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:l_5->hat_ausstattung->ausstattungstyp:typ_1_1 SET anzahl = 1;
RELATE raumtyp:l_5->hat_ausstattung->ausstattungstyp:typ_1_4 SET anzahl = 1;
RELATE raumtyp:l_5->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:l_5->hat_ausstattung->ausstattungstyp:typ_3_1_1 SET anzahl = 2;
RELATE raumtyp:l_5->hat_ausstattung->ausstattungstyp:typ_3_2 SET anzahl = 1;
RELATE raumtyp:l_5->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 2;
RELATE raumtyp:l_5->hat_ausstattung->ausstattungstyp:typ_4_15 SET anzahl = 1;
RELATE raumtyp:l_5->hat_ausstattung->ausstattungstyp:typ_4_16 SET anzahl = 2;
RELATE raumtyp:l_5->hat_ausstattung->ausstattungstyp:typ_4_18 SET anzahl = 1;

-- Raumtyp: L.6 - Reinraum Klasse FS100 / ISO 5
UPSERT raumtyp:l_6 SET
    code = 'L.6',
    bezeichnung = 'Reinraum Klasse FS100 / ISO 5';
RELATE raumtyp:l_6->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:l_6->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:l_6->hat_ausstattung->ausstattungstyp:typ_3_2 SET anzahl = 3;
RELATE raumtyp:l_6->hat_ausstattung->ausstattungstyp:typ_3_4 SET anzahl = 2;
RELATE raumtyp:l_6->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 7;
RELATE raumtyp:l_6->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 3;
RELATE raumtyp:l_6->hat_ausstattung->ausstattungstyp:typ_4_4 SET anzahl = 2;
RELATE raumtyp:l_6->hat_ausstattung->ausstattungstyp:typ_4_14 SET anzahl = 1;
RELATE raumtyp:l_6->hat_ausstattung->ausstattungstyp:typ_4_15 SET anzahl = 3;
RELATE raumtyp:l_6->hat_ausstattung->ausstattungstyp:typ_4_16 SET anzahl = 1;
RELATE raumtyp:l_6->hat_ausstattung->ausstattungstyp:typ_4_17 SET anzahl = 2;
RELATE raumtyp:l_6->hat_ausstattung->ausstattungstyp:typ_4_18 SET anzahl = 3;
RELATE raumtyp:l_6->hat_ausstattung->ausstattungstyp:typ_6_4 SET anzahl = 1;

-- Raumtyp: L.7 - Lehr-Lern-Labor Didaktik
UPSERT raumtyp:l_7 SET
    code = 'L.7',
    bezeichnung = 'Lehr-Lern-Labor Didaktik';
RELATE raumtyp:l_7->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:l_7->hat_ausstattung->ausstattungstyp:typ_1_7 SET anzahl = 3;
RELATE raumtyp:l_7->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:l_7->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 4;
RELATE raumtyp:l_7->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 8;
RELATE raumtyp:l_7->hat_ausstattung->ausstattungstyp:typ_5_4 SET anzahl = 6;

-- Raumtyp: N.1 - Nutzerwerkstatt
UPSERT raumtyp:n_1 SET
    code = 'N.1',
    bezeichnung = 'Nutzerwerkstatt';
RELATE raumtyp:n_1->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:n_1->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;
RELATE raumtyp:n_1->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 3;
RELATE raumtyp:n_1->hat_ausstattung->ausstattungstyp:typ_4_4 SET anzahl = 1;
RELATE raumtyp:n_1->hat_ausstattung->ausstattungstyp:typ_4_4_1 SET anzahl = 2;

-- Raumtyp: N.2.1 - Geräteraum
UPSERT raumtyp:n_2_1 SET
    code = 'N.2.1',
    bezeichnung = 'Geräteraum';
RELATE raumtyp:n_2_1->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:n_2_1->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:n_2_1->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 5;
RELATE raumtyp:n_2_1->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 4;
RELATE raumtyp:n_2_1->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 1;

-- Raumtyp: N.2.2 - Geräteraum
UPSERT raumtyp:n_2_2 SET
    code = 'N.2.2',
    bezeichnung = 'Geräteraum';
RELATE raumtyp:n_2_2->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:n_2_2->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 3;
RELATE raumtyp:n_2_2->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 2;

-- Raumtyp: N.2.3 - Geräteraum
UPSERT raumtyp:n_2_3 SET
    code = 'N.2.3',
    bezeichnung = 'Geräteraum';
RELATE raumtyp:n_2_3->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:n_2_3->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 2;
RELATE raumtyp:n_2_3->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 2;
RELATE raumtyp:n_2_3->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 2;

-- Raumtyp: N.2.4 - Geräteraum
UPSERT raumtyp:n_2_4 SET
    code = 'N.2.4',
    bezeichnung = 'Geräteraum';
RELATE raumtyp:n_2_4->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:n_2_4->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;
RELATE raumtyp:n_2_4->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 1;
RELATE raumtyp:n_2_4->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 1;

-- Raumtyp: N.4 - Materiallager
UPSERT raumtyp:n_4 SET
    code = 'N.4',
    bezeichnung = 'Materiallager';
RELATE raumtyp:n_4->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:n_4->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;

-- Raumtyp: P.1 - Praktikumsraum Laser
UPSERT raumtyp:p_1 SET
    code = 'P.1',
    bezeichnung = 'Praktikumsraum Laser';
RELATE raumtyp:p_1->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:p_1->hat_ausstattung->ausstattungstyp:typ_1_1 SET anzahl = 2;
RELATE raumtyp:p_1->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:p_1->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 4;
RELATE raumtyp:p_1->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 2;
RELATE raumtyp:p_1->hat_ausstattung->ausstattungstyp:typ_5_4 SET anzahl = 1;

-- Raumtyp: P.2 - Praktikumsraum
UPSERT raumtyp:p_2 SET
    code = 'P.2',
    bezeichnung = 'Praktikumsraum';
RELATE raumtyp:p_2->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:p_2->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 6;
RELATE raumtyp:p_2->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 4;
RELATE raumtyp:p_2->hat_ausstattung->ausstattungstyp:typ_5_4 SET anzahl = 3;

-- Raumtyp: P.2.1 - Praktikumraum
UPSERT raumtyp:p_2_1 SET
    code = 'P.2.1',
    bezeichnung = 'Praktikumraum';
RELATE raumtyp:p_2_1->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:p_2_1->hat_ausstattung->ausstattungstyp:typ_1_7 SET anzahl = 1;
RELATE raumtyp:p_2_1->hat_ausstattung->ausstattungstyp:typ_3_2 SET anzahl = 1;
RELATE raumtyp:p_2_1->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 5;
RELATE raumtyp:p_2_1->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 3;
RELATE raumtyp:p_2_1->hat_ausstattung->ausstattungstyp:typ_5_4 SET anzahl = 2;

-- Raumtyp: P.2.2 - Praktikumsraum groß
UPSERT raumtyp:p_2_2 SET
    code = 'P.2.2',
    bezeichnung = 'Praktikumsraum groß';
RELATE raumtyp:p_2_2->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:p_2_2->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 6;
RELATE raumtyp:p_2_2->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 4;
RELATE raumtyp:p_2_2->hat_ausstattung->ausstattungstyp:typ_5_4 SET anzahl = 2;

-- Raumtyp: P.2.3 - Prakitkumsraum Didaktik
UPSERT raumtyp:p_2_3 SET
    code = 'P.2.3',
    bezeichnung = 'Prakitkumsraum Didaktik';
RELATE raumtyp:p_2_3->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:p_2_3->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:p_2_3->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 5;
RELATE raumtyp:p_2_3->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 4;
RELATE raumtyp:p_2_3->hat_ausstattung->ausstattungstyp:typ_5_4 SET anzahl = 1;
RELATE raumtyp:p_2_3->hat_ausstattung->ausstattungstyp:typ_5_5 SET anzahl = 1;

-- Raumtyp: P.3 - Praktikumslager
UPSERT raumtyp:p_3 SET
    code = 'P.3',
    bezeichnung = 'Praktikumslager';
RELATE raumtyp:p_3->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:p_3->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:p_3->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 1;
RELATE raumtyp:p_3->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 3;
RELATE raumtyp:p_3->hat_ausstattung->ausstattungstyp:typ_5_4 SET anzahl = 1;

-- Raumtyp: T.2 - Computerpraktikum / CIP-Pool
UPSERT raumtyp:t_2 SET
    code = 'T.2',
    bezeichnung = 'Computerpraktikum / CIP-Pool';
RELATE raumtyp:t_2->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:t_2->hat_ausstattung->ausstattungstyp:typ_1_7 SET anzahl = 1;
RELATE raumtyp:t_2->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 6;

-- Raumtyp: Wphy_02 - Elektronikwerkstatt
UPSERT raumtyp:wphy_02 SET
    code = 'Wphy_02',
    bezeichnung = 'Elektronikwerkstatt';
RELATE raumtyp:wphy_02->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:wphy_02->hat_ausstattung->ausstattungstyp:typ_1_1_1 SET anzahl = 10;
RELATE raumtyp:wphy_02->hat_ausstattung->ausstattungstyp:typ_1_3 SET anzahl = 15;
RELATE raumtyp:wphy_02->hat_ausstattung->ausstattungstyp:typ_2_3 SET anzahl = 1;
RELATE raumtyp:wphy_02->hat_ausstattung->ausstattungstyp:typ_3_6 SET anzahl = 8;
RELATE raumtyp:wphy_02->hat_ausstattung->ausstattungstyp:typ_5_3 SET anzahl = 1;
RELATE raumtyp:wphy_02->hat_ausstattung->ausstattungstyp:typ_6_10 SET anzahl = 1;
RELATE raumtyp:wphy_02->hat_ausstattung->ausstattungstyp:typ_6_11 SET anzahl = 1;

-- Raumtyp: Wphy_03 - Ätzraum
UPSERT raumtyp:wphy_03 SET
    code = 'Wphy_03',
    bezeichnung = 'Ätzraum';
RELATE raumtyp:wphy_03->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:wphy_03->hat_ausstattung->ausstattungstyp:typ_1_3 SET anzahl = 8;
RELATE raumtyp:wphy_03->hat_ausstattung->ausstattungstyp:typ_3_1 SET anzahl = 1;

-- Raumtyp: Wphy_04 - Metallbearbeitung
UPSERT raumtyp:wphy_04 SET
    code = 'Wphy_04',
    bezeichnung = 'Metallbearbeitung';
RELATE raumtyp:wphy_04->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:wphy_04->hat_ausstattung->ausstattungstyp:typ_1_1_1 SET anzahl = 2;
RELATE raumtyp:wphy_04->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 2;
RELATE raumtyp:wphy_04->hat_ausstattung->ausstattungstyp:typ_4_13 SET anzahl = 1;
RELATE raumtyp:wphy_04->hat_ausstattung->ausstattungstyp:typ_4_27 SET anzahl = 2;
RELATE raumtyp:wphy_04->hat_ausstattung->ausstattungstyp:typ_6_7 SET anzahl = 5;

-- Raumtyp: Wphy_06 - Werkbänke und freistehende Bearbeitungsmaschinen
UPSERT raumtyp:wphy_06 SET
    code = 'Wphy_06',
    bezeichnung = 'Werkbänke und freistehende Bearbeitungsmaschinen';
RELATE raumtyp:wphy_06->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:wphy_06->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 5;
RELATE raumtyp:wphy_06->hat_ausstattung->ausstattungstyp:typ_4_12 SET anzahl = 19;
RELATE raumtyp:wphy_06->hat_ausstattung->ausstattungstyp:typ_4_13 SET anzahl = 10;
RELATE raumtyp:wphy_06->hat_ausstattung->ausstattungstyp:typ_5_5 SET anzahl = 10;
RELATE raumtyp:wphy_06->hat_ausstattung->ausstattungstyp:typ_6_7 SET anzahl = 9;

-- Raumtyp: Wphy_07 - Sandstrahl / Glühofenraum
UPSERT raumtyp:wphy_07 SET
    code = 'Wphy_07',
    bezeichnung = 'Sandstrahl / Glühofenraum';
RELATE raumtyp:wphy_07->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:wphy_07->hat_ausstattung->ausstattungstyp:typ_3_6 SET anzahl = 2;
RELATE raumtyp:wphy_07->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 2;
RELATE raumtyp:wphy_07->hat_ausstattung->ausstattungstyp:typ_4_13 SET anzahl = 1;
RELATE raumtyp:wphy_07->hat_ausstattung->ausstattungstyp:typ_6_7 SET anzahl = 3;
RELATE raumtyp:wphy_07->hat_ausstattung->ausstattungstyp:typ_6_11 SET anzahl = 1;

-- Raumtyp: Wphy_08 - Plasmaschneidraum
UPSERT raumtyp:wphy_08 SET
    code = 'Wphy_08',
    bezeichnung = 'Plasmaschneidraum';
RELATE raumtyp:wphy_08->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:wphy_08->hat_ausstattung->ausstattungstyp:typ_3_6 SET anzahl = 2;
RELATE raumtyp:wphy_08->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 1;
RELATE raumtyp:wphy_08->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 2;
RELATE raumtyp:wphy_08->hat_ausstattung->ausstattungstyp:typ_4_13 SET anzahl = 1;
RELATE raumtyp:wphy_08->hat_ausstattung->ausstattungstyp:typ_6_7 SET anzahl = 1;
RELATE raumtyp:wphy_08->hat_ausstattung->ausstattungstyp:typ_6_11 SET anzahl = 2;

-- Raumtyp: Wphy_09 - Holzbearbeitung/Sägeraum
UPSERT raumtyp:wphy_09 SET
    code = 'Wphy_09',
    bezeichnung = 'Holzbearbeitung/Sägeraum';
RELATE raumtyp:wphy_09->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:wphy_09->hat_ausstattung->ausstattungstyp:typ_3_6 SET anzahl = 2;
RELATE raumtyp:wphy_09->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 2;
RELATE raumtyp:wphy_09->hat_ausstattung->ausstattungstyp:typ_4_13 SET anzahl = 2;
RELATE raumtyp:wphy_09->hat_ausstattung->ausstattungstyp:typ_6_7 SET anzahl = 3;
RELATE raumtyp:wphy_09->hat_ausstattung->ausstattungstyp:typ_6_11 SET anzahl = 2;

-- Raumtyp: Wphy_10 - Schweißraum WIG
UPSERT raumtyp:wphy_10 SET
    code = 'Wphy_10',
    bezeichnung = 'Schweißraum WIG';
RELATE raumtyp:wphy_10->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:wphy_10->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:wphy_10->hat_ausstattung->ausstattungstyp:typ_4_13 SET anzahl = 1;
RELATE raumtyp:wphy_10->hat_ausstattung->ausstattungstyp:typ_6_7 SET anzahl = 5;
RELATE raumtyp:wphy_10->hat_ausstattung->ausstattungstyp:typ_6_11 SET anzahl = 1;

-- Raumtyp: Wphy_11 - Schleiferei
UPSERT raumtyp:wphy_11 SET
    code = 'Wphy_11',
    bezeichnung = 'Schleiferei';
RELATE raumtyp:wphy_11->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:wphy_11->hat_ausstattung->ausstattungstyp:typ_3_6 SET anzahl = 2;
RELATE raumtyp:wphy_11->hat_ausstattung->ausstattungstyp:typ_4_13 SET anzahl = 2;
RELATE raumtyp:wphy_11->hat_ausstattung->ausstattungstyp:typ_6_7 SET anzahl = 8;
RELATE raumtyp:wphy_11->hat_ausstattung->ausstattungstyp:typ_6_11 SET anzahl = 2;

-- Raumtyp: Wphy_12 - Schlosserei/Schweißen, MIG, Autogen
UPSERT raumtyp:wphy_12 SET
    code = 'Wphy_12',
    bezeichnung = 'Schlosserei/Schweißen, MIG, Autogen';
RELATE raumtyp:wphy_12->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:wphy_12->hat_ausstattung->ausstattungstyp:typ_3_6 SET anzahl = 2;
RELATE raumtyp:wphy_12->hat_ausstattung->ausstattungstyp:typ_4_13 SET anzahl = 2;
RELATE raumtyp:wphy_12->hat_ausstattung->ausstattungstyp:typ_6_7 SET anzahl = 4;
RELATE raumtyp:wphy_12->hat_ausstattung->ausstattungstyp:typ_6_11 SET anzahl = 2;

-- Raumtyp: Wphy_13 - Lager, Metall, Kunststoffe, sonstiges
UPSERT raumtyp:wphy_13 SET
    code = 'Wphy_13',
    bezeichnung = 'Lager, Metall, Kunststoffe, sonstiges';
RELATE raumtyp:wphy_13->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:wphy_13->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:wphy_13->hat_ausstattung->ausstattungstyp:typ_4_13 SET anzahl = 1;
RELATE raumtyp:wphy_13->hat_ausstattung->ausstattungstyp:typ_6_7 SET anzahl = 5;

-- Raumtyp: Wphy_15 - Lager
UPSERT raumtyp:wphy_15 SET
    code = 'Wphy_15',
    bezeichnung = 'Lager';
RELATE raumtyp:wphy_15->gehoert_zu_bereich->bereich:physik;
RELATE raumtyp:wphy_15->hat_ausstattung->ausstattungstyp:typ_1_1_1 SET anzahl = 2;
RELATE raumtyp:wphy_15->hat_ausstattung->ausstattungstyp:typ_1_3 SET anzahl = 3;

-- Raumtyp: 1a_VB - Verhaltenbeobachtungsraum
UPSERT raumtyp:rt_1a_vb SET
    code = '1a_VB',
    bezeichnung = 'Verhaltenbeobachtungsraum';
RELATE raumtyp:rt_1a_vb->gehoert_zu_bereich->bereich:psychologie;
RELATE raumtyp:rt_1a_vb->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 2;

-- Raumtyp: 1b_U+B - Untersuchungsraum
UPSERT raumtyp:rt_1b_ub SET
    code = '1b_U+B',
    bezeichnung = 'Untersuchungsraum';
RELATE raumtyp:rt_1b_ub->gehoert_zu_bereich->bereich:psychologie;
RELATE raumtyp:rt_1b_ub->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 3;

-- Raumtyp: 1b_VB - Verhaltenbeobachtungsraum
UPSERT raumtyp:rt_1b_vb SET
    code = '1b_VB',
    bezeichnung = 'Verhaltenbeobachtungsraum';
RELATE raumtyp:rt_1b_vb->gehoert_zu_bereich->bereich:psychologie;
RELATE raumtyp:rt_1b_vb->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 3;

-- Raumtyp: 2a_U+B - Untersuchungsraum
UPSERT raumtyp:rt_2a_ub SET
    code = '2a_U+B',
    bezeichnung = 'Untersuchungsraum';
RELATE raumtyp:rt_2a_ub->gehoert_zu_bereich->bereich:psychologie;
RELATE raumtyp:rt_2a_ub->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 2;

-- Raumtyp: 2a_VB - Verhaltenbeobachtungsraum
UPSERT raumtyp:rt_2a_vb SET
    code = '2a_VB',
    bezeichnung = 'Verhaltenbeobachtungsraum';
RELATE raumtyp:rt_2a_vb->gehoert_zu_bereich->bereich:psychologie;
RELATE raumtyp:rt_2a_vb->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 2;

-- Raumtyp: 2b_VB - Verhaltenbeobachtungsraum
UPSERT raumtyp:rt_2b_vb SET
    code = '2b_VB',
    bezeichnung = 'Verhaltenbeobachtungsraum';
RELATE raumtyp:rt_2b_vb->gehoert_zu_bereich->bereich:psychologie;
RELATE raumtyp:rt_2b_vb->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 3;

-- Raumtyp: 3a_VB - Verhaltenbeobachtungsraum
UPSERT raumtyp:rt_3a_vb SET
    code = '3a_VB',
    bezeichnung = 'Verhaltenbeobachtungsraum';
RELATE raumtyp:rt_3a_vb->gehoert_zu_bereich->bereich:psychologie;
RELATE raumtyp:rt_3a_vb->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 3;

-- Raumtyp: 3b_U+B - Untersuchungsraum
UPSERT raumtyp:rt_3b_ub SET
    code = '3b_U+B',
    bezeichnung = 'Untersuchungsraum';
RELATE raumtyp:rt_3b_ub->gehoert_zu_bereich->bereich:psychologie;
RELATE raumtyp:rt_3b_ub->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 3;

-- Raumtyp: 3b_VB - Verhaltenbeobachtungsraum
UPSERT raumtyp:rt_3b_vb SET
    code = '3b_VB',
    bezeichnung = 'Verhaltenbeobachtungsraum';
RELATE raumtyp:rt_3b_vb->gehoert_zu_bereich->bereich:psychologie;
RELATE raumtyp:rt_3b_vb->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 3;

-- Raumtyp: 4a_VB - Verhaltenbeobachtungsraum
UPSERT raumtyp:rt_4a_vb SET
    code = '4a_VB',
    bezeichnung = 'Verhaltenbeobachtungsraum';
RELATE raumtyp:rt_4a_vb->gehoert_zu_bereich->bereich:psychologie;
RELATE raumtyp:rt_4a_vb->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 3;

-- Raumtyp: 4b_U+B - Untersuchungsraum
UPSERT raumtyp:rt_4b_ub SET
    code = '4b_U+B',
    bezeichnung = 'Untersuchungsraum';
RELATE raumtyp:rt_4b_ub->gehoert_zu_bereich->bereich:psychologie;
RELATE raumtyp:rt_4b_ub->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 3;

-- Raumtyp: 4b_VB - Verhaltenbeobachtungsraum
UPSERT raumtyp:rt_4b_vb SET
    code = '4b_VB',
    bezeichnung = 'Verhaltenbeobachtungsraum';
RELATE raumtyp:rt_4b_vb->gehoert_zu_bereich->bereich:psychologie;
RELATE raumtyp:rt_4b_vb->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 3;

-- Raumtyp: 5a_Arc - Archiv
UPSERT raumtyp:rt_5a_arc SET
    code = '5a_Arc',
    bezeichnung = 'Archiv';
RELATE raumtyp:rt_5a_arc->gehoert_zu_bereich->bereich:psychologie;
RELATE raumtyp:rt_5a_arc->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 3;
RELATE raumtyp:rt_5a_arc->hat_ausstattung->ausstattungstyp:typ_5_5 SET anzahl = 2;

-- Raumtyp: 5a_VB - Verhaltenbeobachtungsraum
UPSERT raumtyp:rt_5a_vb SET
    code = '5a_VB',
    bezeichnung = 'Verhaltenbeobachtungsraum';
RELATE raumtyp:rt_5a_vb->gehoert_zu_bereich->bereich:psychologie;
RELATE raumtyp:rt_5a_vb->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 3;
RELATE raumtyp:rt_5a_vb->hat_ausstattung->ausstattungstyp:typ_5_5 SET anzahl = 2;

-- Raumtyp: 5b_VB - Verhaltenbeobachtungsraum
UPSERT raumtyp:rt_5b_vb SET
    code = '5b_VB',
    bezeichnung = 'Verhaltenbeobachtungsraum';
RELATE raumtyp:rt_5b_vb->gehoert_zu_bereich->bereich:psychologie;
RELATE raumtyp:rt_5b_vb->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 3;
RELATE raumtyp:rt_5b_vb->hat_ausstattung->ausstattungstyp:typ_5_5 SET anzahl = 2;

-- Raumtyp: PS_CIP - Computerpraktikum / CIP-Pool
UPSERT raumtyp:ps_cip SET
    code = 'PS_CIP',
    bezeichnung = 'Computerpraktikum / CIP-Pool';
RELATE raumtyp:ps_cip->gehoert_zu_bereich->bereich:psychologie;
RELATE raumtyp:ps_cip->hat_ausstattung->ausstattungstyp:typ_1_7 SET anzahl = 1;
RELATE raumtyp:ps_cip->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 5;
RELATE raumtyp:ps_cip->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 1;
RELATE raumtyp:ps_cip->hat_ausstattung->ausstattungstyp:typ_5_5 SET anzahl = 4;

-- Raumtyp: PS_CMLF - CMLF-Labor
UPSERT raumtyp:ps_cmlf SET
    code = 'PS_CMLF',
    bezeichnung = 'CMLF-Labor';
RELATE raumtyp:ps_cmlf->gehoert_zu_bereich->bereich:psychologie;
RELATE raumtyp:ps_cmlf->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 3;
RELATE raumtyp:ps_cmlf->hat_ausstattung->ausstattungstyp:typ_5_5 SET anzahl = 4;

-- Raumtyp: TL_01 - Chemie
UPSERT raumtyp:tl_01 SET
    code = 'TL_01',
    bezeichnung = 'Chemie';
RELATE raumtyp:tl_01->gehoert_zu_bereich->bereich:teutolabs;
RELATE raumtyp:tl_01->hat_ausstattung->ausstattungstyp:typ_1_7 SET anzahl = 1;
RELATE raumtyp:tl_01->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:tl_01->hat_ausstattung->ausstattungstyp:typ_3_1 SET anzahl = 1;
RELATE raumtyp:tl_01->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;
RELATE raumtyp:tl_01->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 6;
RELATE raumtyp:tl_01->hat_ausstattung->ausstattungstyp:typ_5_5 SET anzahl = 4;

-- Raumtyp: TL_02 - Robotik Lab 1
UPSERT raumtyp:tl_02 SET
    code = 'TL_02',
    bezeichnung = 'Robotik Lab 1';
RELATE raumtyp:tl_02->gehoert_zu_bereich->bereich:teutolabs;
RELATE raumtyp:tl_02->hat_ausstattung->ausstattungstyp:typ_1_7 SET anzahl = 1;
RELATE raumtyp:tl_02->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 4;
RELATE raumtyp:tl_02->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 13;
RELATE raumtyp:tl_02->hat_ausstattung->ausstattungstyp:typ_5_3 SET anzahl = 3;

-- Raumtyp: TL_04 - Biologie Lab 1
UPSERT raumtyp:tl_04 SET
    code = 'TL_04',
    bezeichnung = 'Biologie Lab 1';
RELATE raumtyp:tl_04->gehoert_zu_bereich->bereich:teutolabs;
RELATE raumtyp:tl_04->hat_ausstattung->ausstattungstyp:typ_1_7 SET anzahl = 1;
RELATE raumtyp:tl_04->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 2;
RELATE raumtyp:tl_04->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;
RELATE raumtyp:tl_04->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 10;
RELATE raumtyp:tl_04->hat_ausstattung->ausstattungstyp:typ_5_4 SET anzahl = 6;

-- Raumtyp: TL_05 - Sport Lab 1 / Medizin Lab 1
UPSERT raumtyp:tl_05 SET
    code = 'TL_05',
    bezeichnung = 'Sport Lab 1 / Medizin Lab 1';
RELATE raumtyp:tl_05->gehoert_zu_bereich->bereich:teutolabs;
RELATE raumtyp:tl_05->hat_ausstattung->ausstattungstyp:typ_1_7 SET anzahl = 1;
RELATE raumtyp:tl_05->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:tl_05->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 2;
RELATE raumtyp:tl_05->hat_ausstattung->ausstattungstyp:typ_4_2 SET anzahl = 2;
RELATE raumtyp:tl_05->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 9;
RELATE raumtyp:tl_05->hat_ausstattung->ausstattungstyp:typ_5_4 SET anzahl = 6;

-- Raumtyp: TL_06 - Physik Lab 3
UPSERT raumtyp:tl_06 SET
    code = 'TL_06',
    bezeichnung = 'Physik Lab 3';
RELATE raumtyp:tl_06->gehoert_zu_bereich->bereich:teutolabs;
RELATE raumtyp:tl_06->hat_ausstattung->ausstattungstyp:typ_1_7 SET anzahl = 1;
RELATE raumtyp:tl_06->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:tl_06->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 1;
RELATE raumtyp:tl_06->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 6;
RELATE raumtyp:tl_06->hat_ausstattung->ausstattungstyp:typ_5_5 SET anzahl = 4;

-- Raumtyp: TL_07 - Physik Lab 2
UPSERT raumtyp:tl_07 SET
    code = 'TL_07',
    bezeichnung = 'Physik Lab 2';
RELATE raumtyp:tl_07->gehoert_zu_bereich->bereich:teutolabs;
RELATE raumtyp:tl_07->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:tl_07->hat_ausstattung->ausstattungstyp:typ_3_1 SET anzahl = 1;
RELATE raumtyp:tl_07->hat_ausstattung->ausstattungstyp:typ_4_1 SET anzahl = 6;
RELATE raumtyp:tl_07->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 3;
RELATE raumtyp:tl_07->hat_ausstattung->ausstattungstyp:typ_5_5 SET anzahl = 2;

-- Raumtyp: TLA_02 - Lagerraum und Vorbereitung Physik
UPSERT raumtyp:tla_02 SET
    code = 'TLA_02',
    bezeichnung = 'Lagerraum und Vorbereitung Physik';
RELATE raumtyp:tla_02->gehoert_zu_bereich->bereich:teutolabs;
RELATE raumtyp:tla_02->hat_ausstattung->ausstattungstyp:typ_2_1 SET anzahl = 1;
RELATE raumtyp:tla_02->hat_ausstattung->ausstattungstyp:typ_2_4 SET anzahl = 2;
RELATE raumtyp:tla_02->hat_ausstattung->ausstattungstyp:typ_4_3 SET anzahl = 2;

-- Raumtyp: 1.1 - Labormodul 2-Achser Syntheselabor Typ I
UPSERT raumtyp:rt_1_1 SET
    code = '1.1',
    bezeichnung = 'Labormodul 2-Achser Syntheselabor Typ I';
RELATE raumtyp:rt_1_1->gehoert_zu_bereich->bereich:chemie;

-- Raumtyp: 1.3 - Labormodul 2-Achser Syntheselabor Typ III
UPSERT raumtyp:rt_1_3 SET
    code = '1.3',
    bezeichnung = 'Labormodul 2-Achser Syntheselabor Typ III';
RELATE raumtyp:rt_1_3->gehoert_zu_bereich->bereich:chemie;

-- Raumtyp: 1.4 - Labormodul 2-Achser Biochemie Typ I
UPSERT raumtyp:rt_1_4 SET
    code = '1.4',
    bezeichnung = 'Labormodul 2-Achser Biochemie Typ I';
RELATE raumtyp:rt_1_4->gehoert_zu_bereich->bereich:chemie;

-- Raumtyp: 1.4.1 - Labormodul 2-Achser Biochemie Typ II
UPSERT raumtyp:rt_1_4_1 SET
    code = '1.4.1',
    bezeichnung = 'Labormodul 2-Achser Biochemie Typ II';
RELATE raumtyp:rt_1_4_1->gehoert_zu_bereich->bereich:chemie;

-- Raumtyp: 2.1 SYN - Geräteraummodul 1-Achser
UPSERT raumtyp:rt_2_1_syn SET
    code = '2.1 SYN',
    bezeichnung = 'Geräteraummodul 1-Achser';
RELATE raumtyp:rt_2_1_syn->gehoert_zu_bereich->bereich:chemie;

-- Raumtyp: 2.1 BC - Geräteraummodul 1-Achser
UPSERT raumtyp:rt_2_1_bc SET
    code = '2.1 BC',
    bezeichnung = 'Geräteraummodul 1-Achser';
RELATE raumtyp:rt_2_1_bc->gehoert_zu_bereich->bereich:chemie;

-- Raumtyp: 2.3 - Geräteraummodul 1-Achser halb
UPSERT raumtyp:rt_2_3 SET
    code = '2.3',
    bezeichnung = 'Geräteraummodul 1-Achser halb';
RELATE raumtyp:rt_2_3->gehoert_zu_bereich->bereich:chemie;

-- Raumtyp: 4.1.(F) - Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser
UPSERT raumtyp:rt_4_1_f SET
    code = '4.1.(F)',
    bezeichnung = 'Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser';
RELATE raumtyp:rt_4_1_f->gehoert_zu_bereich->bereich:chemie;

-- Raumtyp: 4.1.(M) - Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser
UPSERT raumtyp:rt_4_1_m SET
    code = '4.1.(M)',
    bezeichnung = 'Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser';
RELATE raumtyp:rt_4_1_m->gehoert_zu_bereich->bereich:chemie;

-- Raumtyp: 4.1.(S) - Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser
UPSERT raumtyp:rt_4_1_s SET
    code = '4.1.(S)',
    bezeichnung = 'Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser';
RELATE raumtyp:rt_4_1_s->gehoert_zu_bereich->bereich:chemie;

-- Raumtyp: 5.2 - +4-Grad-Kühlraumodul (Arbeitsraum) 1-Achser halb
UPSERT raumtyp:rt_5_2 SET
    code = '5.2',
    bezeichnung = '+4-Grad-Kühlraumodul (Arbeitsraum) 1-Achser halb';
RELATE raumtyp:rt_5_2->gehoert_zu_bereich->bereich:chemie;

-- Raumtyp: 5.2.1 - -20-Grad-Raum 1-Achser halb
UPSERT raumtyp:rt_5_2_1 SET
    code = '5.2.1',
    bezeichnung = '-20-Grad-Raum 1-Achser halb';
RELATE raumtyp:rt_5_2_1->gehoert_zu_bereich->bereich:chemie;

-- Raumtyp: 6.1 - Gefahrstofflagermodul 1-Achser halb (Stinkraum)
UPSERT raumtyp:rt_6_1 SET
    code = '6.1',
    bezeichnung = 'Gefahrstofflagermodul 1-Achser halb (Stinkraum)';
RELATE raumtyp:rt_6_1->gehoert_zu_bereich->bereich:chemie;

-- Raumtyp: 7.1 - Laborlagermodul 1-Achser halb
UPSERT raumtyp:rt_7_1 SET
    code = '7.1',
    bezeichnung = 'Laborlagermodul 1-Achser halb';
RELATE raumtyp:rt_7_1->gehoert_zu_bereich->bereich:chemie;

-- Raumtyp: 8.1.1 - Praktikumssaal PC
UPSERT raumtyp:rt_8_1_1 SET
    code = '8.1.1',
    bezeichnung = 'Praktikumssaal PC';
RELATE raumtyp:rt_8_1_1->gehoert_zu_bereich->bereich:chemie;

-- Raumtyp: 8.1.2 - Praktikumssaal BC
UPSERT raumtyp:rt_8_1_2 SET
    code = '8.1.2',
    bezeichnung = 'Praktikumssaal BC';
RELATE raumtyp:rt_8_1_2->gehoert_zu_bereich->bereich:chemie;

-- Raumtyp: 8.2 - Praktikumssaal Synthese
UPSERT raumtyp:rt_8_2 SET
    code = '8.2',
    bezeichnung = 'Praktikumssaal Synthese';
RELATE raumtyp:rt_8_2->gehoert_zu_bereich->bereich:chemie;

-- Raumtyp: 8.4 - Gefahrstofflager 2-Achser (Stinkraum)
UPSERT raumtyp:rt_8_4 SET
    code = '8.4',
    bezeichnung = 'Gefahrstofflager 2-Achser (Stinkraum)';
RELATE raumtyp:rt_8_4->gehoert_zu_bereich->bereich:chemie;

-- Raumtyp: 8.5 - Praktikumssaal allgemein
UPSERT raumtyp:rt_8_5 SET
    code = '8.5',
    bezeichnung = 'Praktikumssaal allgemein';
RELATE raumtyp:rt_8_5->gehoert_zu_bereich->bereich:chemie;

-- Raumtyp: L1.1 - Lagermodul Keller allgemein
UPSERT raumtyp:l1_1 SET
    code = 'L1.1',
    bezeichnung = 'Lagermodul Keller allgemein';
RELATE raumtyp:l1_1->gehoert_zu_bereich->bereich:chemie;

-- Raumtyp: L1.2 - Gefahrenstofflagermodul 1-Achser (Stinkraum) Keller
UPSERT raumtyp:l1_2 SET
    code = 'L1.2',
    bezeichnung = 'Gefahrenstofflagermodul 1-Achser (Stinkraum) Keller';
RELATE raumtyp:l1_2->gehoert_zu_bereich->bereich:chemie;

-- Raumtyp: 9.1 - Kompensation Biologie Gerätelabor
UPSERT raumtyp:rt_9_1 SET
    code = '9.1',
    bezeichnung = 'Kompensation Biologie Gerätelabor';
RELATE raumtyp:rt_9_1->gehoert_zu_bereich->bereich:biologie;

-- ############################################################
-- PLATZHALTER-RAUMTYPEN (aus 07.xlsx, nicht in 06.xlsx definiert)
-- ############################################################


-- Platzhalter-Raumtyp: 4.1
UPSERT raumtyp:rt_4_1 SET
    code = '4.1',
    bezeichnung = '4.1';

-- Platzhalter-Raumtyp: B1
UPSERT raumtyp:b1 SET
    code = 'B1',
    bezeichnung = 'B1';

-- Platzhalter-Raumtyp: B2
UPSERT raumtyp:b2 SET
    code = 'B2',
    bezeichnung = 'B2';

-- Platzhalter-Raumtyp: B3
UPSERT raumtyp:b3 SET
    code = 'B3',
    bezeichnung = 'B3';

-- Platzhalter-Raumtyp: B5
UPSERT raumtyp:b5 SET
    code = 'B5',
    bezeichnung = 'B5';

-- Platzhalter-Raumtyp: BSP_01
UPSERT raumtyp:bsp_01 SET
    code = 'BSP_01',
    bezeichnung = 'BSP_01';

-- Platzhalter-Raumtyp: Büro_01
UPSERT raumtyp:bro_01 SET
    code = 'Büro_01',
    bezeichnung = 'Büro_01';

-- Platzhalter-Raumtyp: Büro_02
UPSERT raumtyp:bro_02 SET
    code = 'Büro_02',
    bezeichnung = 'Büro_02';

-- Platzhalter-Raumtyp: Cafe
UPSERT raumtyp:cafe SET
    code = 'Cafe',
    bezeichnung = 'Cafe';

-- Platzhalter-Raumtyp: FN.12
UPSERT raumtyp:fn_12 SET
    code = 'FN.12',
    bezeichnung = 'FN.12';

-- Platzhalter-Raumtyp: FN.6.1
UPSERT raumtyp:fn_6_1 SET
    code = 'FN.6.1',
    bezeichnung = 'FN.6.1';

-- Platzhalter-Raumtyp: GROK
UPSERT raumtyp:grok SET
    code = 'GROK',
    bezeichnung = 'GROK';

-- Platzhalter-Raumtyp: GWH_10
UPSERT raumtyp:gwh_10 SET
    code = 'GWH_10',
    bezeichnung = 'GWH_10';

-- Platzhalter-Raumtyp: LMKR
UPSERT raumtyp:lmkr SET
    code = 'LMKR',
    bezeichnung = 'LMKR';

-- Platzhalter-Raumtyp: N.3.1
UPSERT raumtyp:n_3_1 SET
    code = 'N.3.1',
    bezeichnung = 'N.3.1';

-- Platzhalter-Raumtyp: N.3.2
UPSERT raumtyp:n_3_2 SET
    code = 'N.3.2',
    bezeichnung = 'N.3.2';

-- Platzhalter-Raumtyp: N.5
UPSERT raumtyp:n_5 SET
    code = 'N.5',
    bezeichnung = 'N.5';

-- Platzhalter-Raumtyp: N.6
UPSERT raumtyp:n_6 SET
    code = 'N.6',
    bezeichnung = 'N.6';

-- Platzhalter-Raumtyp: Speise
UPSERT raumtyp:speise SET
    code = 'Speise',
    bezeichnung = 'Speise';

-- Platzhalter-Raumtyp: T.1
UPSERT raumtyp:t_1 SET
    code = 'T.1',
    bezeichnung = 'T.1';

-- Platzhalter-Raumtyp: TL_03
UPSERT raumtyp:tl_03 SET
    code = 'TL_03',
    bezeichnung = 'TL_03';

-- Platzhalter-Raumtyp: UB_01
UPSERT raumtyp:ub_01 SET
    code = 'UB_01',
    bezeichnung = 'UB_01';

-- Platzhalter-Raumtyp: UB_02
UPSERT raumtyp:ub_02 SET
    code = 'UB_02',
    bezeichnung = 'UB_02';

-- Platzhalter-Raumtyp: UB_03
UPSERT raumtyp:ub_03 SET
    code = 'UB_03',
    bezeichnung = 'UB_03';

-- Platzhalter-Raumtyp: UB_04
UPSERT raumtyp:ub_04 SET
    code = 'UB_04',
    bezeichnung = 'UB_04';

-- Platzhalter-Raumtyp: UB_05
UPSERT raumtyp:ub_05 SET
    code = 'UB_05',
    bezeichnung = 'UB_05';

-- Platzhalter-Raumtyp: UB_06
UPSERT raumtyp:ub_06 SET
    code = 'UB_06',
    bezeichnung = 'UB_06';

-- Platzhalter-Raumtyp: UB_07
UPSERT raumtyp:ub_07 SET
    code = 'UB_07',
    bezeichnung = 'UB_07';

-- Platzhalter-Raumtyp: UB_08
UPSERT raumtyp:ub_08 SET
    code = 'UB_08',
    bezeichnung = 'UB_08';

-- Platzhalter-Raumtyp: UB_09
UPSERT raumtyp:ub_09 SET
    code = 'UB_09',
    bezeichnung = 'UB_09';

-- Platzhalter-Raumtyp: UB_10
UPSERT raumtyp:ub_10 SET
    code = 'UB_10',
    bezeichnung = 'UB_10';

-- Platzhalter-Raumtyp: UB_11
UPSERT raumtyp:ub_11 SET
    code = 'UB_11',
    bezeichnung = 'UB_11';

-- Platzhalter-Raumtyp: UB_12
UPSERT raumtyp:ub_12 SET
    code = 'UB_12',
    bezeichnung = 'UB_12';

-- Platzhalter-Raumtyp: UB_13
UPSERT raumtyp:ub_13 SET
    code = 'UB_13',
    bezeichnung = 'UB_13';

-- Platzhalter-Raumtyp: UB_14
UPSERT raumtyp:ub_14 SET
    code = 'UB_14',
    bezeichnung = 'UB_14';

-- Platzhalter-Raumtyp: UB_15
UPSERT raumtyp:ub_15 SET
    code = 'UB_15',
    bezeichnung = 'UB_15';

-- Platzhalter-Raumtyp: UB_16
UPSERT raumtyp:ub_16 SET
    code = 'UB_16',
    bezeichnung = 'UB_16';

-- Platzhalter-Raumtyp: UB_19
UPSERT raumtyp:ub_19 SET
    code = 'UB_19',
    bezeichnung = 'UB_19';

-- Platzhalter-Raumtyp: UB_20
UPSERT raumtyp:ub_20 SET
    code = 'UB_20',
    bezeichnung = 'UB_20';

-- Platzhalter-Raumtyp: UB_21
UPSERT raumtyp:ub_21 SET
    code = 'UB_21',
    bezeichnung = 'UB_21';

-- Platzhalter-Raumtyp: VBW_13
UPSERT raumtyp:vbw_13 SET
    code = 'VBW_13',
    bezeichnung = 'VBW_13';

-- Platzhalter-Raumtyp: VBW_15
UPSERT raumtyp:vbw_15 SET
    code = 'VBW_15',
    bezeichnung = 'VBW_15';

-- Platzhalter-Raumtyp: VBW_16
UPSERT raumtyp:vbw_16 SET
    code = 'VBW_16',
    bezeichnung = 'VBW_16';

-- Platzhalter-Raumtyp: VKR
UPSERT raumtyp:vkr SET
    code = 'VKR',
    bezeichnung = 'VKR';

-- Platzhalter-Raumtyp: WSR
UPSERT raumtyp:wsr SET
    code = 'WSR',
    bezeichnung = 'WSR';

-- Platzhalter-Raumtyp: Wphy_14
UPSERT raumtyp:wphy_14 SET
    code = 'Wphy_14',
    bezeichnung = 'Wphy_14';

-- Platzhalter-Raumtyp: Wphy_16
UPSERT raumtyp:wphy_16 SET
    code = 'Wphy_16',
    bezeichnung = 'Wphy_16';

-- Platzhalter-Raumtyp: ZL_HS
UPSERT raumtyp:zl_hs SET
    code = 'ZL_HS',
    bezeichnung = 'ZL_HS';

-- Platzhalter-Raumtyp: ZL_Hsflex
UPSERT raumtyp:zl_hsflex SET
    code = 'ZL_Hsflex',
    bezeichnung = 'ZL_Hsflex';

-- Platzhalter-Raumtyp: ZL_SEM01
UPSERT raumtyp:zl_sem01 SET
    code = 'ZL_SEM01',
    bezeichnung = 'ZL_SEM01';

-- Platzhalter-Raumtyp: ZL_studLF
UPSERT raumtyp:zl_studlf SET
    code = 'ZL_studLF',
    bezeichnung = 'ZL_studLF';

-- ############################################################
-- TEILPROJEKTE
-- ############################################################

UPSERT teilprojekt:biologie_didaktik SET code = 'BIOLOGIE_DIDAKTIK', name = 'Biologie Didaktik';
UPSERT teilprojekt:biologie_forschung SET code = 'BIOLOGIE_FORSCHUNG', name = 'Biologie Forschung';
UPSERT teilprojekt:biologie_gewchshaus SET code = 'BIOLOGIE_GEWCHSHAUS', name = 'Biologie Gewächshaus';
UPSERT teilprojekt:biologie_praktika SET code = 'BIOLOGIE_PRAKTIKA', name = 'Biologie Praktika';
UPSERT teilprojekt:biologie_sonderlabore SET code = 'BIOLOGIE_SONDERLABORE', name = 'Biologie Sonderlabore';
UPSERT teilprojekt:biologie_tierhaltung SET code = 'BIOLOGIE_TIERHALTUNG', name = 'Biologie Tierhaltung';
UPSERT teilprojekt:chemie SET code = 'CHEMIE', name = 'Chemie';
UPSERT teilprojekt:nicht_beauftragt SET code = 'NICHT_BEAUFTRAGT', name = 'nicht beauftragt';
UPSERT teilprojekt:physik_forschung SET code = 'PHYSIK_FORSCHUNG', name = 'Physik Forschung';
UPSERT teilprojekt:physik_praktikum_didaktik SET code = 'PHYSIK_PRAKTIKUM_DIDAKTIK', name = 'Physik Praktikum/Didaktik';
UPSERT teilprojekt:psychologie SET code = 'PSYCHOLOGIE', name = 'Psychologie';
UPSERT teilprojekt:sachunterricht SET code = 'SACHUNTERRICHT', name = 'Sachunterricht';
UPSERT teilprojekt:spezialisten_tierhaltung SET code = 'SPEZIALISTEN_TIERHALTUNG', name = 'Spezialisten Tierhaltung';
UPSERT teilprojekt:teutolabs SET code = 'TEUTOLABS', name = 'Teutolabs';
UPSERT teilprojekt:verbundwerkstatt SET code = 'VERBUNDWERKSTATT', name = 'Verbundwerkstatt';
UPSERT teilprojekt:werkstatt_physik SET code = 'WERKSTATT_PHYSIK', name = 'Werkstatt Physik';
UPSERT teilprojekt:zoologische_sammlung SET code = 'ZOOLOGISCHE_SAMMLUNG', name = 'Zoologische Sammlung';

-- ############################################################
-- FUNKTIONSBEREICHE
-- ############################################################

UPSERT funktionsbereich:astronomie SET code = 'ASTRONOMIE', name = 'Astronomie';
UPSERT funktionsbereich:biologie_lab_1 SET code = 'BIOLOGIE_LAB_1', name = 'Biologie Lab 1';
UPSERT funktionsbereich:bro SET code = 'BRO', name = 'Büro';
UPSERT funktionsbereich:brobereich SET code = 'BROBEREICH', name = 'Bürobereich';
UPSERT funktionsbereich:chemielab_2 SET code = 'CHEMIELAB_2', name = 'Chemielab 2';
UPSERT funktionsbereich:chemielab_3 SET code = 'CHEMIELAB_3', name = 'Chemielab 3';
UPSERT funktionsbereich:cluster_1 SET code = 'CLUSTER_1', name = 'Cluster 1';
UPSERT funktionsbereich:cluster_2 SET code = 'CLUSTER_2', name = 'Cluster 2';
UPSERT funktionsbereich:cluster_3 SET code = 'CLUSTER_3', name = 'Cluster 3';
UPSERT funktionsbereich:cluster_4 SET code = 'CLUSTER_4', name = 'Cluster 4';
UPSERT funktionsbereich:cluster_5 SET code = 'CLUSTER_5', name = 'Cluster 5';
UPSERT funktionsbereich:cluster_6 SET code = 'CLUSTER_6', name = 'Cluster 6';
UPSERT funktionsbereich:cluster_biomolekulare_photonik SET code = 'CLUSTER_BIOMOLEKULARE_PHOTONIK', name = 'Cluster Biomolekulare Photonik';
UPSERT funktionsbereich:cluster_dnne_schichten__physik_der_nanostrukturen SET code = 'CLUSTER_DNNE_SCHICHTEN__PHYSIK_DER_NANOSTRUKTUREN', name = 'Cluster Dünne Schichten & Physik der Nanostrukturen';
UPSERT funktionsbereich:cluster_experimentelle_biophysik SET code = 'CLUSTER_EXPERIMENTELLE_BIOPHYSIK', name = 'Cluster Experimentelle Biophysik';
UPSERT funktionsbereich:cluster_hochenergie___astroteilchen SET code = 'CLUSTER_HOCHENERGIE___ASTROTEILCHEN', name = 'Cluster Hochenergie / Astroteilchen';
UPSERT funktionsbereich:cluster_kondensierte_materie_und_mathematische_physik SET code = 'CLUSTER_KONDENSIERTE_MATERIE_UND_MATHEMATISCHE_PHYSIK', name = 'Cluster Kondensierte Materie und Mathematische Physik';
UPSERT funktionsbereich:cluster_physik_supramolekularer_systeme_und_oberflchen SET code = 'CLUSTER_PHYSIK_SUPRAMOLEKULARER_SYSTEME_UND_OBERFLCHEN', name = 'Cluster Physik supramolekularer Systeme und Oberflächen';
UPSERT funktionsbereich:cluster_ultrafast_science SET code = 'CLUSTER_ULTRAFAST_SCIENCE', name = 'Cluster Ultrafast Science';
UPSERT funktionsbereich:colearning_space SET code = 'COLEARNING_SPACE', name = 'Colearning Space';
UPSERT funktionsbereich:datenverarbeitung_physik SET code = 'DATENVERARBEITUNG_PHYSIK', name = 'Datenverarbeitung Physik';
UPSERT funktionsbereich:dekanat SET code = 'DEKANAT', name = 'Dekanat';
UPSERT funktionsbereich:didaktik SET code = 'DIDAKTIK', name = 'Didaktik';
UPSERT funktionsbereich:dm_allgemein SET code = 'DM_ALLGEMEIN', name = 'DM Allgemein';
UPSERT funktionsbereich:elektronikwerkstatt SET code = 'ELEKTRONIKWERKSTATT', name = 'Elektronikwerkstatt';
UPSERT funktionsbereich:experimentalphysik SET code = 'EXPERIMENTALPHYSIK', name = 'Experimentalphysik';
UPSERT funktionsbereich:fachschaft SET code = 'FACHSCHAFT', name = 'Fachschaft';
UPSERT funktionsbereich:fachschaften SET code = 'FACHSCHAFTEN', name = 'Fachschaften';
UPSERT funktionsbereich:fakultt SET code = 'FAKULTT', name = 'Fakultät';
UPSERT funktionsbereich:fakulttsverwaltung SET code = 'FAKULTTSVERWALTUNG', name = 'Fakultätsverwaltung';
UPSERT funktionsbereich:forschung_s1 SET code = 'FORSCHUNG_S1', name = 'Forschung S1';
UPSERT funktionsbereich:forschungslabore SET code = 'FORSCHUNGSLABORE', name = 'Forschungslabore';
UPSERT funktionsbereich:gewchshuser_geteilte_nutzung SET code = 'GEWCHSHUSER_GETEILTE_NUTZUNG', name = 'Gewächshäuser (geteilte Nutzung)';
UPSERT funktionsbereich:isotopenlabor SET code = 'ISOTOPENLABOR', name = 'Isotopenlabor';
UPSERT funktionsbereich:klimakammer SET code = 'KLIMAKAMMER', name = 'Klimakammer';
UPSERT funktionsbereich:labor_1 SET code = 'LABOR_1', name = 'Labor 1';
UPSERT funktionsbereich:labor_lager SET code = 'LABOR_LAGER', name = 'Labor/Lager';
UPSERT funktionsbereich:laborbereich_psychologie SET code = 'LABORBEREICH_PSYCHOLOGIE', name = 'Laborbereich Psychologie';
UPSERT funktionsbereich:lagerraum_und_vorbereitung SET code = 'LAGERRAUM_UND_VORBEREITUNG', name = 'Lagerraum und Vorbereitung';
UPSERT funktionsbereich:lehrbereich SET code = 'LEHRBEREICH', name = 'Lehrbereich';
UPSERT funktionsbereich:mechanische_werkstatt SET code = 'MECHANISCHE_WERKSTATT', name = 'Mechanische Werkstatt';
UPSERT funktionsbereich:medien SET code = 'MEDIEN', name = 'Medien';
UPSERT funktionsbereich:nutzer SET code = 'NUTZER', name = 'Nutzer';
UPSERT funktionsbereich:pdagogisch_psychologische_beratungsstelle SET code = 'PDAGOGISCH_PSYCHOLOGISCHE_BERATUNGSSTELLE', name = 'Pädagogisch-Psychologische Beratungsstelle';
UPSERT funktionsbereich:personal SET code = 'PERSONAL', name = 'Personal';
UPSERT funktionsbereich:physik_lab_2 SET code = 'PHYSIK_LAB_2', name = 'Physik Lab 2';
UPSERT funktionsbereich:physik_lab_3 SET code = 'PHYSIK_LAB_3', name = 'Physik Lab 3';
UPSERT funktionsbereich:praktikum SET code = 'PRAKTIKUM', name = 'Praktikum';
UPSERT funktionsbereich:robotik_lab_1 SET code = 'ROBOTIK_LAB_1', name = 'Robotik Lab 1';
UPSERT funktionsbereich:sammlung SET code = 'SAMMLUNG', name = 'Sammlung';
UPSERT funktionsbereich:sammlungsrume SET code = 'SAMMLUNGSRUME', name = 'Sammlungsräume';
UPSERT funktionsbereich:spezialisten_tierhaltung SET code = 'SPEZIALISTEN_TIERHALTUNG', name = 'Spezialisten Tierhaltung';
UPSERT funktionsbereich:sport_lab_1___medizin_lab_1 SET code = 'SPORT_LAB_1___MEDIZIN_LAB_1', name = 'Sport Lab 1 / Medizin Lab 1';
UPSERT funktionsbereich:teutolabs SET code = 'TEUTOLABS', name = 'Teutolabs';
UPSERT funktionsbereich:theoretische_physik SET code = 'THEORETISCHE_PHYSIK', name = 'Theoretische Physik';
UPSERT funktionsbereich:tierhaltung SET code = 'TIERHALTUNG', name = 'Tierhaltung';
UPSERT funktionsbereich:verbundwerkstatt SET code = 'VERBUNDWERKSTATT', name = 'Verbundwerkstatt';
UPSERT funktionsbereich:verbundwerkstatt_elt SET code = 'VERBUNDWERKSTATT_ELT', name = 'Verbundwerkstatt ELT';
UPSERT funktionsbereich:verbundwerkstatt_gemeinsam SET code = 'VERBUNDWERKSTATT_GEMEINSAM', name = 'Verbundwerkstatt gemeinsam';
UPSERT funktionsbereich:werkstatt_gemeinsame_nutzung SET code = 'WERKSTATT_GEMEINSAME_NUTZUNG', name = 'Werkstatt gemeinsame Nutzung';
UPSERT funktionsbereich:zentrale_versorgung SET code = 'ZENTRALE_VERSORGUNG', name = 'zentrale Versorgung';
UPSERT funktionsbereich:zl SET code = 'ZL', name = 'ZL';
UPSERT funktionsbereich:zone_1 SET code = 'ZONE_1', name = 'Zone 1';
UPSERT funktionsbereich:zone_2 SET code = 'ZONE_2', name = 'Zone 2';

-- ############################################################
-- NUTZER
-- ############################################################

UPSERT nutzer:fakultt_chemie SET code = 'FAKULTT_CHEMIE', name = 'Fakultät Chemie', ebene = 1;
UPSERT nutzer:fakultt_fr_biologie SET code = 'FAKULTT_FR_BIOLOGIE', name = 'Fakultät für Biologie', ebene = 1;
UPSERT nutzer:fakultt_fr_physik SET code = 'FAKULTT_FR_PHYSIK', name = 'Fakultät für Physik', ebene = 1;
UPSERT nutzer:fakultt_fr_psychologie_und_sportwissenschaft SET code = 'FAKULTT_FR_PSYCHOLOGIE_UND_SPORTWISSENSCHAFT', name = 'Fakultät für Psychologie und Sportwissenschaft', ebene = 1;
UPSERT nutzer:sachunterricht SET code = 'SACHUNTERRICHT', name = 'Sachunterricht', ebene = 1;
UPSERT nutzer:teutolabs SET code = 'TEUTOLABS', name = 'Teutolabs', ebene = 1;
UPSERT nutzer:universittsbibliothek SET code = 'UNIVERSITTSBIBLIOTHEK', name = 'Universitätsbibliothek', ebene = 1;
UPSERT nutzer:zentrale_lehre SET code = 'ZENTRALE_LEHRE', name = 'Zentrale Lehre', ebene = 1;
UPSERT nutzer:zentrale_versorgung SET code = 'ZENTRALE_VERSORGUNG', name = 'zentrale Versorgung', ebene = 1;

-- ############################################################
-- RÄUME (aus 07.xlsx - Raumprogramm 3.BA)
-- Alle Verknüpfungen werden als RELATE erstellt
-- ############################################################


-- Raum 1: Kühlraum
UPSERT raum:1 SET
    nummer = 1,
    bezeichnung = 'Kühlraum',
    teil_der_beauftragung = true,
    nc5_code = '43311',
    nc5_bezeichnung = 'Kühlraum für wissenschaftliche Zwecke (nur Kühlung)',
    flaeche_nuf_1_6 = 7.2,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:1->ist_raumtyp->raumtyp:fn_4_4_1;
RELATE raum:1->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:1->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:1->hat_verortung->verortung:neubau;
RELATE raum:1->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 2: Kühlraum
UPSERT raum:2 SET
    nummer = 2,
    bezeichnung = 'Kühlraum',
    teil_der_beauftragung = true,
    nc5_code = '43311',
    nc5_bezeichnung = 'Kühlraum für wissenschaftliche Zwecke (nur Kühlung)',
    flaeche_nuf_1_6 = 7.2,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:2->ist_raumtyp->raumtyp:fn_4_4_1;
RELATE raum:2->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:2->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:2->hat_verortung->verortung:neubau;
RELATE raum:2->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 3: Kühlraum
UPSERT raum:3 SET
    nummer = 3,
    bezeichnung = 'Kühlraum',
    teil_der_beauftragung = true,
    nc5_code = '43311',
    nc5_bezeichnung = 'Kühlraum für wissenschaftliche Zwecke (nur Kühlung)',
    flaeche_nuf_1_6 = 7.2,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:3->ist_raumtyp->raumtyp:fn_4_4_1;
RELATE raum:3->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:3->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:3->hat_verortung->verortung:neubau;
RELATE raum:3->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 4: Geräteraum 01 klein
UPSERT raum:4 SET
    nummer = 4,
    bezeichnung = 'Geräteraum 01 klein',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 10.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:4->ist_raumtyp->raumtyp:fn_4_2;
RELATE raum:4->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:4->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:4->hat_verortung->verortung:neubau;
RELATE raum:4->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 5: Geräteraum 01 klein
UPSERT raum:5 SET
    nummer = 5,
    bezeichnung = 'Geräteraum 01 klein',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 10.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:5->ist_raumtyp->raumtyp:fn_4_2;
RELATE raum:5->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:5->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:5->hat_verortung->verortung:neubau;
RELATE raum:5->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 6: Geräteraum 01 klein
UPSERT raum:6 SET
    nummer = 6,
    bezeichnung = 'Geräteraum 01 klein',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 10.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:6->ist_raumtyp->raumtyp:fn_4_2;
RELATE raum:6->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:6->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:6->hat_verortung->verortung:neubau;
RELATE raum:6->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 7: Geräteraum 01 klein
UPSERT raum:7 SET
    nummer = 7,
    bezeichnung = 'Geräteraum 01 klein',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 10.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:7->ist_raumtyp->raumtyp:fn_4_2;
RELATE raum:7->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:7->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:7->hat_verortung->verortung:neubau;
RELATE raum:7->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 8: Geräteraum 01 klein
UPSERT raum:8 SET
    nummer = 8,
    bezeichnung = 'Geräteraum 01 klein',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 10.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:8->ist_raumtyp->raumtyp:fn_4_2;
RELATE raum:8->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:8->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:8->hat_verortung->verortung:neubau;
RELATE raum:8->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 9: Geräteraum 01 klein
UPSERT raum:9 SET
    nummer = 9,
    bezeichnung = 'Geräteraum 01 klein',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 10.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:9->ist_raumtyp->raumtyp:fn_4_2;
RELATE raum:9->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:9->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:9->hat_verortung->verortung:neubau;
RELATE raum:9->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 10: Geräteraum 01 klein
UPSERT raum:10 SET
    nummer = 10,
    bezeichnung = 'Geräteraum 01 klein',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 10.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:10->ist_raumtyp->raumtyp:fn_4_2;
RELATE raum:10->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:10->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:10->hat_verortung->verortung:neubau;
RELATE raum:10->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 11: Geräteraum 01 klein
UPSERT raum:11 SET
    nummer = 11,
    bezeichnung = 'Geräteraum 01 klein',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 10.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:11->ist_raumtyp->raumtyp:fn_4_2;
RELATE raum:11->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:11->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:11->hat_verortung->verortung:neubau;
RELATE raum:11->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 12: Geräteraum 01 klein
UPSERT raum:12 SET
    nummer = 12,
    bezeichnung = 'Geräteraum 01 klein',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 10.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:12->ist_raumtyp->raumtyp:fn_4_2;
RELATE raum:12->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:12->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:12->hat_verortung->verortung:neubau;
RELATE raum:12->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 13: Geräteraum 01 klein
UPSERT raum:13 SET
    nummer = 13,
    bezeichnung = 'Geräteraum 01 klein',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 10.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:13->ist_raumtyp->raumtyp:fn_4_2;
RELATE raum:13->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:13->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:13->hat_verortung->verortung:neubau;
RELATE raum:13->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 14: Geräteraum 01 klein
UPSERT raum:14 SET
    nummer = 14,
    bezeichnung = 'Geräteraum 01 klein',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 10.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:14->ist_raumtyp->raumtyp:fn_4_2;
RELATE raum:14->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:14->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:14->hat_verortung->verortung:neubau;
RELATE raum:14->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 15: Geräteraum 01 klein
UPSERT raum:15 SET
    nummer = 15,
    bezeichnung = 'Geräteraum 01 klein',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 10.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:15->ist_raumtyp->raumtyp:fn_4_2;
RELATE raum:15->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:15->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:15->hat_verortung->verortung:neubau;
RELATE raum:15->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 16: Geräteraum 01 klein
UPSERT raum:16 SET
    nummer = 16,
    bezeichnung = 'Geräteraum 01 klein',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 10.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:16->ist_raumtyp->raumtyp:fn_4_2;
RELATE raum:16->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:16->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:16->hat_verortung->verortung:neubau;
RELATE raum:16->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 17: Geräteraum 01 klein
UPSERT raum:17 SET
    nummer = 17,
    bezeichnung = 'Geräteraum 01 klein',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 10.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:17->ist_raumtyp->raumtyp:fn_4_2;
RELATE raum:17->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:17->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:17->hat_verortung->verortung:neubau;
RELATE raum:17->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 18: Geräteraum 01 klein
UPSERT raum:18 SET
    nummer = 18,
    bezeichnung = 'Geräteraum 01 klein',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 10.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:18->ist_raumtyp->raumtyp:fn_4_2;
RELATE raum:18->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:18->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:18->hat_verortung->verortung:neubau;
RELATE raum:18->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 19: Geräteraum 01 klein
UPSERT raum:19 SET
    nummer = 19,
    bezeichnung = 'Geräteraum 01 klein',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 10.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:19->ist_raumtyp->raumtyp:fn_4_2;
RELATE raum:19->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:19->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:19->hat_verortung->verortung:neubau;
RELATE raum:19->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 20: Spülküche S1/S2
UPSERT raum:20 SET
    nummer = 20,
    bezeichnung = 'Spülküche S1/S2',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:20->ist_raumtyp->raumtyp:fn_1_2;
RELATE raum:20->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:20->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:20->hat_verortung->verortung:neubau;
RELATE raum:20->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 21: Spülküche S1/S2
UPSERT raum:21 SET
    nummer = 21,
    bezeichnung = 'Spülküche S1/S2',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:21->ist_raumtyp->raumtyp:fn_1_2;
RELATE raum:21->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:21->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:21->hat_verortung->verortung:neubau;
RELATE raum:21->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 22: Messraum Typ  Dunkelraum
UPSERT raum:22 SET
    nummer = 22,
    bezeichnung = 'Messraum Typ  Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '34213',
    nc5_bezeichnung = 'Physiklabor mit besonderen RLT Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:22->ist_raumtyp->raumtyp:f_7_5;
RELATE raum:22->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:22->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:22->hat_verortung->verortung:neubau;
RELATE raum:22->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 23: Nasslabor 2 groß
UPSERT raum:23 SET
    nummer = 23,
    bezeichnung = 'Nasslabor 2 groß',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 43.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:23->ist_raumtyp->raumtyp:f_2_2_1;
RELATE raum:23->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:23->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:23->hat_verortung->verortung:neubau;
RELATE raum:23->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 24: Nasslabor 2 groß
UPSERT raum:24 SET
    nummer = 24,
    bezeichnung = 'Nasslabor 2 groß',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 43.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:24->ist_raumtyp->raumtyp:f_2_2_1;
RELATE raum:24->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:24->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:24->hat_verortung->verortung:neubau;
RELATE raum:24->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 25: Nasslabor 2
UPSERT raum:25 SET
    nummer = 25,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:25->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:25->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:25->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:25->hat_verortung->verortung:neubau;
RELATE raum:25->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 26: Nasslabor 2
UPSERT raum:26 SET
    nummer = 26,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:26->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:26->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:26->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:26->hat_verortung->verortung:neubau;
RELATE raum:26->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 27: Nasslabor 2
UPSERT raum:27 SET
    nummer = 27,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:27->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:27->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:27->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:27->hat_verortung->verortung:neubau;
RELATE raum:27->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 28: Nasslabor 2
UPSERT raum:28 SET
    nummer = 28,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:28->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:28->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:28->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:28->hat_verortung->verortung:neubau;
RELATE raum:28->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 29: Nasslabor 2
UPSERT raum:29 SET
    nummer = 29,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:29->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:29->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:29->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:29->hat_verortung->verortung:neubau;
RELATE raum:29->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 30: Nasslabor 2
UPSERT raum:30 SET
    nummer = 30,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:30->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:30->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:30->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:30->hat_verortung->verortung:neubau;
RELATE raum:30->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 31: Nasslabor 2
UPSERT raum:31 SET
    nummer = 31,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:31->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:31->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:31->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:31->hat_verortung->verortung:neubau;
RELATE raum:31->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 32: Nasslabor 2
UPSERT raum:32 SET
    nummer = 32,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:32->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:32->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:32->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:32->hat_verortung->verortung:neubau;
RELATE raum:32->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 33: Nasslabor 2
UPSERT raum:33 SET
    nummer = 33,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:33->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:33->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:33->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:33->hat_verortung->verortung:neubau;
RELATE raum:33->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 34: Nasslabor 2
UPSERT raum:34 SET
    nummer = 34,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:34->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:34->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:34->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:34->hat_verortung->verortung:neubau;
RELATE raum:34->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 35: Nasslabor 2
UPSERT raum:35 SET
    nummer = 35,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:35->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:35->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:35->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:35->hat_verortung->verortung:neubau;
RELATE raum:35->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 36: Nasslabor 2
UPSERT raum:36 SET
    nummer = 36,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:36->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:36->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:36->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:36->hat_verortung->verortung:neubau;
RELATE raum:36->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 37: Nasslabor 2
UPSERT raum:37 SET
    nummer = 37,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:37->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:37->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:37->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:37->hat_verortung->verortung:neubau;
RELATE raum:37->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 38: Nasslabor 2
UPSERT raum:38 SET
    nummer = 38,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:38->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:38->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:38->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:38->hat_verortung->verortung:neubau;
RELATE raum:38->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 39: Nasslabor 2
UPSERT raum:39 SET
    nummer = 39,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:39->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:39->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:39->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:39->hat_verortung->verortung:neubau;
RELATE raum:39->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 40: Nasslabor 2
UPSERT raum:40 SET
    nummer = 40,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:40->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:40->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:40->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:40->hat_verortung->verortung:neubau;
RELATE raum:40->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 41: Nasslabor 2
UPSERT raum:41 SET
    nummer = 41,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:41->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:41->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:41->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:41->hat_verortung->verortung:neubau;
RELATE raum:41->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 42: Nasslabor 2
UPSERT raum:42 SET
    nummer = 42,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:42->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:42->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:42->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:42->hat_verortung->verortung:neubau;
RELATE raum:42->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 43: Nasslabor 2
UPSERT raum:43 SET
    nummer = 43,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:43->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:43->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:43->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:43->hat_verortung->verortung:neubau;
RELATE raum:43->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 44: Nasslabor 2
UPSERT raum:44 SET
    nummer = 44,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:44->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:44->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:44->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:44->hat_verortung->verortung:neubau;
RELATE raum:44->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 45: Nasslabor 2
UPSERT raum:45 SET
    nummer = 45,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:45->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:45->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:45->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:45->hat_verortung->verortung:neubau;
RELATE raum:45->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 46: Psychophysik Dunkelraum
UPSERT raum:46 SET
    nummer = 46,
    bezeichnung = 'Psychophysik Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '34212',
    nc5_bezeichnung = 'Physiklabor mit bes. Anforderungen',
    flaeche_nuf_1_6 = 28.28,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:46->ist_raumtyp->raumtyp:f_6_2;
RELATE raum:46->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:46->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:46->hat_verortung->verortung:neubau;
RELATE raum:46->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 47: Lager Groß
UPSERT raum:47 SET
    nummer = 47,
    bezeichnung = 'Lager Groß',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 69.12,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:47->ist_raumtyp->raumtyp:fn_9;
RELATE raum:47->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:47->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:47->hat_verortung->verortung:neubau;
RELATE raum:47->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 48: Kühlraum
UPSERT raum:48 SET
    nummer = 48,
    bezeichnung = 'Kühlraum',
    teil_der_beauftragung = true,
    nc5_code = '43311',
    nc5_bezeichnung = 'Kühlraum für wissenschaftliche Zwecke (nur Kühlung)',
    flaeche_nuf_1_6 = 7.2,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:48->ist_raumtyp->raumtyp:fn_4_4_1;
RELATE raum:48->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:48->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:48->hat_verortung->verortung:neubau;
RELATE raum:48->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 49: Mikroskopieraum klein
UPSERT raum:49 SET
    nummer = 49,
    bezeichnung = 'Mikroskopieraum klein',
    teil_der_beauftragung = true,
    nc5_code = '34213',
    nc5_bezeichnung = 'Physiklabor mit besonderen RLT Anforderungen',
    flaeche_nuf_1_6 = 10.2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:49->ist_raumtyp->raumtyp:fn_2_2_1;
RELATE raum:49->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:49->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:49->hat_verortung->verortung:neubau;
RELATE raum:49->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 50: Spülraum
UPSERT raum:50 SET
    nummer = 50,
    bezeichnung = 'Spülraum',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:50->ist_raumtyp->raumtyp:fn_1_2_1;
RELATE raum:50->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:50->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:50->hat_verortung->verortung:neubau;
RELATE raum:50->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 51: Zellkultur
UPSERT raum:51 SET
    nummer = 51,
    bezeichnung = 'Zellkultur',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:51->ist_raumtyp->raumtyp:f_3_2;
RELATE raum:51->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:51->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:51->hat_verortung->verortung:neubau;
RELATE raum:51->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 52: Gasflaschenlager
UPSERT raum:52 SET
    nummer = 52,
    bezeichnung = 'Gasflaschenlager',
    teil_der_beauftragung = true,
    nc5_code = '72413',
    nc5_bezeichnung = 'Versorgungsraum Gase',
    flaeche_nuf_7_9 = 18.6,
    anzahl_raeume = 1,
    din277 = 'NUF7';
RELATE raum:52->ist_raumtyp->raumtyp:fn_6_1;
RELATE raum:52->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:52->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:52->hat_verortung->verortung:neubau;
RELATE raum:52->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 53: Sterilbankraum
UPSERT raum:53 SET
    nummer = 53,
    bezeichnung = 'Sterilbankraum',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 10.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:53->ist_raumtyp->raumtyp:fn_4_2_1;
RELATE raum:53->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:53->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:53->hat_verortung->verortung:neubau;
RELATE raum:53->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 54: Vorbereitungsraum mit ABZ Dunkelraum
UPSERT raum:54 SET
    nummer = 54,
    bezeichnung = 'Vorbereitungsraum mit ABZ Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '37311',
    nc5_bezeichnung = 'Gewächshausraum S1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:54->ist_raumtyp->raumtyp:fn_3_1_1;
RELATE raum:54->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:54->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:54->hat_verortung->verortung:neubau;
RELATE raum:54->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 55: Vorbereitungsraum
UPSERT raum:55 SET
    nummer = 55,
    bezeichnung = 'Vorbereitungsraum',
    teil_der_beauftragung = true,
    nc5_code = '37311',
    nc5_bezeichnung = 'Gewächshausraum S1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:55->ist_raumtyp->raumtyp:fn_3_2;
RELATE raum:55->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:55->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:55->hat_verortung->verortung:neubau;
RELATE raum:55->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 56: Vorbereitungsraum Großpraktika Dunkelraum
UPSERT raum:56 SET
    nummer = 56,
    bezeichnung = 'Vorbereitungsraum Großpraktika Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '37311',
    nc5_bezeichnung = 'Gewächshausraum S1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:56->ist_raumtyp->raumtyp:fn_3_1;
RELATE raum:56->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:56->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:56->hat_verortung->verortung:neubau;
RELATE raum:56->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 57: Kühlraum
UPSERT raum:57 SET
    nummer = 57,
    bezeichnung = 'Kühlraum',
    teil_der_beauftragung = true,
    nc5_code = '43311',
    nc5_bezeichnung = 'Kühlraum für wissenschaftliche Zwecke (nur Kühlung)',
    flaeche_nuf_1_6 = 10.8,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:57->ist_raumtyp->raumtyp:fn_7_2;
RELATE raum:57->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:57->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:57->hat_verortung->verortung:neubau;
RELATE raum:57->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 58: Lagerraum
UPSERT raum:58 SET
    nummer = 58,
    bezeichnung = 'Lagerraum',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 15.0,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:58->ist_raumtyp->raumtyp:fn_7;
RELATE raum:58->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:58->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:58->hat_verortung->verortung:neubau;
RELATE raum:58->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 59: Lagerraum
UPSERT raum:59 SET
    nummer = 59,
    bezeichnung = 'Lagerraum',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 15.0,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:59->ist_raumtyp->raumtyp:fn_7;
RELATE raum:59->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:59->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:59->hat_verortung->verortung:neubau;
RELATE raum:59->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 60: Lagerraum
UPSERT raum:60 SET
    nummer = 60,
    bezeichnung = 'Lagerraum',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 15.0,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:60->ist_raumtyp->raumtyp:fn_7;
RELATE raum:60->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:60->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:60->hat_verortung->verortung:neubau;
RELATE raum:60->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 61: Lagerraum
UPSERT raum:61 SET
    nummer = 61,
    bezeichnung = 'Lagerraum',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 15.0,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:61->ist_raumtyp->raumtyp:fn_7;
RELATE raum:61->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:61->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:61->hat_verortung->verortung:neubau;
RELATE raum:61->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 62: Lagerraum
UPSERT raum:62 SET
    nummer = 62,
    bezeichnung = 'Lagerraum',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 15.0,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:62->ist_raumtyp->raumtyp:fn_7;
RELATE raum:62->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:62->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:62->hat_verortung->verortung:neubau;
RELATE raum:62->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 63: Lagerraum
UPSERT raum:63 SET
    nummer = 63,
    bezeichnung = 'Lagerraum',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 15.0,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:63->ist_raumtyp->raumtyp:fn_7;
RELATE raum:63->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:63->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:63->hat_verortung->verortung:neubau;
RELATE raum:63->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 64: Lagerraum
UPSERT raum:64 SET
    nummer = 64,
    bezeichnung = 'Lagerraum',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 15.0,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:64->ist_raumtyp->raumtyp:fn_7;
RELATE raum:64->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:64->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:64->hat_verortung->verortung:neubau;
RELATE raum:64->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 65: Lagerraum
UPSERT raum:65 SET
    nummer = 65,
    bezeichnung = 'Lagerraum',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 15.0,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:65->ist_raumtyp->raumtyp:fn_7;
RELATE raum:65->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:65->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:65->hat_verortung->verortung:neubau;
RELATE raum:65->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 66: Lagerraum
UPSERT raum:66 SET
    nummer = 66,
    bezeichnung = 'Lagerraum',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 15.0,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:66->ist_raumtyp->raumtyp:fn_7;
RELATE raum:66->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:66->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:66->hat_verortung->verortung:neubau;
RELATE raum:66->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 67: Lagerraum
UPSERT raum:67 SET
    nummer = 67,
    bezeichnung = 'Lagerraum',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 15.0,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:67->ist_raumtyp->raumtyp:fn_7;
RELATE raum:67->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:67->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:67->hat_verortung->verortung:neubau;
RELATE raum:67->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 68: Lagerraum
UPSERT raum:68 SET
    nummer = 68,
    bezeichnung = 'Lagerraum',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 15.0,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:68->ist_raumtyp->raumtyp:fn_7;
RELATE raum:68->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:68->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:68->hat_verortung->verortung:neubau;
RELATE raum:68->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 69: Lagerraum
UPSERT raum:69 SET
    nummer = 69,
    bezeichnung = 'Lagerraum',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 15.0,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:69->ist_raumtyp->raumtyp:fn_7;
RELATE raum:69->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:69->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:69->hat_verortung->verortung:neubau;
RELATE raum:69->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 70: Lagerraum
UPSERT raum:70 SET
    nummer = 70,
    bezeichnung = 'Lagerraum',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 15.0,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:70->ist_raumtyp->raumtyp:fn_7;
RELATE raum:70->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:70->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:70->hat_verortung->verortung:neubau;
RELATE raum:70->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 71: Geräteraum 02 klein
UPSERT raum:71 SET
    nummer = 71,
    bezeichnung = 'Geräteraum 02 klein',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 7.2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:71->ist_raumtyp->raumtyp:fn_4_4;
RELATE raum:71->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:71->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:71->hat_verortung->verortung:neubau;
RELATE raum:71->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 72: Geräteraum 02 klein
UPSERT raum:72 SET
    nummer = 72,
    bezeichnung = 'Geräteraum 02 klein',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 7.2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:72->ist_raumtyp->raumtyp:fn_4_4;
RELATE raum:72->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:72->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:72->hat_verortung->verortung:neubau;
RELATE raum:72->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 73: Geräteraum 02
UPSERT raum:73 SET
    nummer = 73,
    bezeichnung = 'Geräteraum 02',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 15.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:73->ist_raumtyp->raumtyp:fn_4_3;
RELATE raum:73->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:73->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:73->hat_verortung->verortung:neubau;
RELATE raum:73->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 74: Geräteraum 01 klein
UPSERT raum:74 SET
    nummer = 74,
    bezeichnung = 'Geräteraum 01 klein',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 10.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:74->ist_raumtyp->raumtyp:fn_4_2;
RELATE raum:74->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:74->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:74->hat_verortung->verortung:neubau;
RELATE raum:74->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 75: Geräteraum 01 klein
UPSERT raum:75 SET
    nummer = 75,
    bezeichnung = 'Geräteraum 01 klein',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 10.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:75->ist_raumtyp->raumtyp:fn_4_2;
RELATE raum:75->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:75->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:75->hat_verortung->verortung:neubau;
RELATE raum:75->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 76: Geräteraum 01 klein
UPSERT raum:76 SET
    nummer = 76,
    bezeichnung = 'Geräteraum 01 klein',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 10.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:76->ist_raumtyp->raumtyp:fn_4_2;
RELATE raum:76->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:76->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:76->hat_verortung->verortung:neubau;
RELATE raum:76->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 77: Geräteraum 01 klein
UPSERT raum:77 SET
    nummer = 77,
    bezeichnung = 'Geräteraum 01 klein',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 10.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:77->ist_raumtyp->raumtyp:fn_4_2;
RELATE raum:77->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:77->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:77->hat_verortung->verortung:neubau;
RELATE raum:77->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 78: Geräteraum 01
UPSERT raum:78 SET
    nummer = 78,
    bezeichnung = 'Geräteraum 01',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:78->ist_raumtyp->raumtyp:fn_4_1;
RELATE raum:78->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:78->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:78->hat_verortung->verortung:neubau;
RELATE raum:78->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 79: Geräteraum 01
UPSERT raum:79 SET
    nummer = 79,
    bezeichnung = 'Geräteraum 01',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:79->ist_raumtyp->raumtyp:fn_4_1;
RELATE raum:79->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:79->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:79->hat_verortung->verortung:neubau;
RELATE raum:79->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 80: Spülküche S1/S2
UPSERT raum:80 SET
    nummer = 80,
    bezeichnung = 'Spülküche S1/S2',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:80->ist_raumtyp->raumtyp:fn_1_2;
RELATE raum:80->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:80->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:80->hat_verortung->verortung:neubau;
RELATE raum:80->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 83: Spülküche S1/S2
UPSERT raum:83 SET
    nummer = 83,
    bezeichnung = 'Spülküche S1/S2',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:83->ist_raumtyp->raumtyp:fn_1_2;
RELATE raum:83->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:83->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:83->hat_verortung->verortung:neubau;
RELATE raum:83->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 85: Messraum Typ 3 Dunkelraum
UPSERT raum:85 SET
    nummer = 85,
    bezeichnung = 'Messraum Typ 3 Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '34213',
    nc5_bezeichnung = 'Physiklabor mit besonderen RLT Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:85->ist_raumtyp->raumtyp:f_7_5;
RELATE raum:85->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:85->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:85->hat_verortung->verortung:neubau;
RELATE raum:85->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 86: Messraum Typ 3 Dunkelraum
UPSERT raum:86 SET
    nummer = 86,
    bezeichnung = 'Messraum Typ 3 Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '34213',
    nc5_bezeichnung = 'Physiklabor mit besonderen RLT Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:86->ist_raumtyp->raumtyp:f_7_5;
RELATE raum:86->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:86->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:86->hat_verortung->verortung:neubau;
RELATE raum:86->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 87: Messraum Typ 3 Dunkelraum
UPSERT raum:87 SET
    nummer = 87,
    bezeichnung = 'Messraum Typ 3 Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '34213',
    nc5_bezeichnung = 'Physiklabor mit besonderen RLT Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:87->ist_raumtyp->raumtyp:f_7_5;
RELATE raum:87->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:87->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:87->hat_verortung->verortung:neubau;
RELATE raum:87->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 88: Messraum Typ 3 Dunkelraum
UPSERT raum:88 SET
    nummer = 88,
    bezeichnung = 'Messraum Typ 3 Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '34213',
    nc5_bezeichnung = 'Physiklabor mit besonderen RLT Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:88->ist_raumtyp->raumtyp:f_7_5;
RELATE raum:88->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:88->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:88->hat_verortung->verortung:neubau;
RELATE raum:88->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 89: Chemikalienlager klein AG 7
UPSERT raum:89 SET
    nummer = 89,
    bezeichnung = 'Chemikalienlager klein AG 7',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:89->ist_raumtyp->raumtyp:fn_5_2;
RELATE raum:89->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:89->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:89->hat_verortung->verortung:neubau;
RELATE raum:89->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 90: Nasslabor 2 groß
UPSERT raum:90 SET
    nummer = 90,
    bezeichnung = 'Nasslabor 2 groß',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:90->ist_raumtyp->raumtyp:f_2_2;
RELATE raum:90->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:90->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:90->hat_verortung->verortung:neubau;
RELATE raum:90->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 91: Nasslabor 2 groß
UPSERT raum:91 SET
    nummer = 91,
    bezeichnung = 'Nasslabor 2 groß',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:91->ist_raumtyp->raumtyp:f_2_2;
RELATE raum:91->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:91->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:91->hat_verortung->verortung:neubau;
RELATE raum:91->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 94: Nasslabor 2 groß
UPSERT raum:94 SET
    nummer = 94,
    bezeichnung = 'Nasslabor 2 groß',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:94->ist_raumtyp->raumtyp:f_2_2;
RELATE raum:94->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:94->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:94->hat_verortung->verortung:neubau;
RELATE raum:94->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 95: Nasslabor 2 groß
UPSERT raum:95 SET
    nummer = 95,
    bezeichnung = 'Nasslabor 2 groß',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:95->ist_raumtyp->raumtyp:f_2_2;
RELATE raum:95->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:95->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:95->hat_verortung->verortung:neubau;
RELATE raum:95->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 96: Nasslabor 2 groß
UPSERT raum:96 SET
    nummer = 96,
    bezeichnung = 'Nasslabor 2 groß',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:96->ist_raumtyp->raumtyp:f_2_2;
RELATE raum:96->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:96->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:96->hat_verortung->verortung:neubau;
RELATE raum:96->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 100: Nasslabor 2 groß
UPSERT raum:100 SET
    nummer = 100,
    bezeichnung = 'Nasslabor 2 groß',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:100->ist_raumtyp->raumtyp:f_2_2;
RELATE raum:100->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:100->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:100->hat_verortung->verortung:neubau;
RELATE raum:100->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 104: Nasslabor 2 groß
UPSERT raum:104 SET
    nummer = 104,
    bezeichnung = 'Nasslabor 2 groß',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:104->ist_raumtyp->raumtyp:f_2_2;
RELATE raum:104->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:104->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:104->hat_verortung->verortung:neubau;
RELATE raum:104->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 108: Nasslabor 2 groß
UPSERT raum:108 SET
    nummer = 108,
    bezeichnung = 'Nasslabor 2 groß',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:108->ist_raumtyp->raumtyp:f_2_2;
RELATE raum:108->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:108->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:108->hat_verortung->verortung:neubau;
RELATE raum:108->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 112: Nasslabor 2 groß
UPSERT raum:112 SET
    nummer = 112,
    bezeichnung = 'Nasslabor 2 groß',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:112->ist_raumtyp->raumtyp:f_2_2;
RELATE raum:112->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:112->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:112->hat_verortung->verortung:neubau;
RELATE raum:112->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 113: Nasslabor 2 groß
UPSERT raum:113 SET
    nummer = 113,
    bezeichnung = 'Nasslabor 2 groß',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:113->ist_raumtyp->raumtyp:f_2_2;
RELATE raum:113->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:113->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:113->hat_verortung->verortung:neubau;
RELATE raum:113->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 114: Nasslabor 2 groß
UPSERT raum:114 SET
    nummer = 114,
    bezeichnung = 'Nasslabor 2 groß',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:114->ist_raumtyp->raumtyp:f_2_2;
RELATE raum:114->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:114->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:114->hat_verortung->verortung:neubau;
RELATE raum:114->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 116: Nasslabor 2 groß
UPSERT raum:116 SET
    nummer = 116,
    bezeichnung = 'Nasslabor 2 groß',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:116->ist_raumtyp->raumtyp:f_2_2;
RELATE raum:116->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:116->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:116->hat_verortung->verortung:neubau;
RELATE raum:116->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 120: Nasslabor 2 groß
UPSERT raum:120 SET
    nummer = 120,
    bezeichnung = 'Nasslabor 2 groß',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:120->ist_raumtyp->raumtyp:f_2_2;
RELATE raum:120->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:120->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:120->hat_verortung->verortung:neubau;
RELATE raum:120->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 124: Nasslabor 2 groß Ökologie
UPSERT raum:124 SET
    nummer = 124,
    bezeichnung = 'Nasslabor 2 groß Ökologie',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:124->ist_raumtyp->raumtyp:f_2_2_1;
RELATE raum:124->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:124->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:124->hat_verortung->verortung:neubau;
RELATE raum:124->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 128: Nasslabor 2 groß Ökologie
UPSERT raum:128 SET
    nummer = 128,
    bezeichnung = 'Nasslabor 2 groß Ökologie',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:128->ist_raumtyp->raumtyp:f_2_2_1;
RELATE raum:128->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:128->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:128->hat_verortung->verortung:neubau;
RELATE raum:128->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 132: Nasslabor 2
UPSERT raum:132 SET
    nummer = 132,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:132->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:132->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:132->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:132->hat_verortung->verortung:neubau;
RELATE raum:132->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 135: Nasslabor 2
UPSERT raum:135 SET
    nummer = 135,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:135->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:135->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:135->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:135->hat_verortung->verortung:neubau;
RELATE raum:135->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 139: Nasslabor 2
UPSERT raum:139 SET
    nummer = 139,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:139->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:139->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:139->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:139->hat_verortung->verortung:neubau;
RELATE raum:139->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 144: Nasslabor 2
UPSERT raum:144 SET
    nummer = 144,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:144->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:144->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:144->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:144->hat_verortung->verortung:neubau;
RELATE raum:144->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 148: Nasslabor 2
UPSERT raum:148 SET
    nummer = 148,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:148->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:148->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:148->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:148->hat_verortung->verortung:neubau;
RELATE raum:148->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 152: Nasslabor 2
UPSERT raum:152 SET
    nummer = 152,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:152->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:152->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:152->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:152->hat_verortung->verortung:neubau;
RELATE raum:152->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 155: Nasslabor 2
UPSERT raum:155 SET
    nummer = 155,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:155->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:155->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:155->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:155->hat_verortung->verortung:neubau;
RELATE raum:155->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 158: Nasslabor 2
UPSERT raum:158 SET
    nummer = 158,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:158->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:158->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:158->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:158->hat_verortung->verortung:neubau;
RELATE raum:158->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 161: Nasslabor 2
UPSERT raum:161 SET
    nummer = 161,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:161->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:161->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:161->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:161->hat_verortung->verortung:neubau;
RELATE raum:161->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 163: Nasslabor 2
UPSERT raum:163 SET
    nummer = 163,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:163->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:163->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:163->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:163->hat_verortung->verortung:neubau;
RELATE raum:163->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 166: Nasslabor 2
UPSERT raum:166 SET
    nummer = 166,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:166->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:166->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:166->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:166->hat_verortung->verortung:neubau;
RELATE raum:166->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 169: Nasslabor 2
UPSERT raum:169 SET
    nummer = 169,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:169->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:169->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:169->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:169->hat_verortung->verortung:neubau;
RELATE raum:169->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 174: Nasslabor 2
UPSERT raum:174 SET
    nummer = 174,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:174->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:174->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:174->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:174->hat_verortung->verortung:neubau;
RELATE raum:174->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 178: Nasslabor 1 klein
UPSERT raum:178 SET
    nummer = 178,
    bezeichnung = 'Nasslabor 1 klein',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:178->ist_raumtyp->raumtyp:f_1_1;
RELATE raum:178->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:178->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:178->hat_verortung->verortung:neubau;
RELATE raum:178->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 182: Nasslabor 1 klein
UPSERT raum:182 SET
    nummer = 182,
    bezeichnung = 'Nasslabor 1 klein',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:182->ist_raumtyp->raumtyp:f_1_1;
RELATE raum:182->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:182->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:182->hat_verortung->verortung:neubau;
RELATE raum:182->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 185: Vorbereitungsraum / Lager
UPSERT raum:185 SET
    nummer = 185,
    bezeichnung = 'Vorbereitungsraum / Lager',
    teil_der_beauftragung = true,
    nc5_code = '39722',
    nc5_bezeichnung = 'Vorbereitungsraum Naturwissenschaft',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:185->ist_raumtyp->raumtyp:fn_3;
RELATE raum:185->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:185->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:185->hat_verortung->verortung:neubau;
RELATE raum:185->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 188: Separater Auswerte- und Steuerarbeitsplatz
UPSERT raum:188 SET
    nummer = 188,
    bezeichnung = 'Separater Auswerte- und Steuerarbeitsplatz',
    teil_der_beauftragung = true,
    nc5_code = '34212',
    nc5_bezeichnung = 'Physiklabor mit bes. Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:188->ist_raumtyp->raumtyp:f_8;
RELATE raum:188->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:188->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:188->hat_verortung->verortung:neubau;
RELATE raum:188->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 189: Separater Auswerte- und Steuerarbeitsplatz
UPSERT raum:189 SET
    nummer = 189,
    bezeichnung = 'Separater Auswerte- und Steuerarbeitsplatz',
    teil_der_beauftragung = true,
    nc5_code = '34212',
    nc5_bezeichnung = 'Physiklabor mit bes. Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:189->ist_raumtyp->raumtyp:f_8;
RELATE raum:189->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:189->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:189->hat_verortung->verortung:neubau;
RELATE raum:189->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 191: Separater Auswerte- und Steuerarbeitsplatz
UPSERT raum:191 SET
    nummer = 191,
    bezeichnung = 'Separater Auswerte- und Steuerarbeitsplatz',
    teil_der_beauftragung = true,
    nc5_code = '34212',
    nc5_bezeichnung = 'Physiklabor mit bes. Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:191->ist_raumtyp->raumtyp:f_8;
RELATE raum:191->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:191->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:191->hat_verortung->verortung:neubau;
RELATE raum:191->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 193: Separater Auswerte- und Steuerarbeitsplatz
UPSERT raum:193 SET
    nummer = 193,
    bezeichnung = 'Separater Auswerte- und Steuerarbeitsplatz',
    teil_der_beauftragung = true,
    nc5_code = '34212',
    nc5_bezeichnung = 'Physiklabor mit bes. Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:193->ist_raumtyp->raumtyp:f_8;
RELATE raum:193->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:193->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:193->hat_verortung->verortung:neubau;
RELATE raum:193->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 195: Separater Auswerte- und Steuerarbeitsplatz
UPSERT raum:195 SET
    nummer = 195,
    bezeichnung = 'Separater Auswerte- und Steuerarbeitsplatz',
    teil_der_beauftragung = true,
    nc5_code = '34212',
    nc5_bezeichnung = 'Physiklabor mit bes. Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:195->ist_raumtyp->raumtyp:f_8;
RELATE raum:195->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:195->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:195->hat_verortung->verortung:neubau;
RELATE raum:195->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 197: Separater Auswerte- und Steuerarbeitsplatz
UPSERT raum:197 SET
    nummer = 197,
    bezeichnung = 'Separater Auswerte- und Steuerarbeitsplatz',
    teil_der_beauftragung = true,
    nc5_code = '34212',
    nc5_bezeichnung = 'Physiklabor mit bes. Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:197->ist_raumtyp->raumtyp:f_8;
RELATE raum:197->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:197->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:197->hat_verortung->verortung:neubau;
RELATE raum:197->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 198: Separater Auswerte- und Steuerarbeitsplatz
UPSERT raum:198 SET
    nummer = 198,
    bezeichnung = 'Separater Auswerte- und Steuerarbeitsplatz',
    teil_der_beauftragung = true,
    nc5_code = '34212',
    nc5_bezeichnung = 'Physiklabor mit bes. Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:198->ist_raumtyp->raumtyp:f_8;
RELATE raum:198->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:198->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:198->hat_verortung->verortung:neubau;
RELATE raum:198->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 201: Separater Auswerte- und Steuerarbeitsplatz
UPSERT raum:201 SET
    nummer = 201,
    bezeichnung = 'Separater Auswerte- und Steuerarbeitsplatz',
    teil_der_beauftragung = true,
    nc5_code = '34212',
    nc5_bezeichnung = 'Physiklabor mit bes. Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:201->ist_raumtyp->raumtyp:f_8;
RELATE raum:201->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:201->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:201->hat_verortung->verortung:neubau;
RELATE raum:201->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 214: Separater Auswerte- und Steuerarbeitsplatz
UPSERT raum:214 SET
    nummer = 214,
    bezeichnung = 'Separater Auswerte- und Steuerarbeitsplatz',
    teil_der_beauftragung = true,
    nc5_code = '34212',
    nc5_bezeichnung = 'Physiklabor mit bes. Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:214->ist_raumtyp->raumtyp:f_8;
RELATE raum:214->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:214->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:214->hat_verortung->verortung:neubau;
RELATE raum:214->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 216: Separater Auswerte- und Steuerarbeitsplatz
UPSERT raum:216 SET
    nummer = 216,
    bezeichnung = 'Separater Auswerte- und Steuerarbeitsplatz',
    teil_der_beauftragung = true,
    nc5_code = '34212',
    nc5_bezeichnung = 'Physiklabor mit bes. Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:216->ist_raumtyp->raumtyp:f_8;
RELATE raum:216->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:216->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:216->hat_verortung->verortung:neubau;
RELATE raum:216->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 217: Psychophysik Dunkelraum
UPSERT raum:217 SET
    nummer = 217,
    bezeichnung = 'Psychophysik Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '34212',
    nc5_bezeichnung = 'Physiklabor mit bes. Anforderungen',
    flaeche_nuf_1_6 = 28.28,
    personen_max = 4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:217->ist_raumtyp->raumtyp:f_6_2;
RELATE raum:217->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:217->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:217->hat_verortung->verortung:neubau;
RELATE raum:217->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 218: Psychophysik AG Engelmann Dunkelraum
UPSERT raum:218 SET
    nummer = 218,
    bezeichnung = 'Psychophysik AG Engelmann Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '34212',
    nc5_bezeichnung = 'Physiklabor mit bes. Anforderungen',
    flaeche_nuf_1_6 = 28.28,
    personen_max = 4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:218->ist_raumtyp->raumtyp:f_6_3;
RELATE raum:218->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:218->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:218->hat_verortung->verortung:neubau;
RELATE raum:218->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 219: Psychophysik AG Engelmann Dunkelraum
UPSERT raum:219 SET
    nummer = 219,
    bezeichnung = 'Psychophysik AG Engelmann Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '34212',
    nc5_bezeichnung = 'Physiklabor mit bes. Anforderungen',
    flaeche_nuf_1_6 = 28.28,
    personen_max = 4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:219->ist_raumtyp->raumtyp:f_6_3;
RELATE raum:219->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:219->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:219->hat_verortung->verortung:neubau;
RELATE raum:219->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 220: Psychophysik Dunkelraum
UPSERT raum:220 SET
    nummer = 220,
    bezeichnung = 'Psychophysik Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '34212',
    nc5_bezeichnung = 'Physiklabor mit bes. Anforderungen',
    flaeche_nuf_1_6 = 28.28,
    personen_max = 4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:220->ist_raumtyp->raumtyp:f_6;
RELATE raum:220->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:220->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:220->hat_verortung->verortung:neubau;
RELATE raum:220->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 221: Psychophysik Dunkelraum
UPSERT raum:221 SET
    nummer = 221,
    bezeichnung = 'Psychophysik Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '34212',
    nc5_bezeichnung = 'Physiklabor mit bes. Anforderungen',
    flaeche_nuf_1_6 = 28.28,
    personen_max = 4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:221->ist_raumtyp->raumtyp:f_6;
RELATE raum:221->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:221->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:221->hat_verortung->verortung:neubau;
RELATE raum:221->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 222: Psychophysik Dunkelraum
UPSERT raum:222 SET
    nummer = 222,
    bezeichnung = 'Psychophysik Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '34212',
    nc5_bezeichnung = 'Physiklabor mit bes. Anforderungen',
    flaeche_nuf_1_6 = 28.28,
    personen_max = 4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:222->ist_raumtyp->raumtyp:f_6;
RELATE raum:222->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:222->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:222->hat_verortung->verortung:neubau;
RELATE raum:222->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 223: Physiologielabor
UPSERT raum:223 SET
    nummer = 223,
    bezeichnung = 'Physiologielabor',
    teil_der_beauftragung = true,
    nc5_code = '34212',
    nc5_bezeichnung = 'Physiklabor mit bes. Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:223->ist_raumtyp->raumtyp:f_5;
RELATE raum:223->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:223->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:223->hat_verortung->verortung:neubau;
RELATE raum:223->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 226: Physiologielabor
UPSERT raum:226 SET
    nummer = 226,
    bezeichnung = 'Physiologielabor',
    teil_der_beauftragung = true,
    nc5_code = '34212',
    nc5_bezeichnung = 'Physiklabor mit bes. Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:226->ist_raumtyp->raumtyp:f_5;
RELATE raum:226->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:226->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:226->hat_verortung->verortung:neubau;
RELATE raum:226->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 227: Physiologielabor
UPSERT raum:227 SET
    nummer = 227,
    bezeichnung = 'Physiologielabor',
    teil_der_beauftragung = true,
    nc5_code = '34212',
    nc5_bezeichnung = 'Physiklabor mit bes. Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:227->ist_raumtyp->raumtyp:f_5;
RELATE raum:227->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:227->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:227->hat_verortung->verortung:neubau;
RELATE raum:227->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 228: Physiologielabor
UPSERT raum:228 SET
    nummer = 228,
    bezeichnung = 'Physiologielabor',
    teil_der_beauftragung = true,
    nc5_code = '34212',
    nc5_bezeichnung = 'Physiklabor mit bes. Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:228->ist_raumtyp->raumtyp:f_5;
RELATE raum:228->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:228->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:228->hat_verortung->verortung:neubau;
RELATE raum:228->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 232: Physiologielabor
UPSERT raum:232 SET
    nummer = 232,
    bezeichnung = 'Physiologielabor',
    teil_der_beauftragung = true,
    nc5_code = '34212',
    nc5_bezeichnung = 'Physiklabor mit bes. Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:232->ist_raumtyp->raumtyp:f_5;
RELATE raum:232->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:232->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:232->hat_verortung->verortung:neubau;
RELATE raum:232->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 234: Physiologielabor
UPSERT raum:234 SET
    nummer = 234,
    bezeichnung = 'Physiologielabor',
    teil_der_beauftragung = true,
    nc5_code = '34212',
    nc5_bezeichnung = 'Physiklabor mit bes. Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:234->ist_raumtyp->raumtyp:f_5;
RELATE raum:234->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:234->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:234->hat_verortung->verortung:neubau;
RELATE raum:234->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 239: Physiologielabor
UPSERT raum:239 SET
    nummer = 239,
    bezeichnung = 'Physiologielabor',
    teil_der_beauftragung = true,
    nc5_code = '34212',
    nc5_bezeichnung = 'Physiklabor mit bes. Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:239->ist_raumtyp->raumtyp:f_5;
RELATE raum:239->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:239->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:239->hat_verortung->verortung:neubau;
RELATE raum:239->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 241: Physiologielabor
UPSERT raum:241 SET
    nummer = 241,
    bezeichnung = 'Physiologielabor',
    teil_der_beauftragung = true,
    nc5_code = '34212',
    nc5_bezeichnung = 'Physiklabor mit bes. Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:241->ist_raumtyp->raumtyp:f_5;
RELATE raum:241->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:241->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:241->hat_verortung->verortung:neubau;
RELATE raum:241->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 246: Robotiklabor
UPSERT raum:246 SET
    nummer = 246,
    bezeichnung = 'Robotiklabor',
    teil_der_beauftragung = true,
    nc5_code = '34211',
    nc5_bezeichnung = 'Physiklabor (einfaches physikalisches Messlabor)',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:246->ist_raumtyp->raumtyp:f_4;
RELATE raum:246->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:246->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:246->hat_verortung->verortung:neubau;
RELATE raum:246->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 252: Robotiklabor
UPSERT raum:252 SET
    nummer = 252,
    bezeichnung = 'Robotiklabor',
    teil_der_beauftragung = true,
    nc5_code = '34211',
    nc5_bezeichnung = 'Physiklabor (einfaches physikalisches Messlabor)',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:252->ist_raumtyp->raumtyp:f_4;
RELATE raum:252->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:252->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:252->hat_verortung->verortung:neubau;
RELATE raum:252->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 259: Robotiklabor
UPSERT raum:259 SET
    nummer = 259,
    bezeichnung = 'Robotiklabor',
    teil_der_beauftragung = true,
    nc5_code = '34211',
    nc5_bezeichnung = 'Physiklabor (einfaches physikalisches Messlabor)',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:259->ist_raumtyp->raumtyp:f_4;
RELATE raum:259->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:259->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:259->hat_verortung->verortung:neubau;
RELATE raum:259->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 269: Robotiklabor
UPSERT raum:269 SET
    nummer = 269,
    bezeichnung = 'Robotiklabor',
    teil_der_beauftragung = true,
    nc5_code = '34211',
    nc5_bezeichnung = 'Physiklabor (einfaches physikalisches Messlabor)',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:269->ist_raumtyp->raumtyp:f_4;
RELATE raum:269->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:269->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:269->hat_verortung->verortung:neubau;
RELATE raum:269->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 284: Robotiklabor
UPSERT raum:284 SET
    nummer = 284,
    bezeichnung = 'Robotiklabor',
    teil_der_beauftragung = true,
    nc5_code = '34211',
    nc5_bezeichnung = 'Physiklabor (einfaches physikalisches Messlabor)',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:284->ist_raumtyp->raumtyp:f_4;
RELATE raum:284->gehoert_zu_teilprojekt->teilprojekt:biologie_forschung;
RELATE raum:284->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:284->hat_verortung->verortung:neubau;
RELATE raum:284->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 292: Zellkultur 1
UPSERT raum:292 SET
    nummer = 292,
    bezeichnung = 'Zellkultur 1',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:292->ist_raumtyp->raumtyp:f_3_1;
RELATE raum:292->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:292->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:292->hat_verortung->verortung:neubau;
RELATE raum:292->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 293: Zellkultur 1
UPSERT raum:293 SET
    nummer = 293,
    bezeichnung = 'Zellkultur 1',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:293->ist_raumtyp->raumtyp:f_3_1;
RELATE raum:293->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:293->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:293->hat_verortung->verortung:neubau;
RELATE raum:293->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 294: Zellkultur 1
UPSERT raum:294 SET
    nummer = 294,
    bezeichnung = 'Zellkultur 1',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:294->ist_raumtyp->raumtyp:f_3_1;
RELATE raum:294->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:294->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:294->hat_verortung->verortung:neubau;
RELATE raum:294->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 295: Zellkultur 1
UPSERT raum:295 SET
    nummer = 295,
    bezeichnung = 'Zellkultur 1',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:295->ist_raumtyp->raumtyp:f_3_1;
RELATE raum:295->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:295->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:295->hat_verortung->verortung:neubau;
RELATE raum:295->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 296: Zellkultur 1
UPSERT raum:296 SET
    nummer = 296,
    bezeichnung = 'Zellkultur 1',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:296->ist_raumtyp->raumtyp:f_3_1;
RELATE raum:296->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:296->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:296->hat_verortung->verortung:neubau;
RELATE raum:296->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 297: Zellkultur 1 groß
UPSERT raum:297 SET
    nummer = 297,
    bezeichnung = 'Zellkultur 1 groß',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:297->ist_raumtyp->raumtyp:f_3_2_1;
RELATE raum:297->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:297->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:297->hat_verortung->verortung:neubau;
RELATE raum:297->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 298: Chemikalienlager klein
UPSERT raum:298 SET
    nummer = 298,
    bezeichnung = 'Chemikalienlager klein',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:298->ist_raumtyp->raumtyp:fn_5_2;
RELATE raum:298->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:298->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:298->hat_verortung->verortung:neubau;
RELATE raum:298->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 299: Chemikalienlager klein
UPSERT raum:299 SET
    nummer = 299,
    bezeichnung = 'Chemikalienlager klein',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:299->ist_raumtyp->raumtyp:fn_5_2;
RELATE raum:299->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:299->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:299->hat_verortung->verortung:neubau;
RELATE raum:299->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 300: Chemikalienlager klein
UPSERT raum:300 SET
    nummer = 300,
    bezeichnung = 'Chemikalienlager klein',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:300->ist_raumtyp->raumtyp:fn_5_2;
RELATE raum:300->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:300->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:300->hat_verortung->verortung:neubau;
RELATE raum:300->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 301: Chemikalienlager klein
UPSERT raum:301 SET
    nummer = 301,
    bezeichnung = 'Chemikalienlager klein',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:301->ist_raumtyp->raumtyp:fn_5_2;
RELATE raum:301->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:301->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:301->hat_verortung->verortung:neubau;
RELATE raum:301->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 302: Chemikalienlager klein
UPSERT raum:302 SET
    nummer = 302,
    bezeichnung = 'Chemikalienlager klein',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:302->ist_raumtyp->raumtyp:fn_5_2;
RELATE raum:302->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:302->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:302->hat_verortung->verortung:neubau;
RELATE raum:302->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 303: Chemikalienlager klein
UPSERT raum:303 SET
    nummer = 303,
    bezeichnung = 'Chemikalienlager klein',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:303->ist_raumtyp->raumtyp:fn_5_2;
RELATE raum:303->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:303->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:303->hat_verortung->verortung:neubau;
RELATE raum:303->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 304: Szintillationsraum
UPSERT raum:304 SET
    nummer = 304,
    bezeichnung = 'Szintillationsraum',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:304->ist_raumtyp->raumtyp:fn_10;
RELATE raum:304->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:304->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:304->hat_verortung->verortung:neubau;
RELATE raum:304->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 305: Vorbereitungsraum REM/TEM
UPSERT raum:305 SET
    nummer = 305,
    bezeichnung = 'Vorbereitungsraum REM/TEM',
    teil_der_beauftragung = true,
    nc5_code = '39712',
    nc5_bezeichnung = 'Vorbereitungsraum mit labortech. Einrichtungen und RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:305->ist_raumtyp->raumtyp:fn_11;
RELATE raum:305->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:305->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:305->hat_verortung->verortung:neubau;
RELATE raum:305->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 306: Technik REM/TEM
UPSERT raum:306 SET
    nummer = 306,
    bezeichnung = 'Technik REM/TEM',
    teil_der_beauftragung = true,
    nc5_code = '71111',
    nc5_bezeichnung = 'Raum für Technik mit RLT 2',
    flaeche_nuf_7_9 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF7';
RELATE raum:306->ist_raumtyp->raumtyp:fn_12;
RELATE raum:306->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:306->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:306->hat_verortung->verortung:neubau;
RELATE raum:306->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 307: Messraum Typ 2 REM/TEM Dunkelraum
UPSERT raum:307 SET
    nummer = 307,
    bezeichnung = 'Messraum Typ 2 REM/TEM Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '34213',
    nc5_bezeichnung = 'Physiklabor mit besonderen RLT Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:307->ist_raumtyp->raumtyp:f_7_1;
RELATE raum:307->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:307->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:307->hat_verortung->verortung:neubau;
RELATE raum:307->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 308: Messraum Typ 1 Konfokalmikroskopie Fluoreszenzmikroskopie Dunkelraum
UPSERT raum:308 SET
    nummer = 308,
    bezeichnung = 'Messraum Typ 1 Konfokalmikroskopie Fluoreszenzmikroskopie Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '34213',
    nc5_bezeichnung = 'Physiklabor mit besonderen RLT Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:308->ist_raumtyp->raumtyp:f_7_2;
RELATE raum:308->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:308->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:308->hat_verortung->verortung:neubau;
RELATE raum:308->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 309: Messraum Typ 1 Konfokalmikroskopie Fluoreszenzmikroskopie Dunkelraum
UPSERT raum:309 SET
    nummer = 309,
    bezeichnung = 'Messraum Typ 1 Konfokalmikroskopie Fluoreszenzmikroskopie Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '34213',
    nc5_bezeichnung = 'Physiklabor mit besonderen RLT Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:309->ist_raumtyp->raumtyp:f_7_2;
RELATE raum:309->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:309->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:309->hat_verortung->verortung:neubau;
RELATE raum:309->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 310: Messraum Typ 1 Konfokalmikroskopie Fluoreszenzmikroskopie Dunkelraum
UPSERT raum:310 SET
    nummer = 310,
    bezeichnung = 'Messraum Typ 1 Konfokalmikroskopie Fluoreszenzmikroskopie Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '34213',
    nc5_bezeichnung = 'Physiklabor mit besonderen RLT Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:310->ist_raumtyp->raumtyp:f_7_2;
RELATE raum:310->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:310->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:310->hat_verortung->verortung:neubau;
RELATE raum:310->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 311: Messraum Typ 1 Konfokalmikroskopie Fluoreszenzmikroskopie Dunkelraum
UPSERT raum:311 SET
    nummer = 311,
    bezeichnung = 'Messraum Typ 1 Konfokalmikroskopie Fluoreszenzmikroskopie Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '34213',
    nc5_bezeichnung = 'Physiklabor mit besonderen RLT Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:311->ist_raumtyp->raumtyp:f_7_2;
RELATE raum:311->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:311->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:311->hat_verortung->verortung:neubau;
RELATE raum:311->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 312: Messraum Typ 1 Mikroskopie Dunkelraum
UPSERT raum:312 SET
    nummer = 312,
    bezeichnung = 'Messraum Typ 1 Mikroskopie Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '34213',
    nc5_bezeichnung = 'Physiklabor mit besonderen RLT Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:312->ist_raumtyp->raumtyp:f_7_3;
RELATE raum:312->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:312->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:312->hat_verortung->verortung:neubau;
RELATE raum:312->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 313: Messraum Typ 1 Mikroskopie Dunkelraum
UPSERT raum:313 SET
    nummer = 313,
    bezeichnung = 'Messraum Typ 1 Mikroskopie Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '34213',
    nc5_bezeichnung = 'Physiklabor mit besonderen RLT Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:313->ist_raumtyp->raumtyp:f_7_3;
RELATE raum:313->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:313->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:313->hat_verortung->verortung:neubau;
RELATE raum:313->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 314: Messraum Typ 1 Mikroskopie Dunkelraum
UPSERT raum:314 SET
    nummer = 314,
    bezeichnung = 'Messraum Typ 1 Mikroskopie Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '34213',
    nc5_bezeichnung = 'Physiklabor mit besonderen RLT Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:314->ist_raumtyp->raumtyp:f_7_3;
RELATE raum:314->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:314->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:314->hat_verortung->verortung:neubau;
RELATE raum:314->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 315: Messraum Typ 1 Mikroskopie Dunkelraum
UPSERT raum:315 SET
    nummer = 315,
    bezeichnung = 'Messraum Typ 1 Mikroskopie Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '34213',
    nc5_bezeichnung = 'Physiklabor mit besonderen RLT Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:315->ist_raumtyp->raumtyp:f_7_3;
RELATE raum:315->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:315->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:315->hat_verortung->verortung:neubau;
RELATE raum:315->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 316: Isotopenlabor
UPSERT raum:316 SET
    nummer = 316,
    bezeichnung = 'Isotopenlabor',
    teil_der_beauftragung = true,
    nc5_code = '35514',
    nc5_bezeichnung = 'Isotopenlabor mit erhöhten baukonstruktiven und RLT-Anforderungen mit Schleuse',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:316->ist_raumtyp->raumtyp:f_9;
RELATE raum:316->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:316->hat_funktionsbereich->funktionsbereich:isotopenlabor;
RELATE raum:316->hat_verortung->verortung:neubau;
RELATE raum:316->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 318: Isotopenlabor
UPSERT raum:318 SET
    nummer = 318,
    bezeichnung = 'Isotopenlabor',
    teil_der_beauftragung = true,
    nc5_code = '35514',
    nc5_bezeichnung = 'Isotopenlabor mit erhöhten baukonstruktiven und RLT-Anforderungen mit Schleuse',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:318->ist_raumtyp->raumtyp:f_9;
RELATE raum:318->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:318->hat_funktionsbereich->funktionsbereich:isotopenlabor;
RELATE raum:318->hat_verortung->verortung:neubau;
RELATE raum:318->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 320: Isotopenlabor
UPSERT raum:320 SET
    nummer = 320,
    bezeichnung = 'Isotopenlabor',
    teil_der_beauftragung = true,
    nc5_code = '35514',
    nc5_bezeichnung = 'Isotopenlabor mit erhöhten baukonstruktiven und RLT-Anforderungen mit Schleuse',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:320->ist_raumtyp->raumtyp:f_9;
RELATE raum:320->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:320->hat_funktionsbereich->funktionsbereich:isotopenlabor;
RELATE raum:320->hat_verortung->verortung:neubau;
RELATE raum:320->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 322: Isotopenlabor
UPSERT raum:322 SET
    nummer = 322,
    bezeichnung = 'Isotopenlabor',
    teil_der_beauftragung = true,
    nc5_code = '35514',
    nc5_bezeichnung = 'Isotopenlabor mit erhöhten baukonstruktiven und RLT-Anforderungen mit Schleuse',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:322->ist_raumtyp->raumtyp:f_9_2;
RELATE raum:322->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:322->hat_funktionsbereich->funktionsbereich:isotopenlabor;
RELATE raum:322->hat_verortung->verortung:neubau;
RELATE raum:322->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 324: Schleuse Isotopenlabor
UPSERT raum:324 SET
    nummer = 324,
    bezeichnung = 'Schleuse Isotopenlabor',
    teil_der_beauftragung = true,
    nc5_code = '35514',
    nc5_bezeichnung = 'Isotopenlabor mit erhöhten baukonstruktiven und RLT-Anforderungen mit Schleuse',
    flaeche_nuf_1_6 = 12.6,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:324->ist_raumtyp->raumtyp:fn_8;
RELATE raum:324->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:324->hat_funktionsbereich->funktionsbereich:isotopenlabor;
RELATE raum:324->hat_verortung->verortung:neubau;
RELATE raum:324->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 325: Zellkultur 1
UPSERT raum:325 SET
    nummer = 325,
    bezeichnung = 'Zellkultur 1',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:325->ist_raumtyp->raumtyp:f_3_1;
RELATE raum:325->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:325->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:325->hat_verortung->verortung:neubau;
RELATE raum:325->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 326: Chemikalienlager klein
UPSERT raum:326 SET
    nummer = 326,
    bezeichnung = 'Chemikalienlager klein',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:326->ist_raumtyp->raumtyp:fn_5_2;
RELATE raum:326->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:326->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:326->hat_verortung->verortung:neubau;
RELATE raum:326->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 327: Chemikalienlager klein
UPSERT raum:327 SET
    nummer = 327,
    bezeichnung = 'Chemikalienlager klein',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:327->ist_raumtyp->raumtyp:fn_5_2;
RELATE raum:327->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:327->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:327->hat_verortung->verortung:neubau;
RELATE raum:327->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 328: Chemikalienlager klein
UPSERT raum:328 SET
    nummer = 328,
    bezeichnung = 'Chemikalienlager klein',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:328->ist_raumtyp->raumtyp:fn_5_2;
RELATE raum:328->gehoert_zu_teilprojekt->teilprojekt:biologie_sonderlabore;
RELATE raum:328->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:328->hat_verortung->verortung:neubau;
RELATE raum:328->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 329: Kühlraum / Kadaverraum
UPSERT raum:329 SET
    nummer = 329,
    bezeichnung = 'Kühlraum / Kadaverraum',
    teil_der_beauftragung = true,
    nc5_code = '35131',
    nc5_bezeichnung = 'Chemisch-technisches Labor mit bes. RLT-Anforderungen',
    flaeche_nuf_1_6 = 8.28,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:329->ist_raumtyp->raumtyp:zoosa_2;
RELATE raum:329->gehoert_zu_teilprojekt->teilprojekt:zoologische_sammlung;
RELATE raum:329->hat_funktionsbereich->funktionsbereich:sammlungsrume;
RELATE raum:329->hat_verortung->verortung:bestand_neubau;
RELATE raum:329->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 330: Lager
UPSERT raum:330 SET
    nummer = 330,
    bezeichnung = 'Lager',
    teil_der_beauftragung = true,
    nc5_code = '35131',
    nc5_bezeichnung = 'Chemisch-technisches Labor mit bes. RLT-Anforderungen',
    flaeche_nuf_1_6 = 110.88,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:330->ist_raumtyp->raumtyp:zoosa_1;
RELATE raum:330->gehoert_zu_teilprojekt->teilprojekt:zoologische_sammlung;
RELATE raum:330->hat_funktionsbereich->funktionsbereich:sammlungsrume;
RELATE raum:330->hat_verortung->verortung:bestand_neubau;
RELATE raum:330->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 331: Lager Nasssammlung
UPSERT raum:331 SET
    nummer = 331,
    bezeichnung = 'Lager Nasssammlung',
    teil_der_beauftragung = true,
    nc5_code = '35131',
    nc5_bezeichnung = 'Chemisch-technisches Labor mit bes. RLT-Anforderungen',
    flaeche_nuf_1_6 = 41.76,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:331->ist_raumtyp->raumtyp:zoosa_1_1;
RELATE raum:331->gehoert_zu_teilprojekt->teilprojekt:zoologische_sammlung;
RELATE raum:331->hat_funktionsbereich->funktionsbereich:sammlungsrume;
RELATE raum:331->hat_verortung->verortung:bestand_neubau;
RELATE raum:331->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 332: Präparatorenwerkstatt
UPSERT raum:332 SET
    nummer = 332,
    bezeichnung = 'Präparatorenwerkstatt',
    teil_der_beauftragung = true,
    nc5_code = '35131',
    nc5_bezeichnung = 'Chemisch-technisches Labor mit bes. RLT-Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:332->ist_raumtyp->raumtyp:zoosa_3;
RELATE raum:332->gehoert_zu_teilprojekt->teilprojekt:zoologische_sammlung;
RELATE raum:332->hat_funktionsbereich->funktionsbereich:sammlungsrume;
RELATE raum:332->hat_verortung->verortung:bestand_neubau;
RELATE raum:332->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 333: Arbeitsraum Studierende (ehem.Tierhaltungsraum)
UPSERT raum:333 SET
    nummer = 333,
    bezeichnung = 'Arbeitsraum Studierende (ehem.Tierhaltungsraum)',
    teil_der_beauftragung = true,
    nc5_code = '35131',
    nc5_bezeichnung = 'Chemisch-technisches Labor mit bes. RLT-Anforderungen',
    flaeche_nuf_1_6 = 35.96,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:333->ist_raumtyp->raumtyp:zoosa_4;
RELATE raum:333->gehoert_zu_teilprojekt->teilprojekt:zoologische_sammlung;
RELATE raum:333->hat_funktionsbereich->funktionsbereich:sammlungsrume;
RELATE raum:333->hat_verortung->verortung:bestand_neubau;
RELATE raum:333->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 339: Meerwasser
UPSERT raum:339 SET
    nummer = 339,
    bezeichnung = 'Meerwasser',
    teil_der_beauftragung = true,
    nc5_code = '36221',
    nc5_bezeichnung = 'Tierhaltung experimentell',
    flaeche_nuf_1_6 = 96.76,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:339->ist_raumtyp->raumtyp:spt_01;
RELATE raum:339->gehoert_zu_teilprojekt->teilprojekt:spezialisten_tierhaltung;
RELATE raum:339->hat_funktionsbereich->funktionsbereich:spezialisten_tierhaltung;
RELATE raum:339->hat_verortung->verortung:bestand_neubau;
RELATE raum:339->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 340: Terrarien (Klimaraum)
UPSERT raum:340 SET
    nummer = 340,
    bezeichnung = 'Terrarien (Klimaraum)',
    teil_der_beauftragung = true,
    nc5_code = '36221',
    nc5_bezeichnung = 'Tierhaltung experimentell',
    flaeche_nuf_1_6 = 71.92,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:340->ist_raumtyp->raumtyp:spt_02;
RELATE raum:340->gehoert_zu_teilprojekt->teilprojekt:spezialisten_tierhaltung;
RELATE raum:340->hat_funktionsbereich->funktionsbereich:spezialisten_tierhaltung;
RELATE raum:340->hat_verortung->verortung:bestand_neubau;
RELATE raum:340->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 341: Reptilien/ Amphibien
UPSERT raum:341 SET
    nummer = 341,
    bezeichnung = 'Reptilien/ Amphibien',
    teil_der_beauftragung = true,
    nc5_code = '36221',
    nc5_bezeichnung = 'Tierhaltung experimentell',
    flaeche_nuf_1_6 = 95.48,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:341->ist_raumtyp->raumtyp:spt_03;
RELATE raum:341->gehoert_zu_teilprojekt->teilprojekt:spezialisten_tierhaltung;
RELATE raum:341->hat_funktionsbereich->funktionsbereich:spezialisten_tierhaltung;
RELATE raum:341->hat_verortung->verortung:bestand_neubau;
RELATE raum:341->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 342: Fische
UPSERT raum:342 SET
    nummer = 342,
    bezeichnung = 'Fische',
    teil_der_beauftragung = true,
    nc5_code = '36221',
    nc5_bezeichnung = 'Tierhaltung experimentell',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:342->ist_raumtyp->raumtyp:spt_04;
RELATE raum:342->gehoert_zu_teilprojekt->teilprojekt:spezialisten_tierhaltung;
RELATE raum:342->hat_funktionsbereich->funktionsbereich:spezialisten_tierhaltung;
RELATE raum:342->hat_verortung->verortung:bestand_neubau;
RELATE raum:342->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 343: Insekten
UPSERT raum:343 SET
    nummer = 343,
    bezeichnung = 'Insekten',
    teil_der_beauftragung = true,
    nc5_code = '36221',
    nc5_bezeichnung = 'Tierhaltung experimentell',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:343->ist_raumtyp->raumtyp:spt_05;
RELATE raum:343->gehoert_zu_teilprojekt->teilprojekt:spezialisten_tierhaltung;
RELATE raum:343->hat_funktionsbereich->funktionsbereich:spezialisten_tierhaltung;
RELATE raum:343->hat_verortung->verortung:bestand_neubau;
RELATE raum:343->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 345: Vorbereitungs- und Rückhalteraum
UPSERT raum:345 SET
    nummer = 345,
    bezeichnung = 'Vorbereitungs- und Rückhalteraum',
    teil_der_beauftragung = true,
    nc5_code = '36221',
    nc5_bezeichnung = 'Tierhaltung experimentell',
    flaeche_nuf_1_6 = 35.96,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:345->ist_raumtyp->raumtyp:spt_06;
RELATE raum:345->gehoert_zu_teilprojekt->teilprojekt:spezialisten_tierhaltung;
RELATE raum:345->hat_funktionsbereich->funktionsbereich:spezialisten_tierhaltung;
RELATE raum:345->hat_verortung->verortung:bestand_neubau;
RELATE raum:345->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 346: Insekten
UPSERT raum:346 SET
    nummer = 346,
    bezeichnung = 'Insekten',
    teil_der_beauftragung = true,
    nc5_code = '36221',
    nc5_bezeichnung = 'Tierhaltung experimentell',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:346->ist_raumtyp->raumtyp:spt_05;
RELATE raum:346->gehoert_zu_teilprojekt->teilprojekt:spezialisten_tierhaltung;
RELATE raum:346->hat_funktionsbereich->funktionsbereich:spezialisten_tierhaltung;
RELATE raum:346->hat_verortung->verortung:neubau;
RELATE raum:346->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 347: Tierhaltungsraum
UPSERT raum:347 SET
    nummer = 347,
    bezeichnung = 'Tierhaltungsraum',
    teil_der_beauftragung = true,
    nc5_code = '36421',
    nc5_bezeichnung = 'Käfighaltung mit RLT-Anforderungen',
    flaeche_nuf_1_6 = 21.6,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:347->ist_raumtyp->raumtyp:mh_01;
RELATE raum:347->gehoert_zu_teilprojekt->teilprojekt:biologie_tierhaltung;
RELATE raum:347->hat_funktionsbereich->funktionsbereich:zone_2;
RELATE raum:347->hat_verortung->verortung:neubau;
RELATE raum:347->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 348: Tierhaltungsraum
UPSERT raum:348 SET
    nummer = 348,
    bezeichnung = 'Tierhaltungsraum',
    teil_der_beauftragung = true,
    nc5_code = '36421',
    nc5_bezeichnung = 'Käfighaltung mit RLT-Anforderungen',
    flaeche_nuf_1_6 = 21.6,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:348->ist_raumtyp->raumtyp:mh_01;
RELATE raum:348->gehoert_zu_teilprojekt->teilprojekt:biologie_tierhaltung;
RELATE raum:348->hat_funktionsbereich->funktionsbereich:zone_2;
RELATE raum:348->hat_verortung->verortung:neubau;
RELATE raum:348->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 349: Tierhaltungsraum
UPSERT raum:349 SET
    nummer = 349,
    bezeichnung = 'Tierhaltungsraum',
    teil_der_beauftragung = true,
    nc5_code = '36421',
    nc5_bezeichnung = 'Käfighaltung mit RLT-Anforderungen',
    flaeche_nuf_1_6 = 21.6,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:349->ist_raumtyp->raumtyp:mh_01;
RELATE raum:349->gehoert_zu_teilprojekt->teilprojekt:biologie_tierhaltung;
RELATE raum:349->hat_funktionsbereich->funktionsbereich:zone_2;
RELATE raum:349->hat_verortung->verortung:neubau;
RELATE raum:349->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 350: Tierhaltungsraum
UPSERT raum:350 SET
    nummer = 350,
    bezeichnung = 'Tierhaltungsraum',
    teil_der_beauftragung = true,
    nc5_code = '36421',
    nc5_bezeichnung = 'Käfighaltung mit RLT-Anforderungen',
    flaeche_nuf_1_6 = 21.6,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:350->ist_raumtyp->raumtyp:mh_01;
RELATE raum:350->gehoert_zu_teilprojekt->teilprojekt:biologie_tierhaltung;
RELATE raum:350->hat_funktionsbereich->funktionsbereich:zone_1;
RELATE raum:350->hat_verortung->verortung:neubau;
RELATE raum:350->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 351: Tierhaltungsraum
UPSERT raum:351 SET
    nummer = 351,
    bezeichnung = 'Tierhaltungsraum',
    teil_der_beauftragung = true,
    nc5_code = '36421',
    nc5_bezeichnung = 'Käfighaltung mit RLT-Anforderungen',
    flaeche_nuf_1_6 = 21.6,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:351->ist_raumtyp->raumtyp:mh_01;
RELATE raum:351->gehoert_zu_teilprojekt->teilprojekt:biologie_tierhaltung;
RELATE raum:351->hat_funktionsbereich->funktionsbereich:zone_1;
RELATE raum:351->hat_verortung->verortung:neubau;
RELATE raum:351->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 352: Tierhaltungsraum
UPSERT raum:352 SET
    nummer = 352,
    bezeichnung = 'Tierhaltungsraum',
    teil_der_beauftragung = true,
    nc5_code = '36421',
    nc5_bezeichnung = 'Käfighaltung mit RLT-Anforderungen',
    flaeche_nuf_1_6 = 21.6,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:352->ist_raumtyp->raumtyp:mh_01;
RELATE raum:352->gehoert_zu_teilprojekt->teilprojekt:biologie_tierhaltung;
RELATE raum:352->hat_funktionsbereich->funktionsbereich:zone_1;
RELATE raum:352->hat_verortung->verortung:neubau;
RELATE raum:352->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 353: Tierhaltungsraum
UPSERT raum:353 SET
    nummer = 353,
    bezeichnung = 'Tierhaltungsraum',
    teil_der_beauftragung = true,
    nc5_code = '36421',
    nc5_bezeichnung = 'Käfighaltung mit RLT-Anforderungen',
    flaeche_nuf_1_6 = 21.6,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:353->ist_raumtyp->raumtyp:mh_01;
RELATE raum:353->gehoert_zu_teilprojekt->teilprojekt:biologie_tierhaltung;
RELATE raum:353->hat_funktionsbereich->funktionsbereich:zone_1;
RELATE raum:353->hat_verortung->verortung:neubau;
RELATE raum:353->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 354: Tierhaltungsraum
UPSERT raum:354 SET
    nummer = 354,
    bezeichnung = 'Tierhaltungsraum',
    teil_der_beauftragung = true,
    nc5_code = '36421',
    nc5_bezeichnung = 'Käfighaltung mit RLT-Anforderungen',
    flaeche_nuf_1_6 = 21.6,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:354->ist_raumtyp->raumtyp:mh_01;
RELATE raum:354->gehoert_zu_teilprojekt->teilprojekt:biologie_tierhaltung;
RELATE raum:354->hat_funktionsbereich->funktionsbereich:zone_1;
RELATE raum:354->hat_verortung->verortung:neubau;
RELATE raum:354->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 355: Tierannahme-und abgabe
UPSERT raum:355 SET
    nummer = 355,
    bezeichnung = 'Tierannahme-und abgabe',
    teil_der_beauftragung = true,
    nc5_code = '35421',
    nc5_bezeichnung = 'Labor mit besonderen Hygieneanforderungen, Zugang über Schleuse ...',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:355->ist_raumtyp->raumtyp:mh_03;
RELATE raum:355->gehoert_zu_teilprojekt->teilprojekt:biologie_tierhaltung;
RELATE raum:355->hat_funktionsbereich->funktionsbereich:zone_1;
RELATE raum:355->hat_verortung->verortung:neubau;
RELATE raum:355->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 356: Labor Embryotransfer & Kyrokoservierung
UPSERT raum:356 SET
    nummer = 356,
    bezeichnung = 'Labor Embryotransfer & Kyrokoservierung',
    teil_der_beauftragung = true,
    nc5_code = '35421',
    nc5_bezeichnung = 'Labor mit besonderen Hygieneanforderungen, Zugang über Schleuse ...',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:356->ist_raumtyp->raumtyp:mh_02;
RELATE raum:356->gehoert_zu_teilprojekt->teilprojekt:biologie_tierhaltung;
RELATE raum:356->hat_funktionsbereich->funktionsbereich:zone_1;
RELATE raum:356->hat_verortung->verortung:neubau;
RELATE raum:356->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 357: Spülküche/Käfigwaschanlage
UPSERT raum:357 SET
    nummer = 357,
    bezeichnung = 'Spülküche/Käfigwaschanlage',
    teil_der_beauftragung = true,
    nc5_code = '39323',
    nc5_bezeichnung = 'Käfigdesinfektion maschinell, unrein, RLT1',
    flaeche_nuf_1_6 = 80.98,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:357->ist_raumtyp->raumtyp:mh_08;
RELATE raum:357->gehoert_zu_teilprojekt->teilprojekt:biologie_tierhaltung;
RELATE raum:357->hat_funktionsbereich->funktionsbereich:zone_1;
RELATE raum:357->hat_verortung->verortung:neubau;
RELATE raum:357->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 358: Sterilgutlager
UPSERT raum:358 SET
    nummer = 358,
    bezeichnung = 'Sterilgutlager',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 21.6,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:358->ist_raumtyp->raumtyp:mh_10;
RELATE raum:358->gehoert_zu_teilprojekt->teilprojekt:biologie_tierhaltung;
RELATE raum:358->hat_funktionsbereich->funktionsbereich:zone_2;
RELATE raum:358->hat_verortung->verortung:neubau;
RELATE raum:358->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 359: Sterilgutlager
UPSERT raum:359 SET
    nummer = 359,
    bezeichnung = 'Sterilgutlager',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 21.6,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:359->ist_raumtyp->raumtyp:mh_10;
RELATE raum:359->gehoert_zu_teilprojekt->teilprojekt:biologie_tierhaltung;
RELATE raum:359->hat_funktionsbereich->funktionsbereich:zone_2;
RELATE raum:359->hat_verortung->verortung:neubau;
RELATE raum:359->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 360: Sterilgutlager
UPSERT raum:360 SET
    nummer = 360,
    bezeichnung = 'Sterilgutlager',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 21.6,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:360->ist_raumtyp->raumtyp:mh_10;
RELATE raum:360->gehoert_zu_teilprojekt->teilprojekt:biologie_tierhaltung;
RELATE raum:360->hat_funktionsbereich->funktionsbereich:zone_1;
RELATE raum:360->hat_verortung->verortung:neubau;
RELATE raum:360->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 361: Futtermittel-Lager
UPSERT raum:361 SET
    nummer = 361,
    bezeichnung = 'Futtermittel-Lager',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 28.52,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:361->ist_raumtyp->raumtyp:mh_11;
RELATE raum:361->gehoert_zu_teilprojekt->teilprojekt:biologie_tierhaltung;
RELATE raum:361->hat_funktionsbereich->funktionsbereich:zone_1;
RELATE raum:361->hat_verortung->verortung:neubau;
RELATE raum:361->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 362: Materiallager
UPSERT raum:362 SET
    nummer = 362,
    bezeichnung = 'Materiallager',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 50.84,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:362->ist_raumtyp->raumtyp:mh_14;
RELATE raum:362->gehoert_zu_teilprojekt->teilprojekt:biologie_tierhaltung;
RELATE raum:362->hat_funktionsbereich->funktionsbereich:zone_2;
RELATE raum:362->hat_verortung->verortung:neubau;
RELATE raum:362->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 363: Quarantäne
UPSERT raum:363 SET
    nummer = 363,
    bezeichnung = 'Quarantäne',
    teil_der_beauftragung = true,
    nc5_code = '36421',
    nc5_bezeichnung = 'Käfighaltung mit RLT-Anforderungen',
    flaeche_nuf_1_6 = 21.6,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:363->ist_raumtyp->raumtyp:mh_15;
RELATE raum:363->gehoert_zu_teilprojekt->teilprojekt:biologie_tierhaltung;
RELATE raum:363->hat_funktionsbereich->funktionsbereich:tierhaltung;
RELATE raum:363->hat_verortung->verortung:neubau;
RELATE raum:363->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 364: Putzmittel
UPSERT raum:364 SET
    nummer = 364,
    bezeichnung = 'Putzmittel',
    teil_der_beauftragung = true,
    nc5_code = '78512',
    nc5_bezeichnung = 'Putzraum mit Ausguß und RLT 1',
    flaeche_nuf_7_9 = 8.16,
    anzahl_raeume = 1,
    din277 = 'NUF7';
RELATE raum:364->ist_raumtyp->raumtyp:fn_12;
RELATE raum:364->gehoert_zu_teilprojekt->teilprojekt:biologie_tierhaltung;
RELATE raum:364->hat_funktionsbereich->funktionsbereich:tierhaltung;
RELATE raum:364->hat_verortung->verortung:neubau;
RELATE raum:364->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 368: Solzialraum
UPSERT raum:368 SET
    nummer = 368,
    bezeichnung = 'Solzialraum',
    teil_der_beauftragung = false,
    nc5_code = '12121',
    nc5_bezeichnung = 'Aufenthaltsraum mit Teeküche',
    flaeche_nuf_1_6 = 27.4,
    anzahl_raeume = 1,
    din277 = 'NUF1';
RELATE raum:368->ist_raumtyp->raumtyp:mh_15;
RELATE raum:368->gehoert_zu_teilprojekt->teilprojekt:biologie_tierhaltung;
RELATE raum:368->hat_funktionsbereich->funktionsbereich:zone_2;
RELATE raum:368->hat_verortung->verortung:neubau;
RELATE raum:368->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 384: Arbeitsraum Gärtner
UPSERT raum:384 SET
    nummer = 384,
    bezeichnung = 'Arbeitsraum Gärtner',
    teil_der_beauftragung = true,
    nc5_code = '37113',
    nc5_bezeichnung = 'Pflanzenzuchtvorbereitungsraum',
    flaeche_nuf_1_6 = 18.8,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:384->ist_raumtyp->raumtyp:gwh_04;
RELATE raum:384->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:384->hat_funktionsbereich->funktionsbereich:sammlung;
RELATE raum:384->hat_verortung->verortung:neubau;
RELATE raum:384->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 385: Aufenthaltsraum
UPSERT raum:385 SET
    nummer = 385,
    bezeichnung = 'Aufenthaltsraum',
    teil_der_beauftragung = false,
    nc5_code = '12121',
    nc5_bezeichnung = 'Aufenthaltsraum mit Teeküche',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 4,
    anzahl_raeume = 1,
    din277 = 'NUF1';
RELATE raum:385->ist_raumtyp->raumtyp:gwh_10;
RELATE raum:385->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:385->hat_funktionsbereich->funktionsbereich:gewchshuser_geteilte_nutzung;
RELATE raum:385->hat_verortung->verortung:neubau;
RELATE raum:385->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 386: Büro
UPSERT raum:386 SET
    nummer = 386,
    bezeichnung = 'Büro',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:386->ist_raumtyp->raumtyp:bro_01;
RELATE raum:386->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:386->hat_funktionsbereich->funktionsbereich:gewchshuser_geteilte_nutzung;
RELATE raum:386->hat_verortung->verortung:neubau;
RELATE raum:386->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 387: Erdlager mit Erdsterilisation
UPSERT raum:387 SET
    nummer = 387,
    bezeichnung = 'Erdlager mit Erdsterilisation',
    teil_der_beauftragung = true,
    nc5_code = '41151',
    nc5_bezeichnung = 'Lagerraum für sterile Erde',
    flaeche_nuf_1_6 = 48.41,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:387->ist_raumtyp->raumtyp:gwh_18;
RELATE raum:387->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:387->hat_funktionsbereich->funktionsbereich:gewchshuser_geteilte_nutzung;
RELATE raum:387->hat_verortung->verortung:neubau;
RELATE raum:387->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 388: Gewächshaus Kompartiment Forschung S1
UPSERT raum:388 SET
    nummer = 388,
    bezeichnung = 'Gewächshaus Kompartiment Forschung S1',
    teil_der_beauftragung = true,
    nc5_code = '37211',
    nc5_bezeichnung = 'Gewächshaus experimentell mit besonderen klimatischen Anforderungen und RLT3',
    flaeche_nuf_1_6 = 31.5,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:388->ist_raumtyp->raumtyp:gwh_01;
RELATE raum:388->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:388->hat_funktionsbereich->funktionsbereich:forschung_s1;
RELATE raum:388->hat_verortung->verortung:neubau;
RELATE raum:388->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 389: Gewächshaus Kompartiment Forschung S1
UPSERT raum:389 SET
    nummer = 389,
    bezeichnung = 'Gewächshaus Kompartiment Forschung S1',
    teil_der_beauftragung = true,
    nc5_code = '37211',
    nc5_bezeichnung = 'Gewächshaus experimentell mit besonderen klimatischen Anforderungen und RLT3',
    flaeche_nuf_1_6 = 31.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:389->ist_raumtyp->raumtyp:gwh_01;
RELATE raum:389->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:389->hat_funktionsbereich->funktionsbereich:forschung_s1;
RELATE raum:389->hat_verortung->verortung:neubau;
RELATE raum:389->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 390: Gewächshaus Kompartiment Forschung S1
UPSERT raum:390 SET
    nummer = 390,
    bezeichnung = 'Gewächshaus Kompartiment Forschung S1',
    teil_der_beauftragung = true,
    nc5_code = '37211',
    nc5_bezeichnung = 'Gewächshaus experimentell mit besonderen klimatischen Anforderungen und RLT3',
    flaeche_nuf_1_6 = 31.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:390->ist_raumtyp->raumtyp:gwh_01;
RELATE raum:390->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:390->hat_funktionsbereich->funktionsbereich:forschung_s1;
RELATE raum:390->hat_verortung->verortung:neubau;
RELATE raum:390->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 391: Gewächshaus Kompartiment Forschung S1
UPSERT raum:391 SET
    nummer = 391,
    bezeichnung = 'Gewächshaus Kompartiment Forschung S1',
    teil_der_beauftragung = true,
    nc5_code = '37211',
    nc5_bezeichnung = 'Gewächshaus experimentell mit besonderen klimatischen Anforderungen und RLT3',
    flaeche_nuf_1_6 = 31.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:391->ist_raumtyp->raumtyp:gwh_01;
RELATE raum:391->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:391->hat_funktionsbereich->funktionsbereich:forschung_s1;
RELATE raum:391->hat_verortung->verortung:neubau;
RELATE raum:391->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 392: Gewächshaus Kompartiment Forschung S1
UPSERT raum:392 SET
    nummer = 392,
    bezeichnung = 'Gewächshaus Kompartiment Forschung S1',
    teil_der_beauftragung = true,
    nc5_code = '37211',
    nc5_bezeichnung = 'Gewächshaus experimentell mit besonderen klimatischen Anforderungen und RLT3',
    flaeche_nuf_1_6 = 31.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:392->ist_raumtyp->raumtyp:gwh_01;
RELATE raum:392->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:392->hat_funktionsbereich->funktionsbereich:forschung_s1;
RELATE raum:392->hat_verortung->verortung:neubau;
RELATE raum:392->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 393: Gewächshaus Kompartiment Forschung S1
UPSERT raum:393 SET
    nummer = 393,
    bezeichnung = 'Gewächshaus Kompartiment Forschung S1',
    teil_der_beauftragung = true,
    nc5_code = '37211',
    nc5_bezeichnung = 'Gewächshaus experimentell mit besonderen klimatischen Anforderungen und RLT3',
    flaeche_nuf_1_6 = 31.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:393->ist_raumtyp->raumtyp:gwh_01;
RELATE raum:393->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:393->hat_funktionsbereich->funktionsbereich:forschung_s1;
RELATE raum:393->hat_verortung->verortung:neubau;
RELATE raum:393->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 394: Gewächshaus Kompartiment Forschung S1
UPSERT raum:394 SET
    nummer = 394,
    bezeichnung = 'Gewächshaus Kompartiment Forschung S1',
    teil_der_beauftragung = true,
    nc5_code = '37211',
    nc5_bezeichnung = 'Gewächshaus experimentell mit besonderen klimatischen Anforderungen und RLT3',
    flaeche_nuf_1_6 = 31.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:394->ist_raumtyp->raumtyp:gwh_01;
RELATE raum:394->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:394->hat_funktionsbereich->funktionsbereich:forschung_s1;
RELATE raum:394->hat_verortung->verortung:neubau;
RELATE raum:394->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 395: Gewächshaus Kompartiment Forschung S1
UPSERT raum:395 SET
    nummer = 395,
    bezeichnung = 'Gewächshaus Kompartiment Forschung S1',
    teil_der_beauftragung = true,
    nc5_code = '37211',
    nc5_bezeichnung = 'Gewächshaus experimentell mit besonderen klimatischen Anforderungen und RLT3',
    flaeche_nuf_1_6 = 31.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:395->ist_raumtyp->raumtyp:gwh_01;
RELATE raum:395->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:395->hat_funktionsbereich->funktionsbereich:forschung_s1;
RELATE raum:395->hat_verortung->verortung:neubau;
RELATE raum:395->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 396: Gewächshaus Kompartiment Forschung S1
UPSERT raum:396 SET
    nummer = 396,
    bezeichnung = 'Gewächshaus Kompartiment Forschung S1',
    teil_der_beauftragung = true,
    nc5_code = '37211',
    nc5_bezeichnung = 'Gewächshaus experimentell mit besonderen klimatischen Anforderungen und RLT3',
    flaeche_nuf_1_6 = 31.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:396->ist_raumtyp->raumtyp:gwh_01;
RELATE raum:396->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:396->hat_funktionsbereich->funktionsbereich:forschung_s1;
RELATE raum:396->hat_verortung->verortung:neubau;
RELATE raum:396->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 397: Gewächshaus Kompartiment Forschung S1
UPSERT raum:397 SET
    nummer = 397,
    bezeichnung = 'Gewächshaus Kompartiment Forschung S1',
    teil_der_beauftragung = true,
    nc5_code = '37211',
    nc5_bezeichnung = 'Gewächshaus experimentell mit besonderen klimatischen Anforderungen und RLT3',
    flaeche_nuf_1_6 = 31.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:397->ist_raumtyp->raumtyp:gwh_01;
RELATE raum:397->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:397->hat_funktionsbereich->funktionsbereich:forschung_s1;
RELATE raum:397->hat_verortung->verortung:neubau;
RELATE raum:397->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 398: Gewächshaus Kompartiment Forschung S1
UPSERT raum:398 SET
    nummer = 398,
    bezeichnung = 'Gewächshaus Kompartiment Forschung S1',
    teil_der_beauftragung = true,
    nc5_code = '37211',
    nc5_bezeichnung = 'Gewächshaus experimentell mit besonderen klimatischen Anforderungen und RLT3',
    flaeche_nuf_1_6 = 31.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:398->ist_raumtyp->raumtyp:gwh_01;
RELATE raum:398->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:398->hat_funktionsbereich->funktionsbereich:forschung_s1;
RELATE raum:398->hat_verortung->verortung:neubau;
RELATE raum:398->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 399: Gewächshaus Kompartiment Forschung S1
UPSERT raum:399 SET
    nummer = 399,
    bezeichnung = 'Gewächshaus Kompartiment Forschung S1',
    teil_der_beauftragung = true,
    nc5_code = '37211',
    nc5_bezeichnung = 'Gewächshaus experimentell mit besonderen klimatischen Anforderungen und RLT3',
    flaeche_nuf_1_6 = 31.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:399->ist_raumtyp->raumtyp:gwh_01;
RELATE raum:399->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:399->hat_funktionsbereich->funktionsbereich:forschung_s1;
RELATE raum:399->hat_verortung->verortung:neubau;
RELATE raum:399->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 400: Gewächshaus Kompartiment Forschung S1
UPSERT raum:400 SET
    nummer = 400,
    bezeichnung = 'Gewächshaus Kompartiment Forschung S1',
    teil_der_beauftragung = true,
    nc5_code = '37211',
    nc5_bezeichnung = 'Gewächshaus experimentell mit besonderen klimatischen Anforderungen und RLT3',
    flaeche_nuf_1_6 = 31.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:400->ist_raumtyp->raumtyp:gwh_01;
RELATE raum:400->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:400->hat_funktionsbereich->funktionsbereich:forschung_s1;
RELATE raum:400->hat_verortung->verortung:neubau;
RELATE raum:400->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 401: Gewächshaus Kompartiment Forschung S1
UPSERT raum:401 SET
    nummer = 401,
    bezeichnung = 'Gewächshaus Kompartiment Forschung S1',
    teil_der_beauftragung = true,
    nc5_code = '37211',
    nc5_bezeichnung = 'Gewächshaus experimentell mit besonderen klimatischen Anforderungen und RLT3',
    flaeche_nuf_1_6 = 31.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:401->ist_raumtyp->raumtyp:gwh_01_1;
RELATE raum:401->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:401->hat_funktionsbereich->funktionsbereich:forschung_s1;
RELATE raum:401->hat_verortung->verortung:neubau;
RELATE raum:401->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 402: Gewächshaus Kompartiment Forschung S1
UPSERT raum:402 SET
    nummer = 402,
    bezeichnung = 'Gewächshaus Kompartiment Forschung S1',
    teil_der_beauftragung = true,
    nc5_code = '37211',
    nc5_bezeichnung = 'Gewächshaus experimentell mit besonderen klimatischen Anforderungen und RLT3',
    flaeche_nuf_1_6 = 31.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:402->ist_raumtyp->raumtyp:gwh_01_1;
RELATE raum:402->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:402->hat_funktionsbereich->funktionsbereich:forschung_s1;
RELATE raum:402->hat_verortung->verortung:neubau;
RELATE raum:402->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 403: Vorbereitungsraum Gewächshaus S1
UPSERT raum:403 SET
    nummer = 403,
    bezeichnung = 'Vorbereitungsraum Gewächshaus S1',
    teil_der_beauftragung = true,
    nc5_code = '37311',
    nc5_bezeichnung = 'Gewächshausraum S1',
    flaeche_nuf_1_6 = 18.8,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:403->ist_raumtyp->raumtyp:gwh_05;
RELATE raum:403->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:403->hat_funktionsbereich->funktionsbereich:forschung_s1;
RELATE raum:403->hat_verortung->verortung:neubau;
RELATE raum:403->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 404: Nachbereitungsraum S1
UPSERT raum:404 SET
    nummer = 404,
    bezeichnung = 'Nachbereitungsraum S1',
    teil_der_beauftragung = true,
    nc5_code = '37311',
    nc5_bezeichnung = 'Gewächshausraum S1',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:404->ist_raumtyp->raumtyp:gwh_06;
RELATE raum:404->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:404->hat_funktionsbereich->funktionsbereich:forschung_s1;
RELATE raum:404->hat_verortung->verortung:neubau;
RELATE raum:404->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 405: Lager Gewächshaus S1 groß
UPSERT raum:405 SET
    nummer = 405,
    bezeichnung = 'Lager Gewächshaus S1 groß',
    teil_der_beauftragung = true,
    nc5_code = '41152',
    nc5_bezeichnung = 'Pflanzentopflager mit Spüle und RLT 3',
    flaeche_nuf_1_6 = 50.84,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:405->ist_raumtyp->raumtyp:gwh_12;
RELATE raum:405->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:405->hat_funktionsbereich->funktionsbereich:forschung_s1;
RELATE raum:405->hat_verortung->verortung:neubau;
RELATE raum:405->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 406: Lager Gewächshaus S1 klein
UPSERT raum:406 SET
    nummer = 406,
    bezeichnung = 'Lager Gewächshaus S1 klein',
    teil_der_beauftragung = true,
    nc5_code = '41152',
    nc5_bezeichnung = 'Pflanzentopflager mit Spüle und RLT 3',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:406->ist_raumtyp->raumtyp:gwh_13;
RELATE raum:406->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:406->hat_funktionsbereich->funktionsbereich:forschung_s1;
RELATE raum:406->hat_verortung->verortung:neubau;
RELATE raum:406->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 407: Abreifkammer
UPSERT raum:407 SET
    nummer = 407,
    bezeichnung = 'Abreifkammer',
    teil_der_beauftragung = true,
    nc5_code = '41152',
    nc5_bezeichnung = 'Pflanzentopflager mit Spüle und RLT 3',
    flaeche_nuf_1_6 = 31.5,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:407->ist_raumtyp->raumtyp:gwh_17;
RELATE raum:407->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:407->hat_funktionsbereich->funktionsbereich:forschung_s1;
RELATE raum:407->hat_verortung->verortung:neubau;
RELATE raum:407->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 408: Vorbereitungsraum Klimakammer
UPSERT raum:408 SET
    nummer = 408,
    bezeichnung = 'Vorbereitungsraum Klimakammer',
    teil_der_beauftragung = true,
    nc5_code = '37311',
    nc5_bezeichnung = 'Gewächshausraum S1',
    flaeche_nuf_1_6 = 18.6,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:408->ist_raumtyp->raumtyp:gwh_05;
RELATE raum:408->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:408->hat_funktionsbereich->funktionsbereich:klimakammer;
RELATE raum:408->hat_verortung->verortung:neubau;
RELATE raum:408->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 409: Nachbereitungsraum Klimakammer
UPSERT raum:409 SET
    nummer = 409,
    bezeichnung = 'Nachbereitungsraum Klimakammer',
    teil_der_beauftragung = true,
    nc5_code = '37311',
    nc5_bezeichnung = 'Gewächshausraum S1',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:409->ist_raumtyp->raumtyp:gwh_06;
RELATE raum:409->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:409->hat_funktionsbereich->funktionsbereich:klimakammer;
RELATE raum:409->hat_verortung->verortung:neubau;
RELATE raum:409->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 410: Raum mit Klimaschrank
UPSERT raum:410 SET
    nummer = 410,
    bezeichnung = 'Raum mit Klimaschrank',
    teil_der_beauftragung = true,
    nc5_code = '37212',
    nc5_bezeichnung = 'Pflanzenzuchtraum experimentell (Raum mit Klimakammern bestückt)',
    flaeche_nuf_1_6 = 35.96,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:410->ist_raumtyp->raumtyp:gwh_08;
RELATE raum:410->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:410->hat_funktionsbereich->funktionsbereich:klimakammer;
RELATE raum:410->hat_verortung->verortung:neubau;
RELATE raum:410->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 414: Klimakammer
UPSERT raum:414 SET
    nummer = 414,
    bezeichnung = 'Klimakammer',
    teil_der_beauftragung = true,
    nc5_code = '37213',
    nc5_bezeichnung = 'Klimakammer,RLT 2',
    flaeche_nuf_1_6 = 13.2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:414->ist_raumtyp->raumtyp:gwh_09;
RELATE raum:414->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:414->hat_funktionsbereich->funktionsbereich:klimakammer;
RELATE raum:414->hat_verortung->verortung:neubau;
RELATE raum:414->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 419: Klimakammer
UPSERT raum:419 SET
    nummer = 419,
    bezeichnung = 'Klimakammer',
    teil_der_beauftragung = true,
    nc5_code = '37213',
    nc5_bezeichnung = 'Klimakammer,RLT 2',
    flaeche_nuf_1_6 = 13.2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:419->ist_raumtyp->raumtyp:gwh_09;
RELATE raum:419->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:419->hat_funktionsbereich->funktionsbereich:klimakammer;
RELATE raum:419->hat_verortung->verortung:neubau;
RELATE raum:419->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 424: Klimakammer
UPSERT raum:424 SET
    nummer = 424,
    bezeichnung = 'Klimakammer',
    teil_der_beauftragung = true,
    nc5_code = '37213',
    nc5_bezeichnung = 'Klimakammer,RLT 2',
    flaeche_nuf_1_6 = 13.2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:424->ist_raumtyp->raumtyp:gwh_09;
RELATE raum:424->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:424->hat_funktionsbereich->funktionsbereich:klimakammer;
RELATE raum:424->hat_verortung->verortung:neubau;
RELATE raum:424->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 429: Klimakammer
UPSERT raum:429 SET
    nummer = 429,
    bezeichnung = 'Klimakammer',
    teil_der_beauftragung = true,
    nc5_code = '37213',
    nc5_bezeichnung = 'Klimakammer,RLT 2',
    flaeche_nuf_1_6 = 13.2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:429->ist_raumtyp->raumtyp:gwh_09;
RELATE raum:429->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:429->hat_funktionsbereich->funktionsbereich:klimakammer;
RELATE raum:429->hat_verortung->verortung:neubau;
RELATE raum:429->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 430: Klimakammer
UPSERT raum:430 SET
    nummer = 430,
    bezeichnung = 'Klimakammer',
    teil_der_beauftragung = true,
    nc5_code = '37213',
    nc5_bezeichnung = 'Klimakammer,RLT 2',
    flaeche_nuf_1_6 = 13.2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:430->ist_raumtyp->raumtyp:gwh_09;
RELATE raum:430->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:430->hat_funktionsbereich->funktionsbereich:klimakammer;
RELATE raum:430->hat_verortung->verortung:neubau;
RELATE raum:430->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 431: Klimakammer
UPSERT raum:431 SET
    nummer = 431,
    bezeichnung = 'Klimakammer',
    teil_der_beauftragung = true,
    nc5_code = '37213',
    nc5_bezeichnung = 'Klimakammer,RLT 2',
    flaeche_nuf_1_6 = 13.2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:431->ist_raumtyp->raumtyp:gwh_09;
RELATE raum:431->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:431->hat_funktionsbereich->funktionsbereich:klimakammer;
RELATE raum:431->hat_verortung->verortung:neubau;
RELATE raum:431->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 436: Klimakammer
UPSERT raum:436 SET
    nummer = 436,
    bezeichnung = 'Klimakammer',
    teil_der_beauftragung = true,
    nc5_code = '37213',
    nc5_bezeichnung = 'Klimakammer,RLT 2',
    flaeche_nuf_1_6 = 13.2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:436->ist_raumtyp->raumtyp:gwh_09;
RELATE raum:436->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:436->hat_funktionsbereich->funktionsbereich:klimakammer;
RELATE raum:436->hat_verortung->verortung:neubau;
RELATE raum:436->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 437: Klimakammer
UPSERT raum:437 SET
    nummer = 437,
    bezeichnung = 'Klimakammer',
    teil_der_beauftragung = true,
    nc5_code = '37213',
    nc5_bezeichnung = 'Klimakammer,RLT 2',
    flaeche_nuf_1_6 = 13.2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:437->ist_raumtyp->raumtyp:gwh_09;
RELATE raum:437->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:437->hat_funktionsbereich->funktionsbereich:klimakammer;
RELATE raum:437->hat_verortung->verortung:neubau;
RELATE raum:437->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 438: Klimakammer
UPSERT raum:438 SET
    nummer = 438,
    bezeichnung = 'Klimakammer',
    teil_der_beauftragung = true,
    nc5_code = '37213',
    nc5_bezeichnung = 'Klimakammer,RLT 2',
    flaeche_nuf_1_6 = 13.2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:438->ist_raumtyp->raumtyp:gwh_09;
RELATE raum:438->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:438->hat_funktionsbereich->funktionsbereich:klimakammer;
RELATE raum:438->hat_verortung->verortung:neubau;
RELATE raum:438->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 439: Klimakammer
UPSERT raum:439 SET
    nummer = 439,
    bezeichnung = 'Klimakammer',
    teil_der_beauftragung = true,
    nc5_code = '37213',
    nc5_bezeichnung = 'Klimakammer,RLT 2',
    flaeche_nuf_1_6 = 13.2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:439->ist_raumtyp->raumtyp:gwh_09;
RELATE raum:439->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:439->hat_funktionsbereich->funktionsbereich:klimakammer;
RELATE raum:439->hat_verortung->verortung:neubau;
RELATE raum:439->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 440: Klimakammer
UPSERT raum:440 SET
    nummer = 440,
    bezeichnung = 'Klimakammer',
    teil_der_beauftragung = true,
    nc5_code = '37213',
    nc5_bezeichnung = 'Klimakammer,RLT 2',
    flaeche_nuf_1_6 = 13.2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:440->ist_raumtyp->raumtyp:gwh_09;
RELATE raum:440->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:440->hat_funktionsbereich->funktionsbereich:klimakammer;
RELATE raum:440->hat_verortung->verortung:neubau;
RELATE raum:440->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 441: Klimakammer
UPSERT raum:441 SET
    nummer = 441,
    bezeichnung = 'Klimakammer',
    teil_der_beauftragung = true,
    nc5_code = '37213',
    nc5_bezeichnung = 'Klimakammer,RLT 2',
    flaeche_nuf_1_6 = 13.2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:441->ist_raumtyp->raumtyp:gwh_09;
RELATE raum:441->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:441->hat_funktionsbereich->funktionsbereich:klimakammer;
RELATE raum:441->hat_verortung->verortung:neubau;
RELATE raum:441->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 442: Klimakammer
UPSERT raum:442 SET
    nummer = 442,
    bezeichnung = 'Klimakammer',
    teil_der_beauftragung = true,
    nc5_code = '37213',
    nc5_bezeichnung = 'Klimakammer,RLT 2',
    flaeche_nuf_1_6 = 13.2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:442->ist_raumtyp->raumtyp:gwh_09;
RELATE raum:442->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:442->hat_funktionsbereich->funktionsbereich:klimakammer;
RELATE raum:442->hat_verortung->verortung:neubau;
RELATE raum:442->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 443: Klimakammer
UPSERT raum:443 SET
    nummer = 443,
    bezeichnung = 'Klimakammer',
    teil_der_beauftragung = true,
    nc5_code = '37213',
    nc5_bezeichnung = 'Klimakammer,RLT 2',
    flaeche_nuf_1_6 = 13.2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:443->ist_raumtyp->raumtyp:gwh_09;
RELATE raum:443->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:443->hat_funktionsbereich->funktionsbereich:klimakammer;
RELATE raum:443->hat_verortung->verortung:neubau;
RELATE raum:443->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 444: Klimakammer
UPSERT raum:444 SET
    nummer = 444,
    bezeichnung = 'Klimakammer',
    teil_der_beauftragung = true,
    nc5_code = '37213',
    nc5_bezeichnung = 'Klimakammer,RLT 2',
    flaeche_nuf_1_6 = 13.2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:444->ist_raumtyp->raumtyp:gwh_09;
RELATE raum:444->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:444->hat_funktionsbereich->funktionsbereich:klimakammer;
RELATE raum:444->hat_verortung->verortung:neubau;
RELATE raum:444->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 445: Klimaschrankraum
UPSERT raum:445 SET
    nummer = 445,
    bezeichnung = 'Klimaschrankraum',
    teil_der_beauftragung = true,
    nc5_code = '37212',
    nc5_bezeichnung = 'Pflanzenzuchtraum experimentell (Raum mit Klimakammern bestückt)',
    flaeche_nuf_1_6 = 35.96,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:445->ist_raumtyp->raumtyp:gwh_08;
RELATE raum:445->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:445->hat_funktionsbereich->funktionsbereich:klimakammer;
RELATE raum:445->hat_verortung->verortung:neubau;
RELATE raum:445->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 446: Lager Gewächshaus S1 klein
UPSERT raum:446 SET
    nummer = 446,
    bezeichnung = 'Lager Gewächshaus S1 klein',
    teil_der_beauftragung = true,
    nc5_code = '41152',
    nc5_bezeichnung = 'Pflanzentopflager mit Spüle und RLT 3',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:446->ist_raumtyp->raumtyp:gwh_13;
RELATE raum:446->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:446->hat_funktionsbereich->funktionsbereich:forschung_s1;
RELATE raum:446->hat_verortung->verortung:neubau;
RELATE raum:446->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 447: Lager Gewächshaus S1 klein
UPSERT raum:447 SET
    nummer = 447,
    bezeichnung = 'Lager Gewächshaus S1 klein',
    teil_der_beauftragung = true,
    nc5_code = '41152',
    nc5_bezeichnung = 'Pflanzentopflager mit Spüle und RLT 3',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:447->ist_raumtyp->raumtyp:gwh_13;
RELATE raum:447->gehoert_zu_teilprojekt->teilprojekt:biologie_gewchshaus;
RELATE raum:447->hat_funktionsbereich->funktionsbereich:forschung_s1;
RELATE raum:447->hat_verortung->verortung:neubau;
RELATE raum:447->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 474: Praktikum einfach trennbar
UPSERT raum:474 SET
    nummer = 474,
    bezeichnung = 'Praktikum einfach trennbar',
    teil_der_beauftragung = true,
    nc5_code = '53621',
    nc5_bezeichnung = 'Biologischer Übungsraum mit RLT 1',
    flaeche_nuf_1_6 = 157.56,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:474->ist_raumtyp->raumtyp:pl_3_1;
RELATE raum:474->gehoert_zu_teilprojekt->teilprojekt:biologie_praktika;
RELATE raum:474->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:474->hat_verortung->verortung:neubau;
RELATE raum:474->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 475: Praktikum einfach
UPSERT raum:475 SET
    nummer = 475,
    bezeichnung = 'Praktikum einfach',
    teil_der_beauftragung = true,
    nc5_code = '53621',
    nc5_bezeichnung = 'Biologischer Übungsraum mit RLT 1',
    flaeche_nuf_1_6 = 138.84,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:475->ist_raumtyp->raumtyp:pl_3;
RELATE raum:475->gehoert_zu_teilprojekt->teilprojekt:biologie_praktika;
RELATE raum:475->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:475->hat_verortung->verortung:neubau;
RELATE raum:475->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 476: Großpraktika
UPSERT raum:476 SET
    nummer = 476,
    bezeichnung = 'Großpraktika',
    teil_der_beauftragung = true,
    nc5_code = '53621',
    nc5_bezeichnung = 'Biologischer Übungsraum mit RLT 1',
    flaeche_nuf_1_6 = 445.22,
    personen_max = 113,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:476->ist_raumtyp->raumtyp:pl_1;
RELATE raum:476->gehoert_zu_teilprojekt->teilprojekt:biologie_praktika;
RELATE raum:476->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:476->hat_verortung->verortung:neubau;
RELATE raum:476->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 477: Praktikum
UPSERT raum:477 SET
    nummer = 477,
    bezeichnung = 'Praktikum',
    teil_der_beauftragung = true,
    nc5_code = '53621',
    nc5_bezeichnung = 'Biologischer Übungsraum mit RLT 1',
    flaeche_nuf_1_6 = 176.28,
    personen_max = 25,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:477->ist_raumtyp->raumtyp:pl_2;
RELATE raum:477->gehoert_zu_teilprojekt->teilprojekt:biologie_praktika;
RELATE raum:477->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:477->hat_verortung->verortung:neubau;
RELATE raum:477->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 478: Labor neu
UPSERT raum:478 SET
    nummer = 478,
    bezeichnung = 'Labor neu',
    teil_der_beauftragung = true,
    nc5_code = '53621',
    nc5_bezeichnung = 'Biologischer Übungsraum mit RLT 1',
    flaeche_nuf_1_6 = 92.04,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:478->ist_raumtyp->raumtyp:pl_5;
RELATE raum:478->gehoert_zu_teilprojekt->teilprojekt:biologie_praktika;
RELATE raum:478->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:478->hat_verortung->verortung:neubau;
RELATE raum:478->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 479: Labor neu
UPSERT raum:479 SET
    nummer = 479,
    bezeichnung = 'Labor neu',
    teil_der_beauftragung = true,
    nc5_code = '53621',
    nc5_bezeichnung = 'Biologischer Übungsraum mit RLT 1',
    flaeche_nuf_1_6 = 92.04,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:479->ist_raumtyp->raumtyp:pl_5;
RELATE raum:479->gehoert_zu_teilprojekt->teilprojekt:biologie_praktika;
RELATE raum:479->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:479->hat_verortung->verortung:neubau;
RELATE raum:479->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 480: Labor neu
UPSERT raum:480 SET
    nummer = 480,
    bezeichnung = 'Labor neu',
    teil_der_beauftragung = true,
    nc5_code = '53621',
    nc5_bezeichnung = 'Biologischer Übungsraum mit RLT 1',
    flaeche_nuf_1_6 = 92.04,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:480->ist_raumtyp->raumtyp:pl_5;
RELATE raum:480->gehoert_zu_teilprojekt->teilprojekt:biologie_praktika;
RELATE raum:480->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:480->hat_verortung->verortung:neubau;
RELATE raum:480->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 481: Labor neu
UPSERT raum:481 SET
    nummer = 481,
    bezeichnung = 'Labor neu',
    teil_der_beauftragung = true,
    nc5_code = '53621',
    nc5_bezeichnung = 'Biologischer Übungsraum mit RLT 1',
    flaeche_nuf_1_6 = 92.04,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:481->ist_raumtyp->raumtyp:pl_5;
RELATE raum:481->gehoert_zu_teilprojekt->teilprojekt:biologie_praktika;
RELATE raum:481->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:481->hat_verortung->verortung:neubau;
RELATE raum:481->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 482: Labor neu NEURO-MA
UPSERT raum:482 SET
    nummer = 482,
    bezeichnung = 'Labor neu NEURO-MA',
    teil_der_beauftragung = true,
    nc5_code = '53621',
    nc5_bezeichnung = 'Biologischer Übungsraum mit RLT 1',
    flaeche_nuf_1_6 = 63.96,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:482->ist_raumtyp->raumtyp:pl_4;
RELATE raum:482->gehoert_zu_teilprojekt->teilprojekt:biologie_praktika;
RELATE raum:482->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:482->hat_verortung->verortung:neubau;
RELATE raum:482->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 483: Labormodul 2-Achser Biochemie Typ I
UPSERT raum:483 SET
    nummer = 483,
    bezeichnung = 'Labormodul 2-Achser Biochemie Typ I',
    teil_der_beauftragung = true,
    nc5_code = '35412',
    nc5_bezeichnung = 'Labor mit zusätzlichen Hygieneanforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:483->ist_raumtyp->raumtyp:rt_1_4;
RELATE raum:483->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:483->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:483->hat_verortung->verortung:neubau;
RELATE raum:483->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 484: Labormodul 2-Achser Biochemie Typ I
UPSERT raum:484 SET
    nummer = 484,
    bezeichnung = 'Labormodul 2-Achser Biochemie Typ I',
    teil_der_beauftragung = true,
    nc5_code = '35412',
    nc5_bezeichnung = 'Labor mit zusätzlichen Hygieneanforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:484->ist_raumtyp->raumtyp:rt_1_4;
RELATE raum:484->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:484->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:484->hat_verortung->verortung:neubau;
RELATE raum:484->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 485: Labormodul 2-Achser Biochemie Typ I
UPSERT raum:485 SET
    nummer = 485,
    bezeichnung = 'Labormodul 2-Achser Biochemie Typ I',
    teil_der_beauftragung = true,
    nc5_code = '35412',
    nc5_bezeichnung = 'Labor mit zusätzlichen Hygieneanforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:485->ist_raumtyp->raumtyp:rt_1_4;
RELATE raum:485->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:485->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:485->hat_verortung->verortung:neubau;
RELATE raum:485->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 486: Labormodul 2-Achser Biochemie Typ I
UPSERT raum:486 SET
    nummer = 486,
    bezeichnung = 'Labormodul 2-Achser Biochemie Typ I',
    teil_der_beauftragung = true,
    nc5_code = '35412',
    nc5_bezeichnung = 'Labor mit zusätzlichen Hygieneanforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:486->ist_raumtyp->raumtyp:rt_1_4;
RELATE raum:486->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:486->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:486->hat_verortung->verortung:neubau;
RELATE raum:486->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 487: Labormodul 2-Achser Biochemie Typ II
UPSERT raum:487 SET
    nummer = 487,
    bezeichnung = 'Labormodul 2-Achser Biochemie Typ II',
    teil_der_beauftragung = true,
    nc5_code = '35412',
    nc5_bezeichnung = 'Labor mit zusätzlichen Hygieneanforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:487->ist_raumtyp->raumtyp:rt_1_4_1;
RELATE raum:487->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:487->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:487->hat_verortung->verortung:neubau;
RELATE raum:487->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 488: Labormodul 2-Achser Biochemie Typ II
UPSERT raum:488 SET
    nummer = 488,
    bezeichnung = 'Labormodul 2-Achser Biochemie Typ II',
    teil_der_beauftragung = true,
    nc5_code = '35412',
    nc5_bezeichnung = 'Labor mit zusätzlichen Hygieneanforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:488->ist_raumtyp->raumtyp:rt_1_4_1;
RELATE raum:488->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:488->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:488->hat_verortung->verortung:neubau;
RELATE raum:488->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 489: Auswertemodul 2-Achser
UPSERT raum:489 SET
    nummer = 489,
    bezeichnung = 'Auswertemodul 2-Achser',
    teil_der_beauftragung = true,
    nc5_code = '21112',
    nc5_bezeichnung = 'Büroraum mit RLT 1',
    flaeche_nuf_1_6 = 26.04,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:489->ist_raumtyp->raumtyp:b2;
RELATE raum:489->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:489->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:489->hat_verortung->verortung:neubau;
RELATE raum:489->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 490: Auswertemodul 2-Achser
UPSERT raum:490 SET
    nummer = 490,
    bezeichnung = 'Auswertemodul 2-Achser',
    teil_der_beauftragung = true,
    nc5_code = '21112',
    nc5_bezeichnung = 'Büroraum mit RLT 1',
    flaeche_nuf_1_6 = 26.04,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:490->ist_raumtyp->raumtyp:b2;
RELATE raum:490->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:490->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:490->hat_verortung->verortung:neubau;
RELATE raum:490->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 491: Auswertemodul 2-Achser
UPSERT raum:491 SET
    nummer = 491,
    bezeichnung = 'Auswertemodul 2-Achser',
    teil_der_beauftragung = true,
    nc5_code = '21112',
    nc5_bezeichnung = 'Büroraum mit RLT 1',
    flaeche_nuf_1_6 = 26.04,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:491->ist_raumtyp->raumtyp:b2;
RELATE raum:491->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:491->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:491->hat_verortung->verortung:neubau;
RELATE raum:491->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 492: Auswertemodul 2-Achser
UPSERT raum:492 SET
    nummer = 492,
    bezeichnung = 'Auswertemodul 2-Achser',
    teil_der_beauftragung = true,
    nc5_code = '21112',
    nc5_bezeichnung = 'Büroraum mit RLT 1',
    flaeche_nuf_1_6 = 26.04,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:492->ist_raumtyp->raumtyp:b2;
RELATE raum:492->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:492->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:492->hat_verortung->verortung:neubau;
RELATE raum:492->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 493: Geräteraummodul 1-Achser
UPSERT raum:493 SET
    nummer = 493,
    bezeichnung = 'Geräteraummodul 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:493->ist_raumtyp->raumtyp:rt_2_1_bc;
RELATE raum:493->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:493->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:493->hat_verortung->verortung:neubau;
RELATE raum:493->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 494: Geräteraummodul 1-Achser
UPSERT raum:494 SET
    nummer = 494,
    bezeichnung = 'Geräteraummodul 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:494->ist_raumtyp->raumtyp:rt_2_1_bc;
RELATE raum:494->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:494->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:494->hat_verortung->verortung:neubau;
RELATE raum:494->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 495: Geräteraummodul 1-Achser
UPSERT raum:495 SET
    nummer = 495,
    bezeichnung = 'Geräteraummodul 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:495->ist_raumtyp->raumtyp:rt_2_1_bc;
RELATE raum:495->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:495->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:495->hat_verortung->verortung:neubau;
RELATE raum:495->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 496: Geräteraummodul 1-Achser
UPSERT raum:496 SET
    nummer = 496,
    bezeichnung = 'Geräteraummodul 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:496->ist_raumtyp->raumtyp:rt_2_1_bc;
RELATE raum:496->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:496->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:496->hat_verortung->verortung:neubau;
RELATE raum:496->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 497: Geräteraummodul 1-Achser
UPSERT raum:497 SET
    nummer = 497,
    bezeichnung = 'Geräteraummodul 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:497->ist_raumtyp->raumtyp:rt_2_1_bc;
RELATE raum:497->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:497->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:497->hat_verortung->verortung:neubau;
RELATE raum:497->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 498: Geräteraummodul 1-Achser
UPSERT raum:498 SET
    nummer = 498,
    bezeichnung = 'Geräteraummodul 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:498->ist_raumtyp->raumtyp:rt_2_1_bc;
RELATE raum:498->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:498->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:498->hat_verortung->verortung:neubau;
RELATE raum:498->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 499: Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser
UPSERT raum:499 SET
    nummer = 499,
    bezeichnung = 'Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '35211',
    nc5_bezeichnung = 'Labor für analytische Arbeiten',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:499->ist_raumtyp->raumtyp:rt_4_1;
RELATE raum:499->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:499->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:499->hat_verortung->verortung:neubau;
RELATE raum:499->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 500: Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser
UPSERT raum:500 SET
    nummer = 500,
    bezeichnung = 'Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '35211',
    nc5_bezeichnung = 'Labor für analytische Arbeiten',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:500->ist_raumtyp->raumtyp:rt_4_1;
RELATE raum:500->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:500->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:500->hat_verortung->verortung:neubau;
RELATE raum:500->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 501: Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser
UPSERT raum:501 SET
    nummer = 501,
    bezeichnung = 'Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '35211',
    nc5_bezeichnung = 'Labor für analytische Arbeiten',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:501->ist_raumtyp->raumtyp:rt_4_1;
RELATE raum:501->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:501->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:501->hat_verortung->verortung:neubau;
RELATE raum:501->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 502: +4-Grad-Kühlraumodul (Arbeitsraum) 1-Achser halb
UPSERT raum:502 SET
    nummer = 502,
    bezeichnung = '+4-Grad-Kühlraumodul (Arbeitsraum) 1-Achser halb',
    teil_der_beauftragung = true,
    nc5_code = '43311',
    nc5_bezeichnung = 'Kühlraum für wissenschaftliche Zwecke (nur Kühlung)',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:502->ist_raumtyp->raumtyp:rt_5_2;
RELATE raum:502->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:502->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:502->hat_verortung->verortung:neubau;
RELATE raum:502->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 503: Laborlagermodul 1-Achser halb
UPSERT raum:503 SET
    nummer = 503,
    bezeichnung = 'Laborlagermodul 1-Achser halb',
    teil_der_beauftragung = true,
    nc5_code = '41111',
    nc5_bezeichnung = 'einfacher Lagerraum',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:503->ist_raumtyp->raumtyp:rt_7_1;
RELATE raum:503->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:503->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:503->hat_verortung->verortung:neubau;
RELATE raum:503->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 504: Doppelbüromodul
UPSERT raum:504 SET
    nummer = 504,
    bezeichnung = 'Doppelbüromodul',
    teil_der_beauftragung = true,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 20.64,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:504->ist_raumtyp->raumtyp:b1;
RELATE raum:504->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:504->hat_funktionsbereich->funktionsbereich:brobereich;
RELATE raum:504->hat_verortung->verortung:bestandsbau;
RELATE raum:504->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 505: Teeküche
UPSERT raum:505 SET
    nummer = 505,
    bezeichnung = 'Teeküche',
    teil_der_beauftragung = true,
    nc5_code = '12121',
    nc5_bezeichnung = 'Aufenthaltsraum mit Teeküche',
    flaeche_nuf_1_6 = 15.27,
    anzahl_raeume = 1,
    din277 = 'NUF1';
RELATE raum:505->ist_raumtyp->raumtyp:b5;
RELATE raum:505->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:505->hat_funktionsbereich->funktionsbereich:brobereich;
RELATE raum:505->hat_verortung->verortung:neubau;
RELATE raum:505->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 506: Labormodul 2-Achser Biochemie Typ I
UPSERT raum:506 SET
    nummer = 506,
    bezeichnung = 'Labormodul 2-Achser Biochemie Typ I',
    teil_der_beauftragung = true,
    nc5_code = '35412',
    nc5_bezeichnung = 'Labor mit zusätzlichen Hygieneanforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:506->ist_raumtyp->raumtyp:rt_1_4;
RELATE raum:506->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:506->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:506->hat_verortung->verortung:neubau;
RELATE raum:506->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 507: Labormodul 2-Achser Biochemie Typ I
UPSERT raum:507 SET
    nummer = 507,
    bezeichnung = 'Labormodul 2-Achser Biochemie Typ I',
    teil_der_beauftragung = true,
    nc5_code = '35412',
    nc5_bezeichnung = 'Labor mit zusätzlichen Hygieneanforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:507->ist_raumtyp->raumtyp:rt_1_4;
RELATE raum:507->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:507->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:507->hat_verortung->verortung:neubau;
RELATE raum:507->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 508: Labormodul 2-Achser Biochemie Typ I
UPSERT raum:508 SET
    nummer = 508,
    bezeichnung = 'Labormodul 2-Achser Biochemie Typ I',
    teil_der_beauftragung = true,
    nc5_code = '35412',
    nc5_bezeichnung = 'Labor mit zusätzlichen Hygieneanforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:508->ist_raumtyp->raumtyp:rt_1_4;
RELATE raum:508->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:508->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:508->hat_verortung->verortung:neubau;
RELATE raum:508->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 509: Labormodul 2-Achser Biochemie Typ I
UPSERT raum:509 SET
    nummer = 509,
    bezeichnung = 'Labormodul 2-Achser Biochemie Typ I',
    teil_der_beauftragung = true,
    nc5_code = '35412',
    nc5_bezeichnung = 'Labor mit zusätzlichen Hygieneanforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:509->ist_raumtyp->raumtyp:rt_1_4;
RELATE raum:509->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:509->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:509->hat_verortung->verortung:neubau;
RELATE raum:509->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 510: Labormodul 2-Achser Biochemie Typ II
UPSERT raum:510 SET
    nummer = 510,
    bezeichnung = 'Labormodul 2-Achser Biochemie Typ II',
    teil_der_beauftragung = true,
    nc5_code = '35412',
    nc5_bezeichnung = 'Labor mit zusätzlichen Hygieneanforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:510->ist_raumtyp->raumtyp:rt_1_4_1;
RELATE raum:510->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:510->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:510->hat_verortung->verortung:neubau;
RELATE raum:510->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 511: Labormodul 2-Achser Biochemie Typ II
UPSERT raum:511 SET
    nummer = 511,
    bezeichnung = 'Labormodul 2-Achser Biochemie Typ II',
    teil_der_beauftragung = true,
    nc5_code = '35412',
    nc5_bezeichnung = 'Labor mit zusätzlichen Hygieneanforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:511->ist_raumtyp->raumtyp:rt_1_4_1;
RELATE raum:511->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:511->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:511->hat_verortung->verortung:neubau;
RELATE raum:511->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 512: Auswertemodul 2-Achser
UPSERT raum:512 SET
    nummer = 512,
    bezeichnung = 'Auswertemodul 2-Achser',
    teil_der_beauftragung = true,
    nc5_code = '21112',
    nc5_bezeichnung = 'Büroraum mit RLT 1',
    flaeche_nuf_1_6 = 26.04,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:512->ist_raumtyp->raumtyp:b2;
RELATE raum:512->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:512->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:512->hat_verortung->verortung:neubau;
RELATE raum:512->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 513: Auswertemodul 2-Achser
UPSERT raum:513 SET
    nummer = 513,
    bezeichnung = 'Auswertemodul 2-Achser',
    teil_der_beauftragung = true,
    nc5_code = '21112',
    nc5_bezeichnung = 'Büroraum mit RLT 1',
    flaeche_nuf_1_6 = 26.04,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:513->ist_raumtyp->raumtyp:b2;
RELATE raum:513->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:513->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:513->hat_verortung->verortung:neubau;
RELATE raum:513->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 514: Auswertemodul 2-Achser
UPSERT raum:514 SET
    nummer = 514,
    bezeichnung = 'Auswertemodul 2-Achser',
    teil_der_beauftragung = true,
    nc5_code = '21112',
    nc5_bezeichnung = 'Büroraum mit RLT 1',
    flaeche_nuf_1_6 = 26.04,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:514->ist_raumtyp->raumtyp:b2;
RELATE raum:514->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:514->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:514->hat_verortung->verortung:neubau;
RELATE raum:514->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 515: Auswertemodul 2-Achser
UPSERT raum:515 SET
    nummer = 515,
    bezeichnung = 'Auswertemodul 2-Achser',
    teil_der_beauftragung = true,
    nc5_code = '21112',
    nc5_bezeichnung = 'Büroraum mit RLT 1',
    flaeche_nuf_1_6 = 26.04,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:515->ist_raumtyp->raumtyp:b2;
RELATE raum:515->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:515->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:515->hat_verortung->verortung:neubau;
RELATE raum:515->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 516: Geräteraummodul 1-Achser
UPSERT raum:516 SET
    nummer = 516,
    bezeichnung = 'Geräteraummodul 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:516->ist_raumtyp->raumtyp:rt_2_1_bc;
RELATE raum:516->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:516->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:516->hat_verortung->verortung:neubau;
RELATE raum:516->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 517: Geräteraummodul 1-Achser
UPSERT raum:517 SET
    nummer = 517,
    bezeichnung = 'Geräteraummodul 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:517->ist_raumtyp->raumtyp:rt_2_1_bc;
RELATE raum:517->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:517->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:517->hat_verortung->verortung:neubau;
RELATE raum:517->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 518: Geräteraummodul 1-Achser
UPSERT raum:518 SET
    nummer = 518,
    bezeichnung = 'Geräteraummodul 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:518->ist_raumtyp->raumtyp:rt_2_1_bc;
RELATE raum:518->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:518->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:518->hat_verortung->verortung:neubau;
RELATE raum:518->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 519: Geräteraummodul 1-Achser
UPSERT raum:519 SET
    nummer = 519,
    bezeichnung = 'Geräteraummodul 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:519->ist_raumtyp->raumtyp:rt_2_1_bc;
RELATE raum:519->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:519->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:519->hat_verortung->verortung:neubau;
RELATE raum:519->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 520: Geräteraummodul 1-Achser
UPSERT raum:520 SET
    nummer = 520,
    bezeichnung = 'Geräteraummodul 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:520->ist_raumtyp->raumtyp:rt_2_1_bc;
RELATE raum:520->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:520->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:520->hat_verortung->verortung:neubau;
RELATE raum:520->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 521: Geräteraummodul 1-Achser
UPSERT raum:521 SET
    nummer = 521,
    bezeichnung = 'Geräteraummodul 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:521->ist_raumtyp->raumtyp:rt_2_1_bc;
RELATE raum:521->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:521->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:521->hat_verortung->verortung:neubau;
RELATE raum:521->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 522: Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser
UPSERT raum:522 SET
    nummer = 522,
    bezeichnung = 'Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '35211',
    nc5_bezeichnung = 'Labor für analytische Arbeiten',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:522->ist_raumtyp->raumtyp:rt_4_1;
RELATE raum:522->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:522->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:522->hat_verortung->verortung:neubau;
RELATE raum:522->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 523: Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser
UPSERT raum:523 SET
    nummer = 523,
    bezeichnung = 'Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '35211',
    nc5_bezeichnung = 'Labor für analytische Arbeiten',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:523->ist_raumtyp->raumtyp:rt_4_1;
RELATE raum:523->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:523->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:523->hat_verortung->verortung:neubau;
RELATE raum:523->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 524: Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser
UPSERT raum:524 SET
    nummer = 524,
    bezeichnung = 'Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '35211',
    nc5_bezeichnung = 'Labor für analytische Arbeiten',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:524->ist_raumtyp->raumtyp:rt_4_1;
RELATE raum:524->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:524->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:524->hat_verortung->verortung:neubau;
RELATE raum:524->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 525: +4-Grad-Kühlraumodul (Arbeitsraum) 1-Achser halb
UPSERT raum:525 SET
    nummer = 525,
    bezeichnung = '+4-Grad-Kühlraumodul (Arbeitsraum) 1-Achser halb',
    teil_der_beauftragung = true,
    nc5_code = '43311',
    nc5_bezeichnung = 'Kühlraum für wissenschaftliche Zwecke (nur Kühlung)',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:525->ist_raumtyp->raumtyp:rt_5_2;
RELATE raum:525->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:525->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:525->hat_verortung->verortung:neubau;
RELATE raum:525->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 526: Laborlagermodul 1-Achser halb
UPSERT raum:526 SET
    nummer = 526,
    bezeichnung = 'Laborlagermodul 1-Achser halb',
    teil_der_beauftragung = true,
    nc5_code = '41111',
    nc5_bezeichnung = 'einfacher Lagerraum',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:526->ist_raumtyp->raumtyp:rt_7_1;
RELATE raum:526->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:526->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:526->hat_verortung->verortung:neubau;
RELATE raum:526->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 527: Doppelbüromodul
UPSERT raum:527 SET
    nummer = 527,
    bezeichnung = 'Doppelbüromodul',
    teil_der_beauftragung = true,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 20.64,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:527->ist_raumtyp->raumtyp:b1;
RELATE raum:527->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:527->hat_funktionsbereich->funktionsbereich:brobereich;
RELATE raum:527->hat_verortung->verortung:bestandsbau;
RELATE raum:527->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 528: Teeküche
UPSERT raum:528 SET
    nummer = 528,
    bezeichnung = 'Teeküche',
    teil_der_beauftragung = true,
    nc5_code = '12121',
    nc5_bezeichnung = 'Aufenthaltsraum mit Teeküche',
    flaeche_nuf_1_6 = 15.27,
    anzahl_raeume = 1,
    din277 = 'NUF1';
RELATE raum:528->ist_raumtyp->raumtyp:b5;
RELATE raum:528->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:528->hat_funktionsbereich->funktionsbereich:brobereich;
RELATE raum:528->hat_verortung->verortung:neubau;
RELATE raum:528->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 529: Labormodul 2-Achser Biochemie Typ I
UPSERT raum:529 SET
    nummer = 529,
    bezeichnung = 'Labormodul 2-Achser Biochemie Typ I',
    teil_der_beauftragung = true,
    nc5_code = '35412',
    nc5_bezeichnung = 'Labor mit zusätzlichen Hygieneanforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:529->ist_raumtyp->raumtyp:rt_1_4;
RELATE raum:529->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:529->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:529->hat_verortung->verortung:neubau;
RELATE raum:529->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 530: Labormodul 2-Achser Biochemie Typ II
UPSERT raum:530 SET
    nummer = 530,
    bezeichnung = 'Labormodul 2-Achser Biochemie Typ II',
    teil_der_beauftragung = true,
    nc5_code = '35412',
    nc5_bezeichnung = 'Labor mit zusätzlichen Hygieneanforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:530->ist_raumtyp->raumtyp:rt_1_4_1;
RELATE raum:530->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:530->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:530->hat_verortung->verortung:neubau;
RELATE raum:530->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 531: Labormodul 2-Achser Biochemie Typ II
UPSERT raum:531 SET
    nummer = 531,
    bezeichnung = 'Labormodul 2-Achser Biochemie Typ II',
    teil_der_beauftragung = true,
    nc5_code = '35412',
    nc5_bezeichnung = 'Labor mit zusätzlichen Hygieneanforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:531->ist_raumtyp->raumtyp:rt_1_4_1;
RELATE raum:531->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:531->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:531->hat_verortung->verortung:neubau;
RELATE raum:531->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 532: Auswertemodul 2-Achser
UPSERT raum:532 SET
    nummer = 532,
    bezeichnung = 'Auswertemodul 2-Achser',
    teil_der_beauftragung = true,
    nc5_code = '21112',
    nc5_bezeichnung = 'Büroraum mit RLT 1',
    flaeche_nuf_1_6 = 26.04,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:532->ist_raumtyp->raumtyp:b2;
RELATE raum:532->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:532->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:532->hat_verortung->verortung:neubau;
RELATE raum:532->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 533: Auswertemodul 2-Achser
UPSERT raum:533 SET
    nummer = 533,
    bezeichnung = 'Auswertemodul 2-Achser',
    teil_der_beauftragung = true,
    nc5_code = '21112',
    nc5_bezeichnung = 'Büroraum mit RLT 1',
    flaeche_nuf_1_6 = 26.04,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:533->ist_raumtyp->raumtyp:b2;
RELATE raum:533->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:533->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:533->hat_verortung->verortung:neubau;
RELATE raum:533->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 534: Auswertemodul 2-Achser
UPSERT raum:534 SET
    nummer = 534,
    bezeichnung = 'Auswertemodul 2-Achser',
    teil_der_beauftragung = true,
    nc5_code = '21112',
    nc5_bezeichnung = 'Büroraum mit RLT 1',
    flaeche_nuf_1_6 = 26.04,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:534->ist_raumtyp->raumtyp:b2;
RELATE raum:534->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:534->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:534->hat_verortung->verortung:neubau;
RELATE raum:534->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 535: Geräteraummodul 1-Achser
UPSERT raum:535 SET
    nummer = 535,
    bezeichnung = 'Geräteraummodul 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:535->ist_raumtyp->raumtyp:rt_2_1_bc;
RELATE raum:535->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:535->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:535->hat_verortung->verortung:neubau;
RELATE raum:535->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 536: Geräteraummodul 1-Achser
UPSERT raum:536 SET
    nummer = 536,
    bezeichnung = 'Geräteraummodul 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:536->ist_raumtyp->raumtyp:rt_2_1_bc;
RELATE raum:536->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:536->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:536->hat_verortung->verortung:neubau;
RELATE raum:536->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 537: Geräteraummodul 1-Achser
UPSERT raum:537 SET
    nummer = 537,
    bezeichnung = 'Geräteraummodul 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:537->ist_raumtyp->raumtyp:rt_2_1_bc;
RELATE raum:537->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:537->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:537->hat_verortung->verortung:neubau;
RELATE raum:537->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 538: Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser
UPSERT raum:538 SET
    nummer = 538,
    bezeichnung = 'Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '35211',
    nc5_bezeichnung = 'Labor für analytische Arbeiten',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:538->ist_raumtyp->raumtyp:rt_4_1;
RELATE raum:538->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:538->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:538->hat_verortung->verortung:neubau;
RELATE raum:538->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 539: Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser
UPSERT raum:539 SET
    nummer = 539,
    bezeichnung = 'Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '35211',
    nc5_bezeichnung = 'Labor für analytische Arbeiten',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:539->ist_raumtyp->raumtyp:rt_4_1;
RELATE raum:539->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:539->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:539->hat_verortung->verortung:neubau;
RELATE raum:539->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 540: Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser
UPSERT raum:540 SET
    nummer = 540,
    bezeichnung = 'Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '35211',
    nc5_bezeichnung = 'Labor für analytische Arbeiten',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:540->ist_raumtyp->raumtyp:rt_4_1;
RELATE raum:540->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:540->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:540->hat_verortung->verortung:neubau;
RELATE raum:540->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 541: +4-Grad-Kühlraumodul (Arbeitsraum) 1-Achser halb
UPSERT raum:541 SET
    nummer = 541,
    bezeichnung = '+4-Grad-Kühlraumodul (Arbeitsraum) 1-Achser halb',
    teil_der_beauftragung = true,
    nc5_code = '43311',
    nc5_bezeichnung = 'Kühlraum für wissenschaftliche Zwecke (nur Kühlung)',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:541->ist_raumtyp->raumtyp:rt_5_2;
RELATE raum:541->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:541->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:541->hat_verortung->verortung:neubau;
RELATE raum:541->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 542: Laborlagermodul 1-Achser halb
UPSERT raum:542 SET
    nummer = 542,
    bezeichnung = 'Laborlagermodul 1-Achser halb',
    teil_der_beauftragung = true,
    nc5_code = '41111',
    nc5_bezeichnung = 'einfacher Lagerraum',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:542->ist_raumtyp->raumtyp:rt_7_1;
RELATE raum:542->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:542->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:542->hat_verortung->verortung:neubau;
RELATE raum:542->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 543: Einzelbüromodul
UPSERT raum:543 SET
    nummer = 543,
    bezeichnung = 'Einzelbüromodul',
    teil_der_beauftragung = true,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 9.89,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:543->ist_raumtyp->raumtyp:b1;
RELATE raum:543->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:543->hat_funktionsbereich->funktionsbereich:brobereich;
RELATE raum:543->hat_verortung->verortung:bestandsbau;
RELATE raum:543->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 544: Einzelbüromodul
UPSERT raum:544 SET
    nummer = 544,
    bezeichnung = 'Einzelbüromodul',
    teil_der_beauftragung = true,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 9.89,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:544->ist_raumtyp->raumtyp:b1;
RELATE raum:544->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:544->hat_funktionsbereich->funktionsbereich:brobereich;
RELATE raum:544->hat_verortung->verortung:bestandsbau;
RELATE raum:544->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 545: Teeküche
UPSERT raum:545 SET
    nummer = 545,
    bezeichnung = 'Teeküche',
    teil_der_beauftragung = true,
    nc5_code = '12121',
    nc5_bezeichnung = 'Aufenthaltsraum mit Teeküche',
    flaeche_nuf_1_6 = 15.27,
    anzahl_raeume = 1,
    din277 = 'NUF1';
RELATE raum:545->ist_raumtyp->raumtyp:b5;
RELATE raum:545->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:545->hat_funktionsbereich->funktionsbereich:brobereich;
RELATE raum:545->hat_verortung->verortung:neubau;
RELATE raum:545->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 546: Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser
UPSERT raum:546 SET
    nummer = 546,
    bezeichnung = 'Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '35211',
    nc5_bezeichnung = 'Labor für analytische Arbeiten',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:546->ist_raumtyp->raumtyp:rt_4_1;
RELATE raum:546->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:546->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:546->hat_verortung->verortung:neubau;
RELATE raum:546->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 547: Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser
UPSERT raum:547 SET
    nummer = 547,
    bezeichnung = 'Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '35211',
    nc5_bezeichnung = 'Labor für analytische Arbeiten',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:547->ist_raumtyp->raumtyp:rt_4_1;
RELATE raum:547->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:547->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:547->hat_verortung->verortung:neubau;
RELATE raum:547->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 548: -20-Grad-Raum 1-Achser halb
UPSERT raum:548 SET
    nummer = 548,
    bezeichnung = '-20-Grad-Raum 1-Achser halb',
    teil_der_beauftragung = true,
    nc5_code = '43311',
    nc5_bezeichnung = 'Kühlraum für wissenschaftliche Zwecke (nur Kühlung)',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:548->ist_raumtyp->raumtyp:rt_5_2_1;
RELATE raum:548->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:548->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:548->hat_verortung->verortung:neubau;
RELATE raum:548->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 549: +4-Grad-Kühlraumodul (Arbeitsraum) 1-Achser halb
UPSERT raum:549 SET
    nummer = 549,
    bezeichnung = '+4-Grad-Kühlraumodul (Arbeitsraum) 1-Achser halb',
    teil_der_beauftragung = true,
    nc5_code = '43311',
    nc5_bezeichnung = 'Kühlraum für wissenschaftliche Zwecke (nur Kühlung)',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:549->ist_raumtyp->raumtyp:rt_5_2;
RELATE raum:549->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:549->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:549->hat_verortung->verortung:neubau;
RELATE raum:549->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 550: Praktikumssaal BC
UPSERT raum:550 SET
    nummer = 550,
    bezeichnung = 'Praktikumssaal BC',
    teil_der_beauftragung = true,
    nc5_code = '35131',
    nc5_bezeichnung = 'Chemisch-technisches Labor mit bes. RLT-Anforderungen',
    flaeche_nuf_1_6 = 166.92,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:550->ist_raumtyp->raumtyp:rt_8_1_2;
RELATE raum:550->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:550->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:550->hat_verortung->verortung:neubau;
RELATE raum:550->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 551: Geräteraummodul 1-Achser halb
UPSERT raum:551 SET
    nummer = 551,
    bezeichnung = 'Geräteraummodul 1-Achser halb',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:551->ist_raumtyp->raumtyp:rt_2_3;
RELATE raum:551->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:551->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:551->hat_verortung->verortung:neubau;
RELATE raum:551->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 552: Labormodul 2-Achser Syntheselabor Typ I
UPSERT raum:552 SET
    nummer = 552,
    bezeichnung = 'Labormodul 2-Achser Syntheselabor Typ I',
    teil_der_beauftragung = true,
    nc5_code = '35131',
    nc5_bezeichnung = 'Chemisch-technisches Labor mit bes. RLT-Anforderungen',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:552->ist_raumtyp->raumtyp:rt_1_1;
RELATE raum:552->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:552->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:552->hat_verortung->verortung:neubau;
RELATE raum:552->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 553: Labormodul 2-Achser Syntheselabor Typ III
UPSERT raum:553 SET
    nummer = 553,
    bezeichnung = 'Labormodul 2-Achser Syntheselabor Typ III',
    teil_der_beauftragung = true,
    nc5_code = '35131',
    nc5_bezeichnung = 'Chemisch-technisches Labor mit bes. RLT-Anforderungen',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:553->ist_raumtyp->raumtyp:rt_1_3;
RELATE raum:553->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:553->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:553->hat_verortung->verortung:neubau;
RELATE raum:553->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 554: Labormodul 2-Achser Syntheselabor Typ III
UPSERT raum:554 SET
    nummer = 554,
    bezeichnung = 'Labormodul 2-Achser Syntheselabor Typ III',
    teil_der_beauftragung = true,
    nc5_code = '35131',
    nc5_bezeichnung = 'Chemisch-technisches Labor mit bes. RLT-Anforderungen',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:554->ist_raumtyp->raumtyp:rt_1_3;
RELATE raum:554->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:554->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:554->hat_verortung->verortung:neubau;
RELATE raum:554->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 555: Labormodul 2-Achser Syntheselabor Typ III
UPSERT raum:555 SET
    nummer = 555,
    bezeichnung = 'Labormodul 2-Achser Syntheselabor Typ III',
    teil_der_beauftragung = true,
    nc5_code = '35131',
    nc5_bezeichnung = 'Chemisch-technisches Labor mit bes. RLT-Anforderungen',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:555->ist_raumtyp->raumtyp:rt_1_3;
RELATE raum:555->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:555->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:555->hat_verortung->verortung:neubau;
RELATE raum:555->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 556: Labormodul 2-Achser Syntheselabor Typ III
UPSERT raum:556 SET
    nummer = 556,
    bezeichnung = 'Labormodul 2-Achser Syntheselabor Typ III',
    teil_der_beauftragung = true,
    nc5_code = '35131',
    nc5_bezeichnung = 'Chemisch-technisches Labor mit bes. RLT-Anforderungen',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:556->ist_raumtyp->raumtyp:rt_1_3;
RELATE raum:556->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:556->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:556->hat_verortung->verortung:neubau;
RELATE raum:556->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 557: Labormodul 2-Achser Syntheselabor Typ III
UPSERT raum:557 SET
    nummer = 557,
    bezeichnung = 'Labormodul 2-Achser Syntheselabor Typ III',
    teil_der_beauftragung = true,
    nc5_code = '35131',
    nc5_bezeichnung = 'Chemisch-technisches Labor mit bes. RLT-Anforderungen',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:557->ist_raumtyp->raumtyp:rt_1_3;
RELATE raum:557->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:557->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:557->hat_verortung->verortung:neubau;
RELATE raum:557->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 558: Labormodul 2-Achser Syntheselabor Typ III
UPSERT raum:558 SET
    nummer = 558,
    bezeichnung = 'Labormodul 2-Achser Syntheselabor Typ III',
    teil_der_beauftragung = true,
    nc5_code = '35131',
    nc5_bezeichnung = 'Chemisch-technisches Labor mit bes. RLT-Anforderungen',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:558->ist_raumtyp->raumtyp:rt_1_3;
RELATE raum:558->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:558->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:558->hat_verortung->verortung:neubau;
RELATE raum:558->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 559: Auswertemodul 2-Achser
UPSERT raum:559 SET
    nummer = 559,
    bezeichnung = 'Auswertemodul 2-Achser',
    teil_der_beauftragung = true,
    nc5_code = '21112',
    nc5_bezeichnung = 'Büroraum mit RLT 1',
    flaeche_nuf_1_6 = 26.04,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:559->ist_raumtyp->raumtyp:b2;
RELATE raum:559->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:559->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:559->hat_verortung->verortung:neubau;
RELATE raum:559->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 560: Auswertemodul 2-Achser
UPSERT raum:560 SET
    nummer = 560,
    bezeichnung = 'Auswertemodul 2-Achser',
    teil_der_beauftragung = true,
    nc5_code = '21112',
    nc5_bezeichnung = 'Büroraum mit RLT 1',
    flaeche_nuf_1_6 = 26.04,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:560->ist_raumtyp->raumtyp:b2;
RELATE raum:560->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:560->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:560->hat_verortung->verortung:neubau;
RELATE raum:560->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 561: Auswertemodul 2-Achser
UPSERT raum:561 SET
    nummer = 561,
    bezeichnung = 'Auswertemodul 2-Achser',
    teil_der_beauftragung = true,
    nc5_code = '21112',
    nc5_bezeichnung = 'Büroraum mit RLT 1',
    flaeche_nuf_1_6 = 26.04,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:561->ist_raumtyp->raumtyp:b2;
RELATE raum:561->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:561->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:561->hat_verortung->verortung:neubau;
RELATE raum:561->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 562: Auswertemodul 2-Achser
UPSERT raum:562 SET
    nummer = 562,
    bezeichnung = 'Auswertemodul 2-Achser',
    teil_der_beauftragung = true,
    nc5_code = '21112',
    nc5_bezeichnung = 'Büroraum mit RLT 1',
    flaeche_nuf_1_6 = 26.04,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:562->ist_raumtyp->raumtyp:b2;
RELATE raum:562->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:562->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:562->hat_verortung->verortung:neubau;
RELATE raum:562->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 563: Geräteraummodul 1-Achser
UPSERT raum:563 SET
    nummer = 563,
    bezeichnung = 'Geräteraummodul 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:563->ist_raumtyp->raumtyp:rt_2_1_syn;
RELATE raum:563->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:563->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:563->hat_verortung->verortung:neubau;
RELATE raum:563->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 564: Geräteraummodul 1-Achser
UPSERT raum:564 SET
    nummer = 564,
    bezeichnung = 'Geräteraummodul 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:564->ist_raumtyp->raumtyp:rt_2_1_syn;
RELATE raum:564->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:564->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:564->hat_verortung->verortung:neubau;
RELATE raum:564->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 565: Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser
UPSERT raum:565 SET
    nummer = 565,
    bezeichnung = 'Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '35211',
    nc5_bezeichnung = 'Labor für analytische Arbeiten',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:565->ist_raumtyp->raumtyp:rt_4_1;
RELATE raum:565->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:565->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:565->hat_verortung->verortung:neubau;
RELATE raum:565->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 566: Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser
UPSERT raum:566 SET
    nummer = 566,
    bezeichnung = 'Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '35211',
    nc5_bezeichnung = 'Labor für analytische Arbeiten',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:566->ist_raumtyp->raumtyp:rt_4_1;
RELATE raum:566->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:566->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:566->hat_verortung->verortung:neubau;
RELATE raum:566->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 567: Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser
UPSERT raum:567 SET
    nummer = 567,
    bezeichnung = 'Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '35211',
    nc5_bezeichnung = 'Labor für analytische Arbeiten',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:567->ist_raumtyp->raumtyp:rt_4_1;
RELATE raum:567->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:567->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:567->hat_verortung->verortung:neubau;
RELATE raum:567->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 568: +4-Grad-Kühlraumodul (Arbeitsraum) 1-Achser halb
UPSERT raum:568 SET
    nummer = 568,
    bezeichnung = '+4-Grad-Kühlraumodul (Arbeitsraum) 1-Achser halb',
    teil_der_beauftragung = true,
    nc5_code = '43311',
    nc5_bezeichnung = 'Kühlraum für wissenschaftliche Zwecke (nur Kühlung)',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:568->ist_raumtyp->raumtyp:rt_5_2;
RELATE raum:568->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:568->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:568->hat_verortung->verortung:neubau;
RELATE raum:568->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 569: Gefahrstofflagermodul 1-Achser halb (Stinkraum)
UPSERT raum:569 SET
    nummer = 569,
    bezeichnung = 'Gefahrstofflagermodul 1-Achser halb (Stinkraum)',
    teil_der_beauftragung = true,
    nc5_code = '35213',
    nc5_bezeichnung = 'Labor für analytisch-/präparativ-chemische Arbeiten mit RLT 2',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:569->ist_raumtyp->raumtyp:rt_6_1;
RELATE raum:569->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:569->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:569->hat_verortung->verortung:neubau;
RELATE raum:569->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 570: Laborlagermodul 1-Achser halb
UPSERT raum:570 SET
    nummer = 570,
    bezeichnung = 'Laborlagermodul 1-Achser halb',
    teil_der_beauftragung = true,
    nc5_code = '41111',
    nc5_bezeichnung = 'einfacher Lagerraum',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:570->ist_raumtyp->raumtyp:rt_7_1;
RELATE raum:570->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:570->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:570->hat_verortung->verortung:neubau;
RELATE raum:570->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 571: Doppelbüromodul
UPSERT raum:571 SET
    nummer = 571,
    bezeichnung = 'Doppelbüromodul',
    teil_der_beauftragung = true,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 20.64,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:571->ist_raumtyp->raumtyp:b1;
RELATE raum:571->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:571->hat_funktionsbereich->funktionsbereich:brobereich;
RELATE raum:571->hat_verortung->verortung:bestandsbau;
RELATE raum:571->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 572: Besprechungsraummodul 10 AP
UPSERT raum:572 SET
    nummer = 572,
    bezeichnung = 'Besprechungsraummodul 10 AP',
    teil_der_beauftragung = true,
    nc5_code = '23211',
    nc5_bezeichnung = 'Besprechungsraum/Kommunikationsfläche',
    flaeche_nuf_1_6 = 26.02,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:572->ist_raumtyp->raumtyp:b3;
RELATE raum:572->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:572->hat_funktionsbereich->funktionsbereich:brobereich;
RELATE raum:572->hat_verortung->verortung:bestandsbau;
RELATE raum:572->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 573: Teeküche
UPSERT raum:573 SET
    nummer = 573,
    bezeichnung = 'Teeküche',
    teil_der_beauftragung = true,
    nc5_code = '12121',
    nc5_bezeichnung = 'Aufenthaltsraum mit Teeküche',
    flaeche_nuf_1_6 = 15.27,
    anzahl_raeume = 1,
    din277 = 'NUF1';
RELATE raum:573->ist_raumtyp->raumtyp:b5;
RELATE raum:573->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:573->hat_funktionsbereich->funktionsbereich:brobereich;
RELATE raum:573->hat_verortung->verortung:neubau;
RELATE raum:573->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 574: Labormodul 2-Achser Syntheselabor Typ I
UPSERT raum:574 SET
    nummer = 574,
    bezeichnung = 'Labormodul 2-Achser Syntheselabor Typ I',
    teil_der_beauftragung = true,
    nc5_code = '35131',
    nc5_bezeichnung = 'Chemisch-technisches Labor mit bes. RLT-Anforderungen',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:574->ist_raumtyp->raumtyp:rt_1_1;
RELATE raum:574->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:574->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:574->hat_verortung->verortung:neubau;
RELATE raum:574->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 575: Labormodul 2-Achser Syntheselabor Typ III
UPSERT raum:575 SET
    nummer = 575,
    bezeichnung = 'Labormodul 2-Achser Syntheselabor Typ III',
    teil_der_beauftragung = true,
    nc5_code = '35131',
    nc5_bezeichnung = 'Chemisch-technisches Labor mit bes. RLT-Anforderungen',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:575->ist_raumtyp->raumtyp:rt_1_3;
RELATE raum:575->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:575->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:575->hat_verortung->verortung:neubau;
RELATE raum:575->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 576: Labormodul 2-Achser Syntheselabor Typ III
UPSERT raum:576 SET
    nummer = 576,
    bezeichnung = 'Labormodul 2-Achser Syntheselabor Typ III',
    teil_der_beauftragung = true,
    nc5_code = '35131',
    nc5_bezeichnung = 'Chemisch-technisches Labor mit bes. RLT-Anforderungen',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:576->ist_raumtyp->raumtyp:rt_1_3;
RELATE raum:576->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:576->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:576->hat_verortung->verortung:neubau;
RELATE raum:576->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 577: Labormodul 2-Achser Syntheselabor Typ III
UPSERT raum:577 SET
    nummer = 577,
    bezeichnung = 'Labormodul 2-Achser Syntheselabor Typ III',
    teil_der_beauftragung = true,
    nc5_code = '35131',
    nc5_bezeichnung = 'Chemisch-technisches Labor mit bes. RLT-Anforderungen',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:577->ist_raumtyp->raumtyp:rt_1_3;
RELATE raum:577->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:577->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:577->hat_verortung->verortung:neubau;
RELATE raum:577->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 578: Auswertemodul 2-Achser
UPSERT raum:578 SET
    nummer = 578,
    bezeichnung = 'Auswertemodul 2-Achser',
    teil_der_beauftragung = true,
    nc5_code = '21112',
    nc5_bezeichnung = 'Büroraum mit RLT 1',
    flaeche_nuf_1_6 = 26.04,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:578->ist_raumtyp->raumtyp:b2;
RELATE raum:578->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:578->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:578->hat_verortung->verortung:neubau;
RELATE raum:578->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 579: Auswertemodul 2-Achser
UPSERT raum:579 SET
    nummer = 579,
    bezeichnung = 'Auswertemodul 2-Achser',
    teil_der_beauftragung = true,
    nc5_code = '21112',
    nc5_bezeichnung = 'Büroraum mit RLT 1',
    flaeche_nuf_1_6 = 26.04,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:579->ist_raumtyp->raumtyp:b2;
RELATE raum:579->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:579->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:579->hat_verortung->verortung:neubau;
RELATE raum:579->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 580: Geräteraummodul 1-Achser
UPSERT raum:580 SET
    nummer = 580,
    bezeichnung = 'Geräteraummodul 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:580->ist_raumtyp->raumtyp:rt_2_1_syn;
RELATE raum:580->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:580->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:580->hat_verortung->verortung:neubau;
RELATE raum:580->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 581: Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser
UPSERT raum:581 SET
    nummer = 581,
    bezeichnung = 'Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '35211',
    nc5_bezeichnung = 'Labor für analytische Arbeiten',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:581->ist_raumtyp->raumtyp:rt_4_1;
RELATE raum:581->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:581->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:581->hat_verortung->verortung:neubau;
RELATE raum:581->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 582: Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser
UPSERT raum:582 SET
    nummer = 582,
    bezeichnung = 'Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '35211',
    nc5_bezeichnung = 'Labor für analytische Arbeiten',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:582->ist_raumtyp->raumtyp:rt_4_1;
RELATE raum:582->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:582->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:582->hat_verortung->verortung:neubau;
RELATE raum:582->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 583: Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser
UPSERT raum:583 SET
    nummer = 583,
    bezeichnung = 'Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '35211',
    nc5_bezeichnung = 'Labor für analytische Arbeiten',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:583->ist_raumtyp->raumtyp:rt_4_1;
RELATE raum:583->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:583->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:583->hat_verortung->verortung:neubau;
RELATE raum:583->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 584: +4-Grad-Kühlraumodul (Arbeitsraum) 1-Achser halb
UPSERT raum:584 SET
    nummer = 584,
    bezeichnung = '+4-Grad-Kühlraumodul (Arbeitsraum) 1-Achser halb',
    teil_der_beauftragung = true,
    nc5_code = '43311',
    nc5_bezeichnung = 'Kühlraum für wissenschaftliche Zwecke (nur Kühlung)',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:584->ist_raumtyp->raumtyp:rt_5_2;
RELATE raum:584->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:584->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:584->hat_verortung->verortung:neubau;
RELATE raum:584->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 585: Gefahrstofflagermodul 1-Achser halb (Stinkraum)
UPSERT raum:585 SET
    nummer = 585,
    bezeichnung = 'Gefahrstofflagermodul 1-Achser halb (Stinkraum)',
    teil_der_beauftragung = true,
    nc5_code = '35213',
    nc5_bezeichnung = 'Labor für analytisch-/präparativ-chemische Arbeiten mit RLT 2',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:585->ist_raumtyp->raumtyp:rt_6_1;
RELATE raum:585->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:585->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:585->hat_verortung->verortung:neubau;
RELATE raum:585->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 586: Laborlagermodul 1-Achser halb
UPSERT raum:586 SET
    nummer = 586,
    bezeichnung = 'Laborlagermodul 1-Achser halb',
    teil_der_beauftragung = true,
    nc5_code = '41111',
    nc5_bezeichnung = 'einfacher Lagerraum',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:586->ist_raumtyp->raumtyp:rt_7_1;
RELATE raum:586->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:586->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:586->hat_verortung->verortung:neubau;
RELATE raum:586->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 587: Einzelbüromodul
UPSERT raum:587 SET
    nummer = 587,
    bezeichnung = 'Einzelbüromodul',
    teil_der_beauftragung = true,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 9.89,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:587->ist_raumtyp->raumtyp:b1;
RELATE raum:587->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:587->hat_funktionsbereich->funktionsbereich:brobereich;
RELATE raum:587->hat_verortung->verortung:bestandsbau;
RELATE raum:587->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 588: Besprechungsraummodul 10 AP
UPSERT raum:588 SET
    nummer = 588,
    bezeichnung = 'Besprechungsraummodul 10 AP',
    teil_der_beauftragung = true,
    nc5_code = '23211',
    nc5_bezeichnung = 'Besprechungsraum/Kommunikationsfläche',
    flaeche_nuf_1_6 = 26.02,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:588->ist_raumtyp->raumtyp:b3;
RELATE raum:588->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:588->hat_funktionsbereich->funktionsbereich:brobereich;
RELATE raum:588->hat_verortung->verortung:bestandsbau;
RELATE raum:588->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 589: Labormodul 2-Achser Syntheselabor Typ I
UPSERT raum:589 SET
    nummer = 589,
    bezeichnung = 'Labormodul 2-Achser Syntheselabor Typ I',
    teil_der_beauftragung = true,
    nc5_code = '35131',
    nc5_bezeichnung = 'Chemisch-technisches Labor mit bes. RLT-Anforderungen',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:589->ist_raumtyp->raumtyp:rt_1_1;
RELATE raum:589->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:589->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:589->hat_verortung->verortung:neubau;
RELATE raum:589->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 590: Labormodul 2-Achser Syntheselabor Typ I
UPSERT raum:590 SET
    nummer = 590,
    bezeichnung = 'Labormodul 2-Achser Syntheselabor Typ I',
    teil_der_beauftragung = true,
    nc5_code = '35131',
    nc5_bezeichnung = 'Chemisch-technisches Labor mit bes. RLT-Anforderungen',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:590->ist_raumtyp->raumtyp:rt_1_1;
RELATE raum:590->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:590->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:590->hat_verortung->verortung:neubau;
RELATE raum:590->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 591: Labormodul 2-Achser Syntheselabor Typ III
UPSERT raum:591 SET
    nummer = 591,
    bezeichnung = 'Labormodul 2-Achser Syntheselabor Typ III',
    teil_der_beauftragung = true,
    nc5_code = '35131',
    nc5_bezeichnung = 'Chemisch-technisches Labor mit bes. RLT-Anforderungen',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:591->ist_raumtyp->raumtyp:rt_1_3;
RELATE raum:591->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:591->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:591->hat_verortung->verortung:neubau;
RELATE raum:591->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 592: Labormodul 2-Achser Syntheselabor Typ III
UPSERT raum:592 SET
    nummer = 592,
    bezeichnung = 'Labormodul 2-Achser Syntheselabor Typ III',
    teil_der_beauftragung = true,
    nc5_code = '35131',
    nc5_bezeichnung = 'Chemisch-technisches Labor mit bes. RLT-Anforderungen',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:592->ist_raumtyp->raumtyp:rt_1_3;
RELATE raum:592->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:592->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:592->hat_verortung->verortung:neubau;
RELATE raum:592->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 593: Labormodul 2-Achser Syntheselabor Typ III
UPSERT raum:593 SET
    nummer = 593,
    bezeichnung = 'Labormodul 2-Achser Syntheselabor Typ III',
    teil_der_beauftragung = true,
    nc5_code = '35131',
    nc5_bezeichnung = 'Chemisch-technisches Labor mit bes. RLT-Anforderungen',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:593->ist_raumtyp->raumtyp:rt_1_3;
RELATE raum:593->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:593->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:593->hat_verortung->verortung:neubau;
RELATE raum:593->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 594: Labormodul 2-Achser Syntheselabor Typ III
UPSERT raum:594 SET
    nummer = 594,
    bezeichnung = 'Labormodul 2-Achser Syntheselabor Typ III',
    teil_der_beauftragung = true,
    nc5_code = '35131',
    nc5_bezeichnung = 'Chemisch-technisches Labor mit bes. RLT-Anforderungen',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:594->ist_raumtyp->raumtyp:rt_1_3;
RELATE raum:594->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:594->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:594->hat_verortung->verortung:neubau;
RELATE raum:594->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 595: Labormodul 2-Achser Syntheselabor Typ III
UPSERT raum:595 SET
    nummer = 595,
    bezeichnung = 'Labormodul 2-Achser Syntheselabor Typ III',
    teil_der_beauftragung = true,
    nc5_code = '35131',
    nc5_bezeichnung = 'Chemisch-technisches Labor mit bes. RLT-Anforderungen',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:595->ist_raumtyp->raumtyp:rt_1_3;
RELATE raum:595->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:595->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:595->hat_verortung->verortung:neubau;
RELATE raum:595->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 596: Labormodul 2-Achser Syntheselabor Typ III
UPSERT raum:596 SET
    nummer = 596,
    bezeichnung = 'Labormodul 2-Achser Syntheselabor Typ III',
    teil_der_beauftragung = true,
    nc5_code = '35131',
    nc5_bezeichnung = 'Chemisch-technisches Labor mit bes. RLT-Anforderungen',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:596->ist_raumtyp->raumtyp:rt_1_3;
RELATE raum:596->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:596->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:596->hat_verortung->verortung:neubau;
RELATE raum:596->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 597: Auswertemodul 2-Achser
UPSERT raum:597 SET
    nummer = 597,
    bezeichnung = 'Auswertemodul 2-Achser',
    teil_der_beauftragung = true,
    nc5_code = '21112',
    nc5_bezeichnung = 'Büroraum mit RLT 1',
    flaeche_nuf_1_6 = 26.04,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:597->ist_raumtyp->raumtyp:b2;
RELATE raum:597->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:597->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:597->hat_verortung->verortung:neubau;
RELATE raum:597->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 598: Auswertemodul 2-Achser
UPSERT raum:598 SET
    nummer = 598,
    bezeichnung = 'Auswertemodul 2-Achser',
    teil_der_beauftragung = true,
    nc5_code = '21112',
    nc5_bezeichnung = 'Büroraum mit RLT 1',
    flaeche_nuf_1_6 = 26.04,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:598->ist_raumtyp->raumtyp:b2;
RELATE raum:598->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:598->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:598->hat_verortung->verortung:neubau;
RELATE raum:598->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 599: Auswertemodul 2-Achser
UPSERT raum:599 SET
    nummer = 599,
    bezeichnung = 'Auswertemodul 2-Achser',
    teil_der_beauftragung = true,
    nc5_code = '21112',
    nc5_bezeichnung = 'Büroraum mit RLT 1',
    flaeche_nuf_1_6 = 26.04,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:599->ist_raumtyp->raumtyp:b2;
RELATE raum:599->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:599->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:599->hat_verortung->verortung:neubau;
RELATE raum:599->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 600: Auswertemodul 2-Achser
UPSERT raum:600 SET
    nummer = 600,
    bezeichnung = 'Auswertemodul 2-Achser',
    teil_der_beauftragung = true,
    nc5_code = '21112',
    nc5_bezeichnung = 'Büroraum mit RLT 1',
    flaeche_nuf_1_6 = 26.04,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:600->ist_raumtyp->raumtyp:b2;
RELATE raum:600->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:600->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:600->hat_verortung->verortung:neubau;
RELATE raum:600->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 601: Geräteraummodul 1-Achser
UPSERT raum:601 SET
    nummer = 601,
    bezeichnung = 'Geräteraummodul 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:601->ist_raumtyp->raumtyp:rt_2_1_syn;
RELATE raum:601->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:601->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:601->hat_verortung->verortung:neubau;
RELATE raum:601->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 602: Geräteraummodul 1-Achser
UPSERT raum:602 SET
    nummer = 602,
    bezeichnung = 'Geräteraummodul 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:602->ist_raumtyp->raumtyp:rt_2_1_syn;
RELATE raum:602->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:602->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:602->hat_verortung->verortung:neubau;
RELATE raum:602->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 603: Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser
UPSERT raum:603 SET
    nummer = 603,
    bezeichnung = 'Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '35211',
    nc5_bezeichnung = 'Labor für analytische Arbeiten',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:603->ist_raumtyp->raumtyp:rt_4_1;
RELATE raum:603->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:603->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:603->hat_verortung->verortung:neubau;
RELATE raum:603->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 604: Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser
UPSERT raum:604 SET
    nummer = 604,
    bezeichnung = 'Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '35211',
    nc5_bezeichnung = 'Labor für analytische Arbeiten',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:604->ist_raumtyp->raumtyp:rt_4_1;
RELATE raum:604->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:604->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:604->hat_verortung->verortung:neubau;
RELATE raum:604->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 605: Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser
UPSERT raum:605 SET
    nummer = 605,
    bezeichnung = 'Flexraummodul (Messraum, Freezerraum, Spülküche) 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '35211',
    nc5_bezeichnung = 'Labor für analytische Arbeiten',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:605->ist_raumtyp->raumtyp:rt_4_1;
RELATE raum:605->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:605->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:605->hat_verortung->verortung:neubau;
RELATE raum:605->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 606: +4-Grad-Kühlraumodul (Arbeitsraum) 1-Achser halb
UPSERT raum:606 SET
    nummer = 606,
    bezeichnung = '+4-Grad-Kühlraumodul (Arbeitsraum) 1-Achser halb',
    teil_der_beauftragung = true,
    nc5_code = '43311',
    nc5_bezeichnung = 'Kühlraum für wissenschaftliche Zwecke (nur Kühlung)',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:606->ist_raumtyp->raumtyp:rt_5_2;
RELATE raum:606->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:606->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:606->hat_verortung->verortung:neubau;
RELATE raum:606->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 607: Gefahrstofflagermodul 1-Achser halb (Stinkraum)
UPSERT raum:607 SET
    nummer = 607,
    bezeichnung = 'Gefahrstofflagermodul 1-Achser halb (Stinkraum)',
    teil_der_beauftragung = true,
    nc5_code = '35213',
    nc5_bezeichnung = 'Labor für analytisch-/präparativ-chemische Arbeiten mit RLT 2',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:607->ist_raumtyp->raumtyp:rt_6_1;
RELATE raum:607->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:607->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:607->hat_verortung->verortung:neubau;
RELATE raum:607->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 608: Laborlagermodul 1-Achser halb
UPSERT raum:608 SET
    nummer = 608,
    bezeichnung = 'Laborlagermodul 1-Achser halb',
    teil_der_beauftragung = true,
    nc5_code = '41111',
    nc5_bezeichnung = 'einfacher Lagerraum',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:608->ist_raumtyp->raumtyp:rt_7_1;
RELATE raum:608->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:608->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:608->hat_verortung->verortung:neubau;
RELATE raum:608->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 609: Einzelbüromodul
UPSERT raum:609 SET
    nummer = 609,
    bezeichnung = 'Einzelbüromodul',
    teil_der_beauftragung = true,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 9.89,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:609->ist_raumtyp->raumtyp:b1;
RELATE raum:609->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:609->hat_funktionsbereich->funktionsbereich:brobereich;
RELATE raum:609->hat_verortung->verortung:bestandsbau;
RELATE raum:609->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 610: Einzelbüromodul
UPSERT raum:610 SET
    nummer = 610,
    bezeichnung = 'Einzelbüromodul',
    teil_der_beauftragung = true,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 9.89,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:610->ist_raumtyp->raumtyp:b1;
RELATE raum:610->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:610->hat_funktionsbereich->funktionsbereich:brobereich;
RELATE raum:610->hat_verortung->verortung:bestandsbau;
RELATE raum:610->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 611: Besprechungsraummodul 10 AP
UPSERT raum:611 SET
    nummer = 611,
    bezeichnung = 'Besprechungsraummodul 10 AP',
    teil_der_beauftragung = true,
    nc5_code = '23211',
    nc5_bezeichnung = 'Besprechungsraum/Kommunikationsfläche',
    flaeche_nuf_1_6 = 26.02,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:611->ist_raumtyp->raumtyp:b3;
RELATE raum:611->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:611->hat_funktionsbereich->funktionsbereich:brobereich;
RELATE raum:611->hat_verortung->verortung:bestandsbau;
RELATE raum:611->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 612: Teeküche
UPSERT raum:612 SET
    nummer = 612,
    bezeichnung = 'Teeküche',
    teil_der_beauftragung = true,
    nc5_code = '12121',
    nc5_bezeichnung = 'Aufenthaltsraum mit Teeküche',
    flaeche_nuf_1_6 = 15.27,
    anzahl_raeume = 1,
    din277 = 'NUF1';
RELATE raum:612->ist_raumtyp->raumtyp:b5;
RELATE raum:612->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:612->hat_funktionsbereich->funktionsbereich:brobereich;
RELATE raum:612->hat_verortung->verortung:neubau;
RELATE raum:612->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 613: Praktikumssaal PC
UPSERT raum:613 SET
    nummer = 613,
    bezeichnung = 'Praktikumssaal PC',
    teil_der_beauftragung = true,
    nc5_code = '35131',
    nc5_bezeichnung = 'Chemisch-technisches Labor mit bes. RLT-Anforderungen',
    flaeche_nuf_1_6 = 166.92,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:613->ist_raumtyp->raumtyp:rt_8_1_1;
RELATE raum:613->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:613->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:613->hat_verortung->verortung:neubau;
RELATE raum:613->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 614: Geräteraummodul 1-Achser halb
UPSERT raum:614 SET
    nummer = 614,
    bezeichnung = 'Geräteraummodul 1-Achser halb',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:614->ist_raumtyp->raumtyp:rt_2_3;
RELATE raum:614->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:614->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:614->hat_verortung->verortung:neubau;
RELATE raum:614->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 615: Geräteraummodul 1-Achser halb
UPSERT raum:615 SET
    nummer = 615,
    bezeichnung = 'Geräteraummodul 1-Achser halb',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:615->ist_raumtyp->raumtyp:rt_2_3;
RELATE raum:615->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:615->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:615->hat_verortung->verortung:neubau;
RELATE raum:615->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 616: Geräteraummodul 1-Achser halb
UPSERT raum:616 SET
    nummer = 616,
    bezeichnung = 'Geräteraummodul 1-Achser halb',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:616->ist_raumtyp->raumtyp:rt_2_3;
RELATE raum:616->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:616->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:616->hat_verortung->verortung:neubau;
RELATE raum:616->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 617: Geräteraummodul 1-Achser halb
UPSERT raum:617 SET
    nummer = 617,
    bezeichnung = 'Geräteraummodul 1-Achser halb',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:617->ist_raumtyp->raumtyp:rt_2_3;
RELATE raum:617->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:617->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:617->hat_verortung->verortung:neubau;
RELATE raum:617->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 618: Gefahrstofflagermodul 1-Achser halb (Stinkraum)
UPSERT raum:618 SET
    nummer = 618,
    bezeichnung = 'Gefahrstofflagermodul 1-Achser halb (Stinkraum)',
    teil_der_beauftragung = true,
    nc5_code = '35213',
    nc5_bezeichnung = 'Labor für analytisch-/präparativ-chemische Arbeiten mit RLT 2',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:618->ist_raumtyp->raumtyp:rt_6_1;
RELATE raum:618->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:618->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:618->hat_verortung->verortung:neubau;
RELATE raum:618->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 619: Praktikumssaal Synthese
UPSERT raum:619 SET
    nummer = 619,
    bezeichnung = 'Praktikumssaal Synthese',
    teil_der_beauftragung = true,
    nc5_code = '35131',
    nc5_bezeichnung = 'Chemisch-technisches Labor mit bes. RLT-Anforderungen',
    flaeche_nuf_1_6 = 195.78,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:619->ist_raumtyp->raumtyp:rt_8_2;
RELATE raum:619->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:619->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:619->hat_verortung->verortung:neubau;
RELATE raum:619->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 620: Praktikumssaal Synthese
UPSERT raum:620 SET
    nummer = 620,
    bezeichnung = 'Praktikumssaal Synthese',
    teil_der_beauftragung = true,
    nc5_code = '35131',
    nc5_bezeichnung = 'Chemisch-technisches Labor mit bes. RLT-Anforderungen',
    flaeche_nuf_1_6 = 195.78,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:620->ist_raumtyp->raumtyp:rt_8_2;
RELATE raum:620->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:620->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:620->hat_verortung->verortung:neubau;
RELATE raum:620->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 621: Praktikumssaal Synthese
UPSERT raum:621 SET
    nummer = 621,
    bezeichnung = 'Praktikumssaal Synthese',
    teil_der_beauftragung = true,
    nc5_code = '35131',
    nc5_bezeichnung = 'Chemisch-technisches Labor mit bes. RLT-Anforderungen',
    flaeche_nuf_1_6 = 195.78,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:621->ist_raumtyp->raumtyp:rt_8_2;
RELATE raum:621->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:621->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:621->hat_verortung->verortung:neubau;
RELATE raum:621->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 622: Praktikumssaal allgemein
UPSERT raum:622 SET
    nummer = 622,
    bezeichnung = 'Praktikumssaal allgemein',
    teil_der_beauftragung = true,
    nc5_code = '35131',
    nc5_bezeichnung = 'Chemisch-technisches Labor mit bes. RLT-Anforderungen',
    flaeche_nuf_1_6 = 195.78,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:622->ist_raumtyp->raumtyp:rt_8_5;
RELATE raum:622->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:622->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:622->hat_verortung->verortung:neubau;
RELATE raum:622->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 623: Geräteraummodul 1-Achser
UPSERT raum:623 SET
    nummer = 623,
    bezeichnung = 'Geräteraummodul 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:623->ist_raumtyp->raumtyp:rt_2_1_bc;
RELATE raum:623->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:623->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:623->hat_verortung->verortung:neubau;
RELATE raum:623->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 624: Geräteraummodul 1-Achser
UPSERT raum:624 SET
    nummer = 624,
    bezeichnung = 'Geräteraummodul 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:624->ist_raumtyp->raumtyp:rt_2_1_bc;
RELATE raum:624->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:624->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:624->hat_verortung->verortung:neubau;
RELATE raum:624->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 625: Geräteraummodul 1-Achser
UPSERT raum:625 SET
    nummer = 625,
    bezeichnung = 'Geräteraummodul 1-Achser',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:625->ist_raumtyp->raumtyp:rt_2_1_bc;
RELATE raum:625->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:625->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:625->hat_verortung->verortung:neubau;
RELATE raum:625->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 626: Geräteraummodul 1-Achser halb
UPSERT raum:626 SET
    nummer = 626,
    bezeichnung = 'Geräteraummodul 1-Achser halb',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:626->ist_raumtyp->raumtyp:rt_2_3;
RELATE raum:626->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:626->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:626->hat_verortung->verortung:neubau;
RELATE raum:626->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 627: Geräteraummodul 1-Achser halb
UPSERT raum:627 SET
    nummer = 627,
    bezeichnung = 'Geräteraummodul 1-Achser halb',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:627->ist_raumtyp->raumtyp:rt_2_3;
RELATE raum:627->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:627->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:627->hat_verortung->verortung:neubau;
RELATE raum:627->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 628: Geräteraummodul 1-Achser halb
UPSERT raum:628 SET
    nummer = 628,
    bezeichnung = 'Geräteraummodul 1-Achser halb',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:628->ist_raumtyp->raumtyp:rt_2_3;
RELATE raum:628->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:628->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:628->hat_verortung->verortung:neubau;
RELATE raum:628->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 629: Geräteraummodul 1-Achser halb
UPSERT raum:629 SET
    nummer = 629,
    bezeichnung = 'Geräteraummodul 1-Achser halb',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:629->ist_raumtyp->raumtyp:rt_2_3;
RELATE raum:629->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:629->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:629->hat_verortung->verortung:neubau;
RELATE raum:629->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 630: Geräteraummodul 1-Achser halb
UPSERT raum:630 SET
    nummer = 630,
    bezeichnung = 'Geräteraummodul 1-Achser halb',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:630->ist_raumtyp->raumtyp:rt_2_3;
RELATE raum:630->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:630->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:630->hat_verortung->verortung:neubau;
RELATE raum:630->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 631: Geräteraummodul 1-Achser halb
UPSERT raum:631 SET
    nummer = 631,
    bezeichnung = 'Geräteraummodul 1-Achser halb',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:631->ist_raumtyp->raumtyp:rt_2_3;
RELATE raum:631->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:631->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:631->hat_verortung->verortung:neubau;
RELATE raum:631->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 632: Geräteraummodul 1-Achser halb
UPSERT raum:632 SET
    nummer = 632,
    bezeichnung = 'Geräteraummodul 1-Achser halb',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:632->ist_raumtyp->raumtyp:rt_2_3;
RELATE raum:632->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:632->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:632->hat_verortung->verortung:neubau;
RELATE raum:632->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 633: Gefahrstofflagermodul 1-Achser halb (Stinkraum)
UPSERT raum:633 SET
    nummer = 633,
    bezeichnung = 'Gefahrstofflagermodul 1-Achser halb (Stinkraum)',
    teil_der_beauftragung = true,
    nc5_code = '35213',
    nc5_bezeichnung = 'Labor für analytisch-/präparativ-chemische Arbeiten mit RLT 2',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:633->ist_raumtyp->raumtyp:rt_6_1;
RELATE raum:633->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:633->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:633->hat_verortung->verortung:neubau;
RELATE raum:633->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 634: Gefahrstofflagermodul 1-Achser halb (Stinkraum)
UPSERT raum:634 SET
    nummer = 634,
    bezeichnung = 'Gefahrstofflagermodul 1-Achser halb (Stinkraum)',
    teil_der_beauftragung = true,
    nc5_code = '35213',
    nc5_bezeichnung = 'Labor für analytisch-/präparativ-chemische Arbeiten mit RLT 2',
    flaeche_nuf_1_6 = 9.86,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:634->ist_raumtyp->raumtyp:rt_6_1;
RELATE raum:634->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:634->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:634->hat_verortung->verortung:neubau;
RELATE raum:634->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 635: Gefahrstofflager 2-Achser (Stinkraum)
UPSERT raum:635 SET
    nummer = 635,
    bezeichnung = 'Gefahrstofflager 2-Achser (Stinkraum)',
    teil_der_beauftragung = true,
    nc5_code = '35213',
    nc5_bezeichnung = 'Labor für analytisch-/präparativ-chemische Arbeiten mit RLT 2',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:635->ist_raumtyp->raumtyp:rt_8_4;
RELATE raum:635->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:635->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:635->hat_verortung->verortung:neubau;
RELATE raum:635->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 636: Lagermodul Keller allgemein
UPSERT raum:636 SET
    nummer = 636,
    bezeichnung = 'Lagermodul Keller allgemein',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:636->ist_raumtyp->raumtyp:l1_1;
RELATE raum:636->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:636->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:636->hat_verortung->verortung:neubau;
RELATE raum:636->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 637: Gefahrstofflagermodul  1-Achser (Stinkraum) Keller
UPSERT raum:637 SET
    nummer = 637,
    bezeichnung = 'Gefahrstofflagermodul  1-Achser (Stinkraum) Keller',
    teil_der_beauftragung = true,
    nc5_code = '35213',
    nc5_bezeichnung = 'Labor für analytisch-/präparativ-chemische Arbeiten mit RLT 2',
    flaeche_nuf_1_6 = 20.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:637->ist_raumtyp->raumtyp:l1_2;
RELATE raum:637->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:637->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:637->hat_verortung->verortung:neubau;
RELATE raum:637->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 638: Kompensation Biologie Gerätelabor
UPSERT raum:638 SET
    nummer = 638,
    bezeichnung = 'Kompensation Biologie Gerätelabor',
    teil_der_beauftragung = true,
    nc5_code = '39711',
    nc5_bezeichnung = 'Geräteraum Labor',
    flaeche_nuf_1_6 = 42.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:638->ist_raumtyp->raumtyp:rt_9_1;
RELATE raum:638->gehoert_zu_teilprojekt->teilprojekt:chemie;
RELATE raum:638->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:638->hat_verortung->verortung:neubau;
RELATE raum:638->wird_genutzt_von->nutzer:fakultt_chemie;

-- Raum 639: Separater Auswerte- und Steuerarbeitsplatz
UPSERT raum:639 SET
    nummer = 639,
    bezeichnung = 'Separater Auswerte- und Steuerarbeitsplatz',
    teil_der_beauftragung = true,
    nc5_code = '34212',
    nc5_bezeichnung = 'Physiklabor mit bes. Anforderungen',
    flaeche_nuf_1_6 = 50.0,
    personen_max = 11,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:639->ist_raumtyp->raumtyp:f_8;
RELATE raum:639->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:639->hat_funktionsbereich->funktionsbereich:astronomie;
RELATE raum:639->hat_verortung->verortung:neubau;
RELATE raum:639->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 640: Labor hohe Anforderungen
UPSERT raum:640 SET
    nummer = 640,
    bezeichnung = 'Labor hohe Anforderungen',
    teil_der_beauftragung = true,
    nc5_code = '34232',
    nc5_bezeichnung = 'Physikalischer Meßraum mit besonderen RLT-Anforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:640->ist_raumtyp->raumtyp:l_1_1;
RELATE raum:640->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:640->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:640->hat_verortung->verortung:neubau;
RELATE raum:640->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 641: Labor hohe Anforderungen
UPSERT raum:641 SET
    nummer = 641,
    bezeichnung = 'Labor hohe Anforderungen',
    teil_der_beauftragung = true,
    nc5_code = '34232',
    nc5_bezeichnung = 'Physikalischer Meßraum mit besonderen RLT-Anforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:641->ist_raumtyp->raumtyp:l_1_1;
RELATE raum:641->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:641->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:641->hat_verortung->verortung:neubau;
RELATE raum:641->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 642: Labor hohe Anforderungen
UPSERT raum:642 SET
    nummer = 642,
    bezeichnung = 'Labor hohe Anforderungen',
    teil_der_beauftragung = true,
    nc5_code = '34232',
    nc5_bezeichnung = 'Physikalischer Meßraum mit besonderen RLT-Anforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:642->ist_raumtyp->raumtyp:l_1_1;
RELATE raum:642->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:642->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:642->hat_verortung->verortung:neubau;
RELATE raum:642->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 643: Labor hohe Anforderungen
UPSERT raum:643 SET
    nummer = 643,
    bezeichnung = 'Labor hohe Anforderungen',
    teil_der_beauftragung = true,
    nc5_code = '34232',
    nc5_bezeichnung = 'Physikalischer Meßraum mit besonderen RLT-Anforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:643->ist_raumtyp->raumtyp:l_1_1;
RELATE raum:643->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:643->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:643->hat_verortung->verortung:neubau;
RELATE raum:643->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 644: Labor hohe Anforderungen
UPSERT raum:644 SET
    nummer = 644,
    bezeichnung = 'Labor hohe Anforderungen',
    teil_der_beauftragung = true,
    nc5_code = '34232',
    nc5_bezeichnung = 'Physikalischer Meßraum mit besonderen RLT-Anforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:644->ist_raumtyp->raumtyp:l_1_1;
RELATE raum:644->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:644->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:644->hat_verortung->verortung:neubau;
RELATE raum:644->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 645: Labor hohe Anforderungen
UPSERT raum:645 SET
    nummer = 645,
    bezeichnung = 'Labor hohe Anforderungen',
    teil_der_beauftragung = true,
    nc5_code = '34232',
    nc5_bezeichnung = 'Physikalischer Meßraum mit besonderen RLT-Anforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:645->ist_raumtyp->raumtyp:l_1_1;
RELATE raum:645->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:645->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:645->hat_verortung->verortung:neubau;
RELATE raum:645->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 646: Labor hohe Anforderungen Bodenplatte / Gründung
UPSERT raum:646 SET
    nummer = 646,
    bezeichnung = 'Labor hohe Anforderungen Bodenplatte / Gründung',
    teil_der_beauftragung = true,
    nc5_code = '34232',
    nc5_bezeichnung = 'Physikalischer Meßraum mit besonderen RLT-Anforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:646->ist_raumtyp->raumtyp:l_1_2;
RELATE raum:646->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:646->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:646->hat_verortung->verortung:neubau;
RELATE raum:646->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 647: Labor hohe Anforderungen Bodenplatte / Gründung
UPSERT raum:647 SET
    nummer = 647,
    bezeichnung = 'Labor hohe Anforderungen Bodenplatte / Gründung',
    teil_der_beauftragung = true,
    nc5_code = '34232',
    nc5_bezeichnung = 'Physikalischer Meßraum mit besonderen RLT-Anforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:647->ist_raumtyp->raumtyp:l_1_2;
RELATE raum:647->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:647->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:647->hat_verortung->verortung:neubau;
RELATE raum:647->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 648: Labor hohe Anforderungen Bodenplatte / Gründung
UPSERT raum:648 SET
    nummer = 648,
    bezeichnung = 'Labor hohe Anforderungen Bodenplatte / Gründung',
    teil_der_beauftragung = true,
    nc5_code = '34232',
    nc5_bezeichnung = 'Physikalischer Meßraum mit besonderen RLT-Anforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:648->ist_raumtyp->raumtyp:l_1_2;
RELATE raum:648->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:648->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:648->hat_verortung->verortung:neubau;
RELATE raum:648->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 649: Labor hohe Anforderungen Bodenplatte / Gründung
UPSERT raum:649 SET
    nummer = 649,
    bezeichnung = 'Labor hohe Anforderungen Bodenplatte / Gründung',
    teil_der_beauftragung = true,
    nc5_code = '34232',
    nc5_bezeichnung = 'Physikalischer Meßraum mit besonderen RLT-Anforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:649->ist_raumtyp->raumtyp:l_1_2;
RELATE raum:649->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:649->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:649->hat_verortung->verortung:neubau;
RELATE raum:649->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 650: Labor hohe Anforderungen Bodenplatte / Gründung
UPSERT raum:650 SET
    nummer = 650,
    bezeichnung = 'Labor hohe Anforderungen Bodenplatte / Gründung',
    teil_der_beauftragung = true,
    nc5_code = '34232',
    nc5_bezeichnung = 'Physikalischer Meßraum mit besonderen RLT-Anforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:650->ist_raumtyp->raumtyp:l_1_2;
RELATE raum:650->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:650->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:650->hat_verortung->verortung:neubau;
RELATE raum:650->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 651: Labor hohe Anforderungen Bodenplatte / Gründung
UPSERT raum:651 SET
    nummer = 651,
    bezeichnung = 'Labor hohe Anforderungen Bodenplatte / Gründung',
    teil_der_beauftragung = true,
    nc5_code = '34232',
    nc5_bezeichnung = 'Physikalischer Meßraum mit besonderen RLT-Anforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:651->ist_raumtyp->raumtyp:l_1_2;
RELATE raum:651->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:651->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:651->hat_verortung->verortung:neubau;
RELATE raum:651->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 652: Labor einfach
UPSERT raum:652 SET
    nummer = 652,
    bezeichnung = 'Labor einfach',
    teil_der_beauftragung = true,
    nc5_code = '34211',
    nc5_bezeichnung = 'Physiklabor (einfaches physikalisches Messlabor)',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:652->ist_raumtyp->raumtyp:l_2;
RELATE raum:652->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:652->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:652->hat_verortung->verortung:neubau;
RELATE raum:652->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 653: Labor einfach
UPSERT raum:653 SET
    nummer = 653,
    bezeichnung = 'Labor einfach',
    teil_der_beauftragung = true,
    nc5_code = '34211',
    nc5_bezeichnung = 'Physiklabor (einfaches physikalisches Messlabor)',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:653->ist_raumtyp->raumtyp:l_2;
RELATE raum:653->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:653->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:653->hat_verortung->verortung:neubau;
RELATE raum:653->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 654: Labor einfach
UPSERT raum:654 SET
    nummer = 654,
    bezeichnung = 'Labor einfach',
    teil_der_beauftragung = true,
    nc5_code = '34211',
    nc5_bezeichnung = 'Physiklabor (einfaches physikalisches Messlabor)',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:654->ist_raumtyp->raumtyp:l_2;
RELATE raum:654->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:654->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:654->hat_verortung->verortung:neubau;
RELATE raum:654->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 655: Labor einfach
UPSERT raum:655 SET
    nummer = 655,
    bezeichnung = 'Labor einfach',
    teil_der_beauftragung = true,
    nc5_code = '34211',
    nc5_bezeichnung = 'Physiklabor (einfaches physikalisches Messlabor)',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:655->ist_raumtyp->raumtyp:l_2;
RELATE raum:655->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:655->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:655->hat_verortung->verortung:neubau;
RELATE raum:655->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 656: Labor einfach
UPSERT raum:656 SET
    nummer = 656,
    bezeichnung = 'Labor einfach',
    teil_der_beauftragung = true,
    nc5_code = '34211',
    nc5_bezeichnung = 'Physiklabor (einfaches physikalisches Messlabor)',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:656->ist_raumtyp->raumtyp:l_2;
RELATE raum:656->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:656->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:656->hat_verortung->verortung:neubau;
RELATE raum:656->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 657: Labor einfach
UPSERT raum:657 SET
    nummer = 657,
    bezeichnung = 'Labor einfach',
    teil_der_beauftragung = true,
    nc5_code = '34211',
    nc5_bezeichnung = 'Physiklabor (einfaches physikalisches Messlabor)',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:657->ist_raumtyp->raumtyp:l_2;
RELATE raum:657->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:657->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:657->hat_verortung->verortung:neubau;
RELATE raum:657->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 658: Labor einfach
UPSERT raum:658 SET
    nummer = 658,
    bezeichnung = 'Labor einfach',
    teil_der_beauftragung = true,
    nc5_code = '34211',
    nc5_bezeichnung = 'Physiklabor (einfaches physikalisches Messlabor)',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:658->ist_raumtyp->raumtyp:l_2;
RELATE raum:658->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:658->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:658->hat_verortung->verortung:neubau;
RELATE raum:658->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 659: Labor einfach
UPSERT raum:659 SET
    nummer = 659,
    bezeichnung = 'Labor einfach',
    teil_der_beauftragung = true,
    nc5_code = '34211',
    nc5_bezeichnung = 'Physiklabor (einfaches physikalisches Messlabor)',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:659->ist_raumtyp->raumtyp:l_2;
RELATE raum:659->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:659->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:659->hat_verortung->verortung:neubau;
RELATE raum:659->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 660: Laserlabor hohe Anforderungen Dunkelraum
UPSERT raum:660 SET
    nummer = 660,
    bezeichnung = 'Laserlabor hohe Anforderungen Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '34232',
    nc5_bezeichnung = 'Physikalischer Meßraum mit besonderen RLT-Anforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:660->ist_raumtyp->raumtyp:l_3_1;
RELATE raum:660->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:660->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:660->hat_verortung->verortung:neubau;
RELATE raum:660->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 661: Laserlabor hohe Anforderungen Dunkelraum
UPSERT raum:661 SET
    nummer = 661,
    bezeichnung = 'Laserlabor hohe Anforderungen Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '34232',
    nc5_bezeichnung = 'Physikalischer Meßraum mit besonderen RLT-Anforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:661->ist_raumtyp->raumtyp:l_3_1;
RELATE raum:661->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:661->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:661->hat_verortung->verortung:neubau;
RELATE raum:661->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 662: Laserlabor hohe Anforderungen Dunkelraum
UPSERT raum:662 SET
    nummer = 662,
    bezeichnung = 'Laserlabor hohe Anforderungen Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '34232',
    nc5_bezeichnung = 'Physikalischer Meßraum mit besonderen RLT-Anforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:662->ist_raumtyp->raumtyp:l_3_1;
RELATE raum:662->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:662->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:662->hat_verortung->verortung:neubau;
RELATE raum:662->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 663: Laserlabor hohe Anforderungen Dunkelraum
UPSERT raum:663 SET
    nummer = 663,
    bezeichnung = 'Laserlabor hohe Anforderungen Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '34232',
    nc5_bezeichnung = 'Physikalischer Meßraum mit besonderen RLT-Anforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:663->ist_raumtyp->raumtyp:l_3_1;
RELATE raum:663->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:663->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:663->hat_verortung->verortung:neubau;
RELATE raum:663->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 664: Laserlabor hohe Anforderungen Bodenplatte / Gründung Dunkelraum
UPSERT raum:664 SET
    nummer = 664,
    bezeichnung = 'Laserlabor hohe Anforderungen Bodenplatte / Gründung Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '34232',
    nc5_bezeichnung = 'Physikalischer Meßraum mit besonderen RLT-Anforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:664->ist_raumtyp->raumtyp:l_3_2;
RELATE raum:664->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:664->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:664->hat_verortung->verortung:neubau;
RELATE raum:664->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 665: Laserlabor hohe Anforderungen Bodenplatte / Gründung Dunkelraum
UPSERT raum:665 SET
    nummer = 665,
    bezeichnung = 'Laserlabor hohe Anforderungen Bodenplatte / Gründung Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '34232',
    nc5_bezeichnung = 'Physikalischer Meßraum mit besonderen RLT-Anforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:665->ist_raumtyp->raumtyp:l_3_2;
RELATE raum:665->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:665->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:665->hat_verortung->verortung:neubau;
RELATE raum:665->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 666: Laserlabor hohe Anforderungen Bodenplatte / Gründung Dunkelraum
UPSERT raum:666 SET
    nummer = 666,
    bezeichnung = 'Laserlabor hohe Anforderungen Bodenplatte / Gründung Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '34232',
    nc5_bezeichnung = 'Physikalischer Meßraum mit besonderen RLT-Anforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:666->ist_raumtyp->raumtyp:l_3_2;
RELATE raum:666->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:666->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:666->hat_verortung->verortung:neubau;
RELATE raum:666->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 667: Laserlabor hohe Anforderungen Bodenplatte / Gründung Dunkelraum
UPSERT raum:667 SET
    nummer = 667,
    bezeichnung = 'Laserlabor hohe Anforderungen Bodenplatte / Gründung Dunkelraum',
    teil_der_beauftragung = true,
    nc5_code = '34232',
    nc5_bezeichnung = 'Physikalischer Meßraum mit besonderen RLT-Anforderungen und Medienversorgung',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:667->ist_raumtyp->raumtyp:l_3_2;
RELATE raum:667->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:667->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:667->hat_verortung->verortung:neubau;
RELATE raum:667->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 668: Laserlabor einfach
UPSERT raum:668 SET
    nummer = 668,
    bezeichnung = 'Laserlabor einfach',
    teil_der_beauftragung = true,
    nc5_code = '34231',
    nc5_bezeichnung = 'Physikalischer Meßraum mit besonderen RLT-Anforderungen',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:668->ist_raumtyp->raumtyp:l_4;
RELATE raum:668->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:668->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:668->hat_verortung->verortung:neubau;
RELATE raum:668->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 669: Laserlabor einfach
UPSERT raum:669 SET
    nummer = 669,
    bezeichnung = 'Laserlabor einfach',
    teil_der_beauftragung = true,
    nc5_code = '34231',
    nc5_bezeichnung = 'Physikalischer Meßraum mit besonderen RLT-Anforderungen',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:669->ist_raumtyp->raumtyp:l_4;
RELATE raum:669->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:669->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:669->hat_verortung->verortung:neubau;
RELATE raum:669->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 670: Laserlabor einfach
UPSERT raum:670 SET
    nummer = 670,
    bezeichnung = 'Laserlabor einfach',
    teil_der_beauftragung = true,
    nc5_code = '34231',
    nc5_bezeichnung = 'Physikalischer Meßraum mit besonderen RLT-Anforderungen',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:670->ist_raumtyp->raumtyp:l_4;
RELATE raum:670->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:670->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:670->hat_verortung->verortung:neubau;
RELATE raum:670->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 671: Laserlabor einfach
UPSERT raum:671 SET
    nummer = 671,
    bezeichnung = 'Laserlabor einfach',
    teil_der_beauftragung = true,
    nc5_code = '34231',
    nc5_bezeichnung = 'Physikalischer Meßraum mit besonderen RLT-Anforderungen',
    flaeche_nuf_1_6 = 43.4,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:671->ist_raumtyp->raumtyp:l_4;
RELATE raum:671->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:671->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:671->hat_verortung->verortung:neubau;
RELATE raum:671->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 672: Labor präparativ / Chemisch
UPSERT raum:672 SET
    nummer = 672,
    bezeichnung = 'Labor präparativ / Chemisch',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:672->ist_raumtyp->raumtyp:l_5;
RELATE raum:672->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:672->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:672->hat_verortung->verortung:neubau;
RELATE raum:672->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 673: Labor präparativ / Chemisch
UPSERT raum:673 SET
    nummer = 673,
    bezeichnung = 'Labor präparativ / Chemisch',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:673->ist_raumtyp->raumtyp:l_5;
RELATE raum:673->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:673->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:673->hat_verortung->verortung:neubau;
RELATE raum:673->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 674: Labor präparativ / Chemisch
UPSERT raum:674 SET
    nummer = 674,
    bezeichnung = 'Labor präparativ / Chemisch',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:674->ist_raumtyp->raumtyp:l_5;
RELATE raum:674->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:674->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:674->hat_verortung->verortung:neubau;
RELATE raum:674->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 675: Labor präparativ / Chemisch
UPSERT raum:675 SET
    nummer = 675,
    bezeichnung = 'Labor präparativ / Chemisch',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:675->ist_raumtyp->raumtyp:l_5;
RELATE raum:675->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:675->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:675->hat_verortung->verortung:neubau;
RELATE raum:675->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 676: Separater Auswerte- und Steuerarbeitsplatz
UPSERT raum:676 SET
    nummer = 676,
    bezeichnung = 'Separater Auswerte- und Steuerarbeitsplatz',
    teil_der_beauftragung = true,
    nc5_code = '34211',
    nc5_bezeichnung = 'Physiklabor (einfaches physikalisches Messlabor)',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:676->ist_raumtyp->raumtyp:a_1;
RELATE raum:676->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:676->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:676->hat_verortung->verortung:neubau;
RELATE raum:676->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 677: Nutzerwerkstatt
UPSERT raum:677 SET
    nummer = 677,
    bezeichnung = 'Nutzerwerkstatt',
    teil_der_beauftragung = true,
    nc5_code = '34211',
    nc5_bezeichnung = 'Physiklabor (einfaches physikalisches Messlabor)',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:677->ist_raumtyp->raumtyp:n_1;
RELATE raum:677->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:677->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:677->hat_verortung->verortung:neubau;
RELATE raum:677->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 678: Nutzerwerkstatt
UPSERT raum:678 SET
    nummer = 678,
    bezeichnung = 'Nutzerwerkstatt',
    teil_der_beauftragung = true,
    nc5_code = '34211',
    nc5_bezeichnung = 'Physiklabor (einfaches physikalisches Messlabor)',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:678->ist_raumtyp->raumtyp:n_1;
RELATE raum:678->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:678->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:678->hat_verortung->verortung:neubau;
RELATE raum:678->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 679: Nutzerwerkstatt
UPSERT raum:679 SET
    nummer = 679,
    bezeichnung = 'Nutzerwerkstatt',
    teil_der_beauftragung = true,
    nc5_code = '34211',
    nc5_bezeichnung = 'Physiklabor (einfaches physikalisches Messlabor)',
    flaeche_nuf_1_6 = 21.08,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:679->ist_raumtyp->raumtyp:n_1;
RELATE raum:679->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:679->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:679->hat_verortung->verortung:neubau;
RELATE raum:679->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 680: Geräteraum
UPSERT raum:680 SET
    nummer = 680,
    bezeichnung = 'Geräteraum',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:680->ist_raumtyp->raumtyp:n_2_1;
RELATE raum:680->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:680->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:680->hat_verortung->verortung:neubau;
RELATE raum:680->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 681: Geräteraum
UPSERT raum:681 SET
    nummer = 681,
    bezeichnung = 'Geräteraum',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 14.88,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:681->ist_raumtyp->raumtyp:n_2_2;
RELATE raum:681->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:681->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:681->hat_verortung->verortung:neubau;
RELATE raum:681->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 682: Geräteraum
UPSERT raum:682 SET
    nummer = 682,
    bezeichnung = 'Geräteraum',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 14.88,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:682->ist_raumtyp->raumtyp:n_2_2;
RELATE raum:682->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:682->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:682->hat_verortung->verortung:neubau;
RELATE raum:682->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 683: Geräteraum
UPSERT raum:683 SET
    nummer = 683,
    bezeichnung = 'Geräteraum',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 14.88,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:683->ist_raumtyp->raumtyp:n_2_2;
RELATE raum:683->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:683->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:683->hat_verortung->verortung:neubau;
RELATE raum:683->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 684: Geräteraum
UPSERT raum:684 SET
    nummer = 684,
    bezeichnung = 'Geräteraum',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 14.88,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:684->ist_raumtyp->raumtyp:n_2_2;
RELATE raum:684->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:684->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:684->hat_verortung->verortung:neubau;
RELATE raum:684->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 685: Geräteraum klein
UPSERT raum:685 SET
    nummer = 685,
    bezeichnung = 'Geräteraum klein',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 10.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:685->ist_raumtyp->raumtyp:n_2_3;
RELATE raum:685->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:685->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:685->hat_verortung->verortung:neubau;
RELATE raum:685->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 686: Geräteraum klein
UPSERT raum:686 SET
    nummer = 686,
    bezeichnung = 'Geräteraum klein',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 7.2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:686->ist_raumtyp->raumtyp:n_2_4;
RELATE raum:686->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:686->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:686->hat_verortung->verortung:neubau;
RELATE raum:686->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 687: Geräteraum klein
UPSERT raum:687 SET
    nummer = 687,
    bezeichnung = 'Geräteraum klein',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 7.2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:687->ist_raumtyp->raumtyp:n_2_4;
RELATE raum:687->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:687->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:687->hat_verortung->verortung:neubau;
RELATE raum:687->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 688: Geräteraum klein
UPSERT raum:688 SET
    nummer = 688,
    bezeichnung = 'Geräteraum klein',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 7.2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:688->ist_raumtyp->raumtyp:n_2_4;
RELATE raum:688->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:688->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:688->hat_verortung->verortung:neubau;
RELATE raum:688->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 689: Geräteraum klein
UPSERT raum:689 SET
    nummer = 689,
    bezeichnung = 'Geräteraum klein',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 7.2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:689->ist_raumtyp->raumtyp:n_2_4;
RELATE raum:689->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:689->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:689->hat_verortung->verortung:neubau;
RELATE raum:689->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 690: Gasflaschenlager
UPSERT raum:690 SET
    nummer = 690,
    bezeichnung = 'Gasflaschenlager',
    teil_der_beauftragung = true,
    nc5_code = '72413',
    nc5_bezeichnung = 'Versorgungsraum Gase',
    flaeche_nuf_7_9 = 7.56,
    anzahl_raeume = 1,
    din277 = 'NUF7';
RELATE raum:690->ist_raumtyp->raumtyp:n_3_1;
RELATE raum:690->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:690->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:690->hat_verortung->verortung:neubau;
RELATE raum:690->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 691: Gasflaschenlager
UPSERT raum:691 SET
    nummer = 691,
    bezeichnung = 'Gasflaschenlager',
    teil_der_beauftragung = true,
    nc5_code = '72413',
    nc5_bezeichnung = 'Versorgungsraum Gase',
    flaeche_nuf_7_9 = 7.56,
    anzahl_raeume = 1,
    din277 = 'NUF7';
RELATE raum:691->ist_raumtyp->raumtyp:n_3_1;
RELATE raum:691->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:691->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:691->hat_verortung->verortung:neubau;
RELATE raum:691->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 692: Gasflaschenlager
UPSERT raum:692 SET
    nummer = 692,
    bezeichnung = 'Gasflaschenlager',
    teil_der_beauftragung = true,
    nc5_code = '72413',
    nc5_bezeichnung = 'Versorgungsraum Gase',
    flaeche_nuf_7_9 = 7.56,
    anzahl_raeume = 1,
    din277 = 'NUF7';
RELATE raum:692->ist_raumtyp->raumtyp:n_3_1;
RELATE raum:692->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:692->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:692->hat_verortung->verortung:neubau;
RELATE raum:692->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 693: Gasflaschenlager
UPSERT raum:693 SET
    nummer = 693,
    bezeichnung = 'Gasflaschenlager',
    teil_der_beauftragung = true,
    nc5_code = '72413',
    nc5_bezeichnung = 'Versorgungsraum Gase',
    flaeche_nuf_7_9 = 7.56,
    anzahl_raeume = 1,
    din277 = 'NUF7';
RELATE raum:693->ist_raumtyp->raumtyp:n_3_1;
RELATE raum:693->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:693->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:693->hat_verortung->verortung:neubau;
RELATE raum:693->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 694: Gasflaschenlager
UPSERT raum:694 SET
    nummer = 694,
    bezeichnung = 'Gasflaschenlager',
    teil_der_beauftragung = true,
    nc5_code = '72413',
    nc5_bezeichnung = 'Versorgungsraum Gase',
    flaeche_nuf_7_9 = 7.56,
    anzahl_raeume = 1,
    din277 = 'NUF7';
RELATE raum:694->ist_raumtyp->raumtyp:n_3_1;
RELATE raum:694->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:694->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:694->hat_verortung->verortung:neubau;
RELATE raum:694->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 695: Gasflaschenlager
UPSERT raum:695 SET
    nummer = 695,
    bezeichnung = 'Gasflaschenlager',
    teil_der_beauftragung = true,
    nc5_code = '72413',
    nc5_bezeichnung = 'Versorgungsraum Gase',
    flaeche_nuf_7_9 = 15.6,
    anzahl_raeume = 1,
    din277 = 'NUF7';
RELATE raum:695->ist_raumtyp->raumtyp:n_3_2;
RELATE raum:695->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:695->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:695->hat_verortung->verortung:neubau;
RELATE raum:695->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 696: Materiallager
UPSERT raum:696 SET
    nummer = 696,
    bezeichnung = 'Materiallager',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 15.6,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:696->ist_raumtyp->raumtyp:n_4;
RELATE raum:696->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:696->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:696->hat_verortung->verortung:neubau;
RELATE raum:696->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 697: Materiallager
UPSERT raum:697 SET
    nummer = 697,
    bezeichnung = 'Materiallager',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 15.6,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:697->ist_raumtyp->raumtyp:n_4;
RELATE raum:697->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:697->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:697->hat_verortung->verortung:neubau;
RELATE raum:697->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 698: Materiallager
UPSERT raum:698 SET
    nummer = 698,
    bezeichnung = 'Materiallager',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 15.6,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:698->ist_raumtyp->raumtyp:n_4;
RELATE raum:698->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:698->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:698->hat_verortung->verortung:neubau;
RELATE raum:698->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 699: Serverraum zur Datenanalyse und -sicherung
UPSERT raum:699 SET
    nummer = 699,
    bezeichnung = 'Serverraum zur Datenanalyse und -sicherung',
    teil_der_beauftragung = true,
    nc5_code = '71221',
    nc5_bezeichnung = 'DV-Großrechneranlagenraum mit RLT 2',
    flaeche_nuf_7_9 = 30.08,
    anzahl_raeume = 1,
    din277 = 'NUF7';
RELATE raum:699->ist_raumtyp->raumtyp:t_1;
RELATE raum:699->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:699->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:699->hat_verortung->verortung:neubau;
RELATE raum:699->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 700: Reinraum Klasse FS100 / ISO 5
UPSERT raum:700 SET
    nummer = 700,
    bezeichnung = 'Reinraum Klasse FS100 / ISO 5',
    teil_der_beauftragung = true,
    nc5_code = '31514',
    nc5_bezeichnung = 'Reinraumklasse bis 100',
    flaeche_nuf_1_6 = 41.19,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:700->ist_raumtyp->raumtyp:l_6;
RELATE raum:700->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:700->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:700->hat_verortung->verortung:neubau;
RELATE raum:700->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 701: Schleuse Reinraum
UPSERT raum:701 SET
    nummer = 701,
    bezeichnung = 'Schleuse Reinraum',
    teil_der_beauftragung = true,
    nc5_code = '79231',
    nc5_bezeichnung = 'Personalschleuse mit hygienischen Anf. und RLT 1',
    flaeche_nuf_7_9 = 2.46,
    anzahl_raeume = 1,
    din277 = 'NUF7';
RELATE raum:701->ist_raumtyp->raumtyp:n_5;
RELATE raum:701->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:701->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:701->hat_verortung->verortung:neubau;
RELATE raum:701->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 702: Infrastukturfläche zu Reinraum Klasse FS100 / ISO 5
UPSERT raum:702 SET
    nummer = 702,
    bezeichnung = 'Infrastukturfläche zu Reinraum Klasse FS100 / ISO 5',
    teil_der_beauftragung = true,
    nc5_code = '71951',
    nc5_bezeichnung = 'Versorgungsraum Strom für Geräte, Maschinen und Anlagen',
    flaeche_nuf_7_9 = 41.19,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF7';
RELATE raum:702->ist_raumtyp->raumtyp:l_6;
RELATE raum:702->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:702->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:702->hat_verortung->verortung:neubau;
RELATE raum:702->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 703: Grauraum Reinraum
UPSERT raum:703 SET
    nummer = 703,
    bezeichnung = 'Grauraum Reinraum',
    teil_der_beauftragung = true,
    nc5_code = '71111',
    nc5_bezeichnung = 'Raum für Technik mit RLT 2',
    flaeche_nuf_7_9 = 16.0,
    anzahl_raeume = 1,
    din277 = 'NUF7';
RELATE raum:703->ist_raumtyp->raumtyp:n_6;
RELATE raum:703->gehoert_zu_teilprojekt->teilprojekt:physik_forschung;
RELATE raum:703->hat_funktionsbereich->funktionsbereich:forschungslabore;
RELATE raum:703->hat_verortung->verortung:neubau;
RELATE raum:703->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 709: Praktikumsraum Laser
UPSERT raum:709 SET
    nummer = 709,
    bezeichnung = 'Praktikumsraum Laser',
    teil_der_beauftragung = true,
    nc5_code = '34231',
    nc5_bezeichnung = 'Physikalischer Meßraum mit besonderen RLT-Anforderungen',
    flaeche_nuf_1_6 = 28.52,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:709->ist_raumtyp->raumtyp:p_1;
RELATE raum:709->gehoert_zu_teilprojekt->teilprojekt:physik_praktikum_didaktik;
RELATE raum:709->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:709->hat_verortung->verortung:neubau;
RELATE raum:709->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 710: Praktikumsraum Laser
UPSERT raum:710 SET
    nummer = 710,
    bezeichnung = 'Praktikumsraum Laser',
    teil_der_beauftragung = true,
    nc5_code = '34231',
    nc5_bezeichnung = 'Physikalischer Meßraum mit besonderen RLT-Anforderungen',
    flaeche_nuf_1_6 = 28.52,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:710->ist_raumtyp->raumtyp:p_1;
RELATE raum:710->gehoert_zu_teilprojekt->teilprojekt:physik_praktikum_didaktik;
RELATE raum:710->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:710->hat_verortung->verortung:neubau;
RELATE raum:710->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 711: Praktikumsraum Laser
UPSERT raum:711 SET
    nummer = 711,
    bezeichnung = 'Praktikumsraum Laser',
    teil_der_beauftragung = true,
    nc5_code = '34231',
    nc5_bezeichnung = 'Physikalischer Meßraum mit besonderen RLT-Anforderungen',
    flaeche_nuf_1_6 = 28.52,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:711->ist_raumtyp->raumtyp:p_1;
RELATE raum:711->gehoert_zu_teilprojekt->teilprojekt:physik_praktikum_didaktik;
RELATE raum:711->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:711->hat_verortung->verortung:neubau;
RELATE raum:711->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 712: Praktikumsraum Laser
UPSERT raum:712 SET
    nummer = 712,
    bezeichnung = 'Praktikumsraum Laser',
    teil_der_beauftragung = true,
    nc5_code = '34231',
    nc5_bezeichnung = 'Physikalischer Meßraum mit besonderen RLT-Anforderungen',
    flaeche_nuf_1_6 = 28.52,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:712->ist_raumtyp->raumtyp:p_1;
RELATE raum:712->gehoert_zu_teilprojekt->teilprojekt:physik_praktikum_didaktik;
RELATE raum:712->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:712->hat_verortung->verortung:neubau;
RELATE raum:712->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 713: Praktikumsraum Laser
UPSERT raum:713 SET
    nummer = 713,
    bezeichnung = 'Praktikumsraum Laser',
    teil_der_beauftragung = true,
    nc5_code = '34231',
    nc5_bezeichnung = 'Physikalischer Meßraum mit besonderen RLT-Anforderungen',
    flaeche_nuf_1_6 = 28.52,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:713->ist_raumtyp->raumtyp:p_1;
RELATE raum:713->gehoert_zu_teilprojekt->teilprojekt:physik_praktikum_didaktik;
RELATE raum:713->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:713->hat_verortung->verortung:neubau;
RELATE raum:713->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 714: Praktikumsraum Laser
UPSERT raum:714 SET
    nummer = 714,
    bezeichnung = 'Praktikumsraum Laser',
    teil_der_beauftragung = true,
    nc5_code = '34231',
    nc5_bezeichnung = 'Physikalischer Meßraum mit besonderen RLT-Anforderungen',
    flaeche_nuf_1_6 = 28.52,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:714->ist_raumtyp->raumtyp:p_1;
RELATE raum:714->gehoert_zu_teilprojekt->teilprojekt:physik_praktikum_didaktik;
RELATE raum:714->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:714->hat_verortung->verortung:neubau;
RELATE raum:714->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 715: Praktikumsraum
UPSERT raum:715 SET
    nummer = 715,
    bezeichnung = 'Praktikumsraum',
    teil_der_beauftragung = true,
    nc5_code = '53612',
    nc5_bezeichnung = 'Physikalisch-technischer Übungsraum mit RLT 1',
    flaeche_nuf_1_6 = 28.52,
    personen_max = 13,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:715->ist_raumtyp->raumtyp:p_2;
RELATE raum:715->gehoert_zu_teilprojekt->teilprojekt:physik_praktikum_didaktik;
RELATE raum:715->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:715->hat_verortung->verortung:neubau;
RELATE raum:715->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 716: Praktikumsraum
UPSERT raum:716 SET
    nummer = 716,
    bezeichnung = 'Praktikumsraum',
    teil_der_beauftragung = true,
    nc5_code = '53612',
    nc5_bezeichnung = 'Physikalisch-technischer Übungsraum mit RLT 1',
    flaeche_nuf_1_6 = 28.52,
    personen_max = 13,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:716->ist_raumtyp->raumtyp:p_2;
RELATE raum:716->gehoert_zu_teilprojekt->teilprojekt:physik_praktikum_didaktik;
RELATE raum:716->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:716->hat_verortung->verortung:neubau;
RELATE raum:716->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 717: Praktikumsraum
UPSERT raum:717 SET
    nummer = 717,
    bezeichnung = 'Praktikumsraum',
    teil_der_beauftragung = true,
    nc5_code = '53612',
    nc5_bezeichnung = 'Physikalisch-technischer Übungsraum mit RLT 1',
    flaeche_nuf_1_6 = 28.52,
    personen_max = 13,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:717->ist_raumtyp->raumtyp:p_2;
RELATE raum:717->gehoert_zu_teilprojekt->teilprojekt:physik_praktikum_didaktik;
RELATE raum:717->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:717->hat_verortung->verortung:neubau;
RELATE raum:717->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 718: Praktikumsraum
UPSERT raum:718 SET
    nummer = 718,
    bezeichnung = 'Praktikumsraum',
    teil_der_beauftragung = true,
    nc5_code = '53612',
    nc5_bezeichnung = 'Physikalisch-technischer Übungsraum mit RLT 1',
    flaeche_nuf_1_6 = 28.52,
    personen_max = 13,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:718->ist_raumtyp->raumtyp:p_2;
RELATE raum:718->gehoert_zu_teilprojekt->teilprojekt:physik_praktikum_didaktik;
RELATE raum:718->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:718->hat_verortung->verortung:neubau;
RELATE raum:718->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 719: Praktikumsraum
UPSERT raum:719 SET
    nummer = 719,
    bezeichnung = 'Praktikumsraum',
    teil_der_beauftragung = true,
    nc5_code = '53612',
    nc5_bezeichnung = 'Physikalisch-technischer Übungsraum mit RLT 1',
    flaeche_nuf_1_6 = 28.52,
    personen_max = 13,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:719->ist_raumtyp->raumtyp:p_2;
RELATE raum:719->gehoert_zu_teilprojekt->teilprojekt:physik_praktikum_didaktik;
RELATE raum:719->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:719->hat_verortung->verortung:neubau;
RELATE raum:719->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 720: Praktikumsraum
UPSERT raum:720 SET
    nummer = 720,
    bezeichnung = 'Praktikumsraum',
    teil_der_beauftragung = true,
    nc5_code = '53612',
    nc5_bezeichnung = 'Physikalisch-technischer Übungsraum mit RLT 1',
    flaeche_nuf_1_6 = 28.52,
    personen_max = 13,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:720->ist_raumtyp->raumtyp:p_2;
RELATE raum:720->gehoert_zu_teilprojekt->teilprojekt:physik_praktikum_didaktik;
RELATE raum:720->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:720->hat_verortung->verortung:neubau;
RELATE raum:720->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 721: Praktikumsraum
UPSERT raum:721 SET
    nummer = 721,
    bezeichnung = 'Praktikumsraum',
    teil_der_beauftragung = true,
    nc5_code = '53612',
    nc5_bezeichnung = 'Physikalisch-technischer Übungsraum mit RLT 1',
    flaeche_nuf_1_6 = 28.52,
    personen_max = 13,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:721->ist_raumtyp->raumtyp:p_2_1;
RELATE raum:721->gehoert_zu_teilprojekt->teilprojekt:physik_praktikum_didaktik;
RELATE raum:721->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:721->hat_verortung->verortung:neubau;
RELATE raum:721->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 722: Praktikumsraum
UPSERT raum:722 SET
    nummer = 722,
    bezeichnung = 'Praktikumsraum',
    teil_der_beauftragung = true,
    nc5_code = '53612',
    nc5_bezeichnung = 'Physikalisch-technischer Übungsraum mit RLT 1',
    flaeche_nuf_1_6 = 28.52,
    personen_max = 13,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:722->ist_raumtyp->raumtyp:p_2_1;
RELATE raum:722->gehoert_zu_teilprojekt->teilprojekt:physik_praktikum_didaktik;
RELATE raum:722->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:722->hat_verortung->verortung:neubau;
RELATE raum:722->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 723: Praktikumsraum groß
UPSERT raum:723 SET
    nummer = 723,
    bezeichnung = 'Praktikumsraum groß',
    teil_der_beauftragung = true,
    nc5_code = '53612',
    nc5_bezeichnung = 'Physikalisch-technischer Übungsraum mit RLT 1',
    flaeche_nuf_1_6 = 58.28,
    personen_max = 13,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:723->ist_raumtyp->raumtyp:p_2_2;
RELATE raum:723->gehoert_zu_teilprojekt->teilprojekt:physik_praktikum_didaktik;
RELATE raum:723->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:723->hat_verortung->verortung:neubau;
RELATE raum:723->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 724: Praktikumsraum groß
UPSERT raum:724 SET
    nummer = 724,
    bezeichnung = 'Praktikumsraum groß',
    teil_der_beauftragung = true,
    nc5_code = '53612',
    nc5_bezeichnung = 'Physikalisch-technischer Übungsraum mit RLT 1',
    flaeche_nuf_1_6 = 58.28,
    personen_max = 13,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:724->ist_raumtyp->raumtyp:p_2_2;
RELATE raum:724->gehoert_zu_teilprojekt->teilprojekt:physik_praktikum_didaktik;
RELATE raum:724->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:724->hat_verortung->verortung:neubau;
RELATE raum:724->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 725: Praktikumsraum groß
UPSERT raum:725 SET
    nummer = 725,
    bezeichnung = 'Praktikumsraum groß',
    teil_der_beauftragung = true,
    nc5_code = '53612',
    nc5_bezeichnung = 'Physikalisch-technischer Übungsraum mit RLT 1',
    flaeche_nuf_1_6 = 58.28,
    personen_max = 13,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:725->ist_raumtyp->raumtyp:p_2_2;
RELATE raum:725->gehoert_zu_teilprojekt->teilprojekt:physik_praktikum_didaktik;
RELATE raum:725->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:725->hat_verortung->verortung:neubau;
RELATE raum:725->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 726: Praktikumsraum groß
UPSERT raum:726 SET
    nummer = 726,
    bezeichnung = 'Praktikumsraum groß',
    teil_der_beauftragung = true,
    nc5_code = '53612',
    nc5_bezeichnung = 'Physikalisch-technischer Übungsraum mit RLT 1',
    flaeche_nuf_1_6 = 58.28,
    personen_max = 13,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:726->ist_raumtyp->raumtyp:p_2_2;
RELATE raum:726->gehoert_zu_teilprojekt->teilprojekt:physik_praktikum_didaktik;
RELATE raum:726->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:726->hat_verortung->verortung:neubau;
RELATE raum:726->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 727: Computerpraktikum / CIP-Pool
UPSERT raum:727 SET
    nummer = 727,
    bezeichnung = 'Computerpraktikum / CIP-Pool',
    teil_der_beauftragung = true,
    nc5_code = '53311',
    nc5_bezeichnung = 'Computer Pool/ CIP Pool mit RLT 2',
    flaeche_nuf_1_6 = 58.28,
    personen_max = 21,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:727->ist_raumtyp->raumtyp:t_2;
RELATE raum:727->gehoert_zu_teilprojekt->teilprojekt:physik_praktikum_didaktik;
RELATE raum:727->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:727->hat_verortung->verortung:neubau;
RELATE raum:727->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 728: Computerpraktikum / CIP-Pool
UPSERT raum:728 SET
    nummer = 728,
    bezeichnung = 'Computerpraktikum / CIP-Pool',
    teil_der_beauftragung = true,
    nc5_code = '53311',
    nc5_bezeichnung = 'Computer Pool/ CIP Pool mit RLT 2',
    flaeche_nuf_1_6 = 58.28,
    personen_max = 21,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:728->ist_raumtyp->raumtyp:t_2;
RELATE raum:728->gehoert_zu_teilprojekt->teilprojekt:physik_praktikum_didaktik;
RELATE raum:728->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:728->hat_verortung->verortung:neubau;
RELATE raum:728->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 729: Praktikumslager
UPSERT raum:729 SET
    nummer = 729,
    bezeichnung = 'Praktikumslager',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 28.52,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:729->ist_raumtyp->raumtyp:p_3;
RELATE raum:729->gehoert_zu_teilprojekt->teilprojekt:physik_praktikum_didaktik;
RELATE raum:729->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:729->hat_verortung->verortung:neubau;
RELATE raum:729->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 730: Praktikumslager
UPSERT raum:730 SET
    nummer = 730,
    bezeichnung = 'Praktikumslager',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 28.52,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:730->ist_raumtyp->raumtyp:p_3;
RELATE raum:730->gehoert_zu_teilprojekt->teilprojekt:physik_praktikum_didaktik;
RELATE raum:730->hat_funktionsbereich->funktionsbereich:praktikum;
RELATE raum:730->hat_verortung->verortung:neubau;
RELATE raum:730->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 731: Lehr-Lern-Labor Didaktik
UPSERT raum:731 SET
    nummer = 731,
    bezeichnung = 'Lehr-Lern-Labor Didaktik',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 120.12,
    personen_max = 43,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:731->ist_raumtyp->raumtyp:l_7;
RELATE raum:731->gehoert_zu_teilprojekt->teilprojekt:physik_praktikum_didaktik;
RELATE raum:731->hat_funktionsbereich->funktionsbereich:didaktik;
RELATE raum:731->hat_verortung->verortung:neubau;
RELATE raum:731->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 732: Vorlesungssammlung Didaktik
UPSERT raum:732 SET
    nummer = 732,
    bezeichnung = 'Vorlesungssammlung Didaktik',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 101.4,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:732->ist_raumtyp->raumtyp:a_3;
RELATE raum:732->gehoert_zu_teilprojekt->teilprojekt:physik_praktikum_didaktik;
RELATE raum:732->hat_funktionsbereich->funktionsbereich:didaktik;
RELATE raum:732->hat_verortung->verortung:neubau;
RELATE raum:732->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 733: Praktikumslager Didaktik
UPSERT raum:733 SET
    nummer = 733,
    bezeichnung = 'Praktikumslager Didaktik',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 28.52,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:733->ist_raumtyp->raumtyp:p_3;
RELATE raum:733->gehoert_zu_teilprojekt->teilprojekt:physik_praktikum_didaktik;
RELATE raum:733->hat_funktionsbereich->funktionsbereich:didaktik;
RELATE raum:733->hat_verortung->verortung:neubau;
RELATE raum:733->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 734: Praktikumsraum Didaktik
UPSERT raum:734 SET
    nummer = 734,
    bezeichnung = 'Praktikumsraum Didaktik',
    teil_der_beauftragung = true,
    nc5_code = '53612',
    nc5_bezeichnung = 'Physikalisch-technischer Übungsraum mit RLT 1',
    flaeche_nuf_1_6 = 28.52,
    personen_max = 13,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:734->ist_raumtyp->raumtyp:p_2_3;
RELATE raum:734->gehoert_zu_teilprojekt->teilprojekt:physik_praktikum_didaktik;
RELATE raum:734->hat_funktionsbereich->funktionsbereich:didaktik;
RELATE raum:734->hat_verortung->verortung:neubau;
RELATE raum:734->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 735: Praktikumsraum Didaktik
UPSERT raum:735 SET
    nummer = 735,
    bezeichnung = 'Praktikumsraum Didaktik',
    teil_der_beauftragung = true,
    nc5_code = '53612',
    nc5_bezeichnung = 'Physikalisch-technischer Übungsraum mit RLT 1',
    flaeche_nuf_1_6 = 28.52,
    personen_max = 13,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:735->ist_raumtyp->raumtyp:p_2_3;
RELATE raum:735->gehoert_zu_teilprojekt->teilprojekt:physik_praktikum_didaktik;
RELATE raum:735->hat_funktionsbereich->funktionsbereich:didaktik;
RELATE raum:735->hat_verortung->verortung:neubau;
RELATE raum:735->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 736: Praktikumsraum Didaktik
UPSERT raum:736 SET
    nummer = 736,
    bezeichnung = 'Praktikumsraum Didaktik',
    teil_der_beauftragung = true,
    nc5_code = '53612',
    nc5_bezeichnung = 'Physikalisch-technischer Übungsraum mit RLT 1',
    flaeche_nuf_1_6 = 28.52,
    personen_max = 13,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:736->ist_raumtyp->raumtyp:p_2_3;
RELATE raum:736->gehoert_zu_teilprojekt->teilprojekt:physik_praktikum_didaktik;
RELATE raum:736->hat_funktionsbereich->funktionsbereich:didaktik;
RELATE raum:736->hat_verortung->verortung:neubau;
RELATE raum:736->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 737: Praktikumsraum Didaktik
UPSERT raum:737 SET
    nummer = 737,
    bezeichnung = 'Praktikumsraum Didaktik',
    teil_der_beauftragung = true,
    nc5_code = '53612',
    nc5_bezeichnung = 'Physikalisch-technischer Übungsraum mit RLT 1',
    flaeche_nuf_1_6 = 28.52,
    personen_max = 13,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:737->ist_raumtyp->raumtyp:p_2_3;
RELATE raum:737->gehoert_zu_teilprojekt->teilprojekt:physik_praktikum_didaktik;
RELATE raum:737->hat_funktionsbereich->funktionsbereich:didaktik;
RELATE raum:737->hat_verortung->verortung:neubau;
RELATE raum:737->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 746: Büro - Einzelbelegung
UPSERT raum:746 SET
    nummer = 746,
    bezeichnung = 'Büro - Einzelbelegung',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 16.0,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:746->ist_raumtyp->raumtyp:bro_01;
RELATE raum:746->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:746->hat_funktionsbereich->funktionsbereich:elektronikwerkstatt;
RELATE raum:746->hat_verortung->verortung:neubau;
RELATE raum:746->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 747: Elektronikwerkstatt
UPSERT raum:747 SET
    nummer = 747,
    bezeichnung = 'Elektronikwerkstatt',
    teil_der_beauftragung = true,
    nc5_code = '32121',
    nc5_bezeichnung = 'Werkstatt Elektrotechnik',
    flaeche_nuf_1_6 = 170.88,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:747->ist_raumtyp->raumtyp:wphy_02;
RELATE raum:747->gehoert_zu_teilprojekt->teilprojekt:werkstatt_physik;
RELATE raum:747->hat_funktionsbereich->funktionsbereich:elektronikwerkstatt;
RELATE raum:747->hat_verortung->verortung:neubau;
RELATE raum:747->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 748: Ätzraum
UPSERT raum:748 SET
    nummer = 748,
    bezeichnung = 'Ätzraum',
    teil_der_beauftragung = true,
    nc5_code = '34111',
    nc5_bezeichnung = 'Elektroniklabor mit RLT 2',
    flaeche_nuf_1_6 = 20.4,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:748->ist_raumtyp->raumtyp:wphy_03;
RELATE raum:748->gehoert_zu_teilprojekt->teilprojekt:werkstatt_physik;
RELATE raum:748->hat_funktionsbereich->funktionsbereich:elektronikwerkstatt;
RELATE raum:748->hat_verortung->verortung:neubau;
RELATE raum:748->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 749: Metallbearbeitung
UPSERT raum:749 SET
    nummer = 749,
    bezeichnung = 'Metallbearbeitung',
    teil_der_beauftragung = true,
    nc5_code = '32114',
    nc5_bezeichnung = 'Werkstatt Metall (fein)',
    flaeche_nuf_1_6 = 42.0,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:749->ist_raumtyp->raumtyp:wphy_04;
RELATE raum:749->gehoert_zu_teilprojekt->teilprojekt:werkstatt_physik;
RELATE raum:749->hat_funktionsbereich->funktionsbereich:elektronikwerkstatt;
RELATE raum:749->hat_verortung->verortung:neubau;
RELATE raum:749->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 750: Werkbänke und freistehende Bearbeitungsmaschinen
UPSERT raum:750 SET
    nummer = 750,
    bezeichnung = 'Werkbänke und freistehende Bearbeitungsmaschinen',
    teil_der_beauftragung = true,
    nc5_code = '32114',
    nc5_bezeichnung = 'Werkstatt Metall (fein)',
    flaeche_nuf_1_6 = 600.0,
    personen_max = 8,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:750->ist_raumtyp->raumtyp:wphy_06;
RELATE raum:750->gehoert_zu_teilprojekt->teilprojekt:werkstatt_physik;
RELATE raum:750->hat_funktionsbereich->funktionsbereich:mechanische_werkstatt;
RELATE raum:750->hat_verortung->verortung:neubau;
RELATE raum:750->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 751: Sandstrahl / Glühofenraum
UPSERT raum:751 SET
    nummer = 751,
    bezeichnung = 'Sandstrahl / Glühofenraum',
    teil_der_beauftragung = true,
    nc5_code = '32111',
    nc5_bezeichnung = 'Blechbearbeitung, Montage-, Stahlbau',
    flaeche_nuf_1_6 = 20.4,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:751->ist_raumtyp->raumtyp:wphy_07;
RELATE raum:751->gehoert_zu_teilprojekt->teilprojekt:werkstatt_physik;
RELATE raum:751->hat_funktionsbereich->funktionsbereich:mechanische_werkstatt;
RELATE raum:751->hat_verortung->verortung:neubau;
RELATE raum:751->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 752: Plasmaschneidraum
UPSERT raum:752 SET
    nummer = 752,
    bezeichnung = 'Plasmaschneidraum',
    teil_der_beauftragung = true,
    nc5_code = '32111',
    nc5_bezeichnung = 'Blechbearbeitung, Montage-, Stahlbau',
    flaeche_nuf_1_6 = 34.8,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:752->ist_raumtyp->raumtyp:wphy_08;
RELATE raum:752->gehoert_zu_teilprojekt->teilprojekt:werkstatt_physik;
RELATE raum:752->hat_funktionsbereich->funktionsbereich:mechanische_werkstatt;
RELATE raum:752->hat_verortung->verortung:neubau;
RELATE raum:752->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 753: Holzbearbeitung/Sägeraum
UPSERT raum:753 SET
    nummer = 753,
    bezeichnung = 'Holzbearbeitung/Sägeraum',
    teil_der_beauftragung = true,
    nc5_code = '53741',
    nc5_bezeichnung = 'Werkstatt Holz/ Kunststoff',
    flaeche_nuf_1_6 = 49.2,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:753->ist_raumtyp->raumtyp:wphy_09;
RELATE raum:753->gehoert_zu_teilprojekt->teilprojekt:werkstatt_physik;
RELATE raum:753->hat_funktionsbereich->funktionsbereich:mechanische_werkstatt;
RELATE raum:753->hat_verortung->verortung:neubau;
RELATE raum:753->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 754: Schweißraum WIG
UPSERT raum:754 SET
    nummer = 754,
    bezeichnung = 'Schweißraum WIG',
    teil_der_beauftragung = true,
    nc5_code = '32111',
    nc5_bezeichnung = 'Blechbearbeitung, Montage-, Stahlbau',
    flaeche_nuf_1_6 = 20.4,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:754->ist_raumtyp->raumtyp:wphy_10;
RELATE raum:754->gehoert_zu_teilprojekt->teilprojekt:werkstatt_physik;
RELATE raum:754->hat_funktionsbereich->funktionsbereich:mechanische_werkstatt;
RELATE raum:754->hat_verortung->verortung:neubau;
RELATE raum:754->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 755: Waschraum
UPSERT raum:755 SET
    nummer = 755,
    bezeichnung = 'Waschraum',
    teil_der_beauftragung = true,
    nc5_code = '78317',
    nc5_bezeichnung = 'Waschraum mit RLT 1',
    flaeche_nuf_7_9 = 12.24,
    anzahl_raeume = 1,
    din277 = 'NUF7';
RELATE raum:755->ist_raumtyp->raumtyp:wphy_16;
RELATE raum:755->gehoert_zu_teilprojekt->teilprojekt:werkstatt_physik;
RELATE raum:755->hat_funktionsbereich->funktionsbereich:mechanische_werkstatt;
RELATE raum:755->hat_verortung->verortung:neubau;
RELATE raum:755->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 756: Schleiferei
UPSERT raum:756 SET
    nummer = 756,
    bezeichnung = 'Schleiferei',
    teil_der_beauftragung = true,
    nc5_code = '32111',
    nc5_bezeichnung = 'Blechbearbeitung, Montage-, Stahlbau',
    flaeche_nuf_1_6 = 49.2,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:756->ist_raumtyp->raumtyp:wphy_11;
RELATE raum:756->gehoert_zu_teilprojekt->teilprojekt:werkstatt_physik;
RELATE raum:756->hat_funktionsbereich->funktionsbereich:mechanische_werkstatt;
RELATE raum:756->hat_verortung->verortung:neubau;
RELATE raum:756->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 757: Schlosserei/Schweißen, MIG, Autogen
UPSERT raum:757 SET
    nummer = 757,
    bezeichnung = 'Schlosserei/Schweißen, MIG, Autogen',
    teil_der_beauftragung = true,
    nc5_code = '32111',
    nc5_bezeichnung = 'Blechbearbeitung, Montage-, Stahlbau',
    flaeche_nuf_1_6 = 42.0,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:757->ist_raumtyp->raumtyp:wphy_12;
RELATE raum:757->gehoert_zu_teilprojekt->teilprojekt:werkstatt_physik;
RELATE raum:757->hat_funktionsbereich->funktionsbereich:mechanische_werkstatt;
RELATE raum:757->hat_verortung->verortung:neubau;
RELATE raum:757->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 758: Lager, Metall, Kunststoffe, sonstiges
UPSERT raum:758 SET
    nummer = 758,
    bezeichnung = 'Lager, Metall, Kunststoffe, sonstiges',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 136.32,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:758->ist_raumtyp->raumtyp:wphy_13;
RELATE raum:758->gehoert_zu_teilprojekt->teilprojekt:werkstatt_physik;
RELATE raum:758->hat_funktionsbereich->funktionsbereich:mechanische_werkstatt;
RELATE raum:758->hat_verortung->verortung:neubau;
RELATE raum:758->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 759: Aufenthaltsraum Azubis
UPSERT raum:759 SET
    nummer = 759,
    bezeichnung = 'Aufenthaltsraum Azubis',
    teil_der_beauftragung = false,
    nc5_code = '21115',
    nc5_bezeichnung = 'Büro im Küchenbereich mit RLT 1',
    flaeche_nuf_1_6 = 16.0,
    personen_max = 4,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:759->ist_raumtyp->raumtyp:wphy_14;
RELATE raum:759->gehoert_zu_teilprojekt->teilprojekt:werkstatt_physik;
RELATE raum:759->hat_funktionsbereich->funktionsbereich:werkstatt_gemeinsame_nutzung;
RELATE raum:759->hat_verortung->verortung:neubau;
RELATE raum:759->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 760: Büro - Einzelbelegung
UPSERT raum:760 SET
    nummer = 760,
    bezeichnung = 'Büro - Einzelbelegung',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 16.0,
    personen_max = 1,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:760->ist_raumtyp->raumtyp:bro_01;
RELATE raum:760->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:760->hat_funktionsbereich->funktionsbereich:mechanische_werkstatt;
RELATE raum:760->hat_verortung->verortung:neubau;
RELATE raum:760->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 761: Büro - Einzelbelegung
UPSERT raum:761 SET
    nummer = 761,
    bezeichnung = 'Büro - Einzelbelegung',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 16.0,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:761->ist_raumtyp->raumtyp:bro_01;
RELATE raum:761->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:761->hat_funktionsbereich->funktionsbereich:mechanische_werkstatt;
RELATE raum:761->hat_verortung->verortung:neubau;
RELATE raum:761->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 762: Lager
UPSERT raum:762 SET
    nummer = 762,
    bezeichnung = 'Lager',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 49.2,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:762->ist_raumtyp->raumtyp:wphy_15;
RELATE raum:762->gehoert_zu_teilprojekt->teilprojekt:werkstatt_physik;
RELATE raum:762->hat_funktionsbereich->funktionsbereich:werkstatt_gemeinsame_nutzung;
RELATE raum:762->hat_verortung->verortung:neubau;
RELATE raum:762->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 763: Aufenthaltsraum
UPSERT raum:763 SET
    nummer = 763,
    bezeichnung = 'Aufenthaltsraum',
    teil_der_beauftragung = false,
    nc5_code = '21115',
    nc5_bezeichnung = 'Büro im Küchenbereich mit RLT 1',
    flaeche_nuf_1_6 = 35.0,
    personen_max = 6,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:763->ist_raumtyp->raumtyp:wphy_14;
RELATE raum:763->gehoert_zu_teilprojekt->teilprojekt:werkstatt_physik;
RELATE raum:763->hat_funktionsbereich->funktionsbereich:mechanische_werkstatt;
RELATE raum:763->hat_verortung->verortung:neubau;
RELATE raum:763->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 769: Werkbänke und freistehende Bearbeitungsmaschinen
UPSERT raum:769 SET
    nummer = 769,
    bezeichnung = 'Werkbänke und freistehende Bearbeitungsmaschinen',
    teil_der_beauftragung = true,
    nc5_code = '32114',
    nc5_bezeichnung = 'Werkstatt Metall (fein)',
    flaeche_nuf_1_6 = 430.0,
    personen_max = 8,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:769->ist_raumtyp->raumtyp:vbw_01;
RELATE raum:769->gehoert_zu_teilprojekt->teilprojekt:verbundwerkstatt;
RELATE raum:769->hat_funktionsbereich->funktionsbereich:verbundwerkstatt;
RELATE raum:769->hat_verortung->verortung:neubau;
RELATE raum:769->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 770: Laserschneider
UPSERT raum:770 SET
    nummer = 770,
    bezeichnung = 'Laserschneider',
    teil_der_beauftragung = true,
    nc5_code = '32116',
    nc5_bezeichnung = 'Laser-Schneide-Werkstatt',
    flaeche_nuf_1_6 = 22.08,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:770->ist_raumtyp->raumtyp:vbw_02;
RELATE raum:770->gehoert_zu_teilprojekt->teilprojekt:verbundwerkstatt;
RELATE raum:770->hat_funktionsbereich->funktionsbereich:verbundwerkstatt;
RELATE raum:770->hat_verortung->verortung:neubau;
RELATE raum:770->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 771: Wasserstrahlschneider (inkl. Pumpenraum)
UPSERT raum:771 SET
    nummer = 771,
    bezeichnung = 'Wasserstrahlschneider (inkl. Pumpenraum)',
    teil_der_beauftragung = true,
    nc5_code = '32111',
    nc5_bezeichnung = 'Blechbearbeitung, Montage-, Stahlbau',
    flaeche_nuf_1_6 = 32.66,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:771->ist_raumtyp->raumtyp:vbw_03;
RELATE raum:771->gehoert_zu_teilprojekt->teilprojekt:verbundwerkstatt;
RELATE raum:771->hat_funktionsbereich->funktionsbereich:verbundwerkstatt;
RELATE raum:771->hat_verortung->verortung:neubau;
RELATE raum:771->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 772: Schweißraum
UPSERT raum:772 SET
    nummer = 772,
    bezeichnung = 'Schweißraum',
    teil_der_beauftragung = true,
    nc5_code = '32111',
    nc5_bezeichnung = 'Blechbearbeitung, Montage-, Stahlbau',
    flaeche_nuf_1_6 = 27.84,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:772->ist_raumtyp->raumtyp:vbw_04;
RELATE raum:772->gehoert_zu_teilprojekt->teilprojekt:verbundwerkstatt;
RELATE raum:772->hat_funktionsbereich->funktionsbereich:verbundwerkstatt;
RELATE raum:772->hat_verortung->verortung:neubau;
RELATE raum:772->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 773: Rapid-Prototyping
UPSERT raum:773 SET
    nummer = 773,
    bezeichnung = 'Rapid-Prototyping',
    teil_der_beauftragung = true,
    nc5_code = '27115',
    nc5_bezeichnung = 'Rapid-Prototyping (3D-Drucker) mit RLT 1',
    flaeche_nuf_1_6 = 16.29,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:773->ist_raumtyp->raumtyp:vbw_07;
RELATE raum:773->gehoert_zu_teilprojekt->teilprojekt:verbundwerkstatt;
RELATE raum:773->hat_funktionsbereich->funktionsbereich:verbundwerkstatt;
RELATE raum:773->hat_verortung->verortung:neubau;
RELATE raum:773->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 774: CNC
UPSERT raum:774 SET
    nummer = 774,
    bezeichnung = 'CNC',
    teil_der_beauftragung = true,
    nc5_code = '32114',
    nc5_bezeichnung = 'Werkstatt Metall (fein)',
    flaeche_nuf_1_6 = 102.92,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:774->ist_raumtyp->raumtyp:vbw_08;
RELATE raum:774->gehoert_zu_teilprojekt->teilprojekt:verbundwerkstatt;
RELATE raum:774->hat_funktionsbereich->funktionsbereich:verbundwerkstatt;
RELATE raum:774->hat_verortung->verortung:neubau;
RELATE raum:774->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 775: Lackierraum
UPSERT raum:775 SET
    nummer = 775,
    bezeichnung = 'Lackierraum',
    teil_der_beauftragung = true,
    nc5_code = '32111',
    nc5_bezeichnung = 'Blechbearbeitung, Montage-, Stahlbau',
    flaeche_nuf_1_6 = 5.0,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:775->ist_raumtyp->raumtyp:vbw_10;
RELATE raum:775->gehoert_zu_teilprojekt->teilprojekt:verbundwerkstatt;
RELATE raum:775->hat_funktionsbereich->funktionsbereich:verbundwerkstatt;
RELATE raum:775->hat_verortung->verortung:neubau;
RELATE raum:775->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 776: Nassraum
UPSERT raum:776 SET
    nummer = 776,
    bezeichnung = 'Nassraum',
    teil_der_beauftragung = true,
    nc5_code = '32111',
    nc5_bezeichnung = 'Blechbearbeitung, Montage-, Stahlbau',
    flaeche_nuf_1_6 = 7.82,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:776->ist_raumtyp->raumtyp:vbw_11;
RELATE raum:776->gehoert_zu_teilprojekt->teilprojekt:verbundwerkstatt;
RELATE raum:776->hat_funktionsbereich->funktionsbereich:verbundwerkstatt;
RELATE raum:776->hat_verortung->verortung:neubau;
RELATE raum:776->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 777: Serverraum
UPSERT raum:777 SET
    nummer = 777,
    bezeichnung = 'Serverraum',
    teil_der_beauftragung = true,
    nc5_code = '71221',
    nc5_bezeichnung = 'DV-Großrechneranlagenraum mit RLT 2',
    flaeche_nuf_7_9 = 5.06,
    anzahl_raeume = 1,
    din277 = 'NUF7';
RELATE raum:777->ist_raumtyp->raumtyp:vbw_13;
RELATE raum:777->gehoert_zu_teilprojekt->teilprojekt:verbundwerkstatt;
RELATE raum:777->hat_funktionsbereich->funktionsbereich:verbundwerkstatt;
RELATE raum:777->hat_verortung->verortung:neubau;
RELATE raum:777->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 778: Lager, Metall, Kunststoffe, sonstiges
UPSERT raum:778 SET
    nummer = 778,
    bezeichnung = 'Lager, Metall, Kunststoffe, sonstiges',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 290.88,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:778->ist_raumtyp->raumtyp:vbw_12;
RELATE raum:778->gehoert_zu_teilprojekt->teilprojekt:verbundwerkstatt;
RELATE raum:778->hat_funktionsbereich->funktionsbereich:verbundwerkstatt;
RELATE raum:778->hat_verortung->verortung:neubau;
RELATE raum:778->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 779: Besprechungs- und Schulungsraum 25 Personen
UPSERT raum:779 SET
    nummer = 779,
    bezeichnung = 'Besprechungs- und Schulungsraum 25 Personen',
    teil_der_beauftragung = false,
    nc5_code = '23211',
    nc5_bezeichnung = 'Besprechungsraum/ Kommunikationsfläche',
    flaeche_nuf_1_6 = 35.0,
    personen_max = 25,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:779->ist_raumtyp->raumtyp:bsp_01;
RELATE raum:779->gehoert_zu_teilprojekt->teilprojekt:verbundwerkstatt;
RELATE raum:779->hat_funktionsbereich->funktionsbereich:verbundwerkstatt_gemeinsam;
RELATE raum:779->hat_verortung->verortung:neubau;
RELATE raum:779->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 780: Büro - Einzelbelegung
UPSERT raum:780 SET
    nummer = 780,
    bezeichnung = 'Büro - Einzelbelegung',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 16.0,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:780->ist_raumtyp->raumtyp:bro_01;
RELATE raum:780->gehoert_zu_teilprojekt->teilprojekt:verbundwerkstatt;
RELATE raum:780->hat_funktionsbereich->funktionsbereich:verbundwerkstatt_gemeinsam;
RELATE raum:780->hat_verortung->verortung:neubau;
RELATE raum:780->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 781: Büro - Einzelbelegung
UPSERT raum:781 SET
    nummer = 781,
    bezeichnung = 'Büro - Einzelbelegung',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 16.0,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:781->ist_raumtyp->raumtyp:bro_01;
RELATE raum:781->gehoert_zu_teilprojekt->teilprojekt:verbundwerkstatt;
RELATE raum:781->hat_funktionsbereich->funktionsbereich:verbundwerkstatt_gemeinsam;
RELATE raum:781->hat_verortung->verortung:neubau;
RELATE raum:781->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 782: Büro - Einzelbelegung
UPSERT raum:782 SET
    nummer = 782,
    bezeichnung = 'Büro - Einzelbelegung',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 16.0,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:782->ist_raumtyp->raumtyp:bro_01;
RELATE raum:782->gehoert_zu_teilprojekt->teilprojekt:verbundwerkstatt;
RELATE raum:782->hat_funktionsbereich->funktionsbereich:verbundwerkstatt_gemeinsam;
RELATE raum:782->hat_verortung->verortung:neubau;
RELATE raum:782->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 783: Büro - Einzelbelegung
UPSERT raum:783 SET
    nummer = 783,
    bezeichnung = 'Büro - Einzelbelegung',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 16.0,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:783->ist_raumtyp->raumtyp:bro_01;
RELATE raum:783->gehoert_zu_teilprojekt->teilprojekt:verbundwerkstatt;
RELATE raum:783->hat_funktionsbereich->funktionsbereich:verbundwerkstatt_gemeinsam;
RELATE raum:783->hat_verortung->verortung:neubau;
RELATE raum:783->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 784: Büro - Einzelbelegung
UPSERT raum:784 SET
    nummer = 784,
    bezeichnung = 'Büro - Einzelbelegung',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 16.0,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:784->ist_raumtyp->raumtyp:bro_01;
RELATE raum:784->gehoert_zu_teilprojekt->teilprojekt:verbundwerkstatt;
RELATE raum:784->hat_funktionsbereich->funktionsbereich:verbundwerkstatt_gemeinsam;
RELATE raum:784->hat_verortung->verortung:neubau;
RELATE raum:784->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 785: CAD/CAM Rechnerpool
UPSERT raum:785 SET
    nummer = 785,
    bezeichnung = 'CAD/CAM Rechnerpool',
    teil_der_beauftragung = false,
    nc5_code = '53311',
    nc5_bezeichnung = 'Computer Pool/ CIP Pool mit RLT 2',
    flaeche_nuf_1_6 = 30.0,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:785->ist_raumtyp->raumtyp:vbw_15;
RELATE raum:785->gehoert_zu_teilprojekt->teilprojekt:verbundwerkstatt;
RELATE raum:785->hat_funktionsbereich->funktionsbereich:verbundwerkstatt_gemeinsam;
RELATE raum:785->hat_verortung->verortung:neubau;
RELATE raum:785->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 786: Aufenthaltsraum
UPSERT raum:786 SET
    nummer = 786,
    bezeichnung = 'Aufenthaltsraum',
    teil_der_beauftragung = false,
    nc5_code = '21115',
    nc5_bezeichnung = 'Büro im Küchenbereich mit RLT 1',
    flaeche_nuf_1_6 = 15.0,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:786->ist_raumtyp->raumtyp:vbw_16;
RELATE raum:786->gehoert_zu_teilprojekt->teilprojekt:verbundwerkstatt;
RELATE raum:786->hat_funktionsbereich->funktionsbereich:verbundwerkstatt_gemeinsam;
RELATE raum:786->hat_verortung->verortung:neubau;
RELATE raum:786->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 787: Elektronikwerkstatt
UPSERT raum:787 SET
    nummer = 787,
    bezeichnung = 'Elektronikwerkstatt',
    teil_der_beauftragung = true,
    nc5_code = '32121',
    nc5_bezeichnung = 'Werkstatt Elektrotechnik',
    flaeche_nuf_1_6 = 65.72,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:787->ist_raumtyp->raumtyp:vbw_17;
RELATE raum:787->gehoert_zu_teilprojekt->teilprojekt:verbundwerkstatt;
RELATE raum:787->hat_funktionsbereich->funktionsbereich:verbundwerkstatt_elt;
RELATE raum:787->hat_verortung->verortung:neubau;
RELATE raum:787->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 788: Lager, Metall, Kunststoffe, sonstiges
UPSERT raum:788 SET
    nummer = 788,
    bezeichnung = 'Lager, Metall, Kunststoffe, sonstiges',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 28.52,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:788->ist_raumtyp->raumtyp:vbw_18;
RELATE raum:788->gehoert_zu_teilprojekt->teilprojekt:verbundwerkstatt;
RELATE raum:788->hat_funktionsbereich->funktionsbereich:verbundwerkstatt_elt;
RELATE raum:788->hat_verortung->verortung:neubau;
RELATE raum:788->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 789: Bestückungsautomat und Löten
UPSERT raum:789 SET
    nummer = 789,
    bezeichnung = 'Bestückungsautomat und Löten',
    teil_der_beauftragung = true,
    nc5_code = '32114',
    nc5_bezeichnung = 'Werkstatt Metall (fein)',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:789->ist_raumtyp->raumtyp:vbw_20;
RELATE raum:789->gehoert_zu_teilprojekt->teilprojekt:verbundwerkstatt;
RELATE raum:789->hat_funktionsbereich->funktionsbereich:verbundwerkstatt_elt;
RELATE raum:789->hat_verortung->verortung:neubau;
RELATE raum:789->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 790: Ätzraum
UPSERT raum:790 SET
    nummer = 790,
    bezeichnung = 'Ätzraum',
    teil_der_beauftragung = true,
    nc5_code = '34111',
    nc5_bezeichnung = 'Elektroniklabor mit RLT 2',
    flaeche_nuf_1_6 = 13.8,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:790->ist_raumtyp->raumtyp:vbw_19;
RELATE raum:790->gehoert_zu_teilprojekt->teilprojekt:verbundwerkstatt;
RELATE raum:790->hat_funktionsbereich->funktionsbereich:verbundwerkstatt_elt;
RELATE raum:790->hat_verortung->verortung:neubau;
RELATE raum:790->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 791: Untersuchungsraum
UPSERT raum:791 SET
    nummer = 791,
    bezeichnung = 'Untersuchungsraum',
    teil_der_beauftragung = true,
    nc5_code = '61112',
    nc5_bezeichnung = 'U + B Raum/Arztsprechzimmer mit Waschtisch',
    flaeche_nuf_1_6 = 15.3,
    anzahl_raeume = 1,
    din277 = 'NUF6';
RELATE raum:791->ist_raumtyp->raumtyp:rt_1b_ub;
RELATE raum:791->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:791->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:791->hat_verortung->verortung:bestand;
RELATE raum:791->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 792: Verhaltenbeobachtungsraum
UPSERT raum:792 SET
    nummer = 792,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 15.3,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:792->ist_raumtyp->raumtyp:rt_1b_vb;
RELATE raum:792->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:792->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:792->hat_verortung->verortung:bestand;
RELATE raum:792->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 793: Verhaltenbeobachtungsraum
UPSERT raum:793 SET
    nummer = 793,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 15.3,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:793->ist_raumtyp->raumtyp:rt_1b_vb;
RELATE raum:793->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:793->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:793->hat_verortung->verortung:bestand;
RELATE raum:793->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 794: Verhaltenbeobachtungsraum
UPSERT raum:794 SET
    nummer = 794,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 15.3,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:794->ist_raumtyp->raumtyp:rt_1a_vb;
RELATE raum:794->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:794->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:794->hat_verortung->verortung:bestand;
RELATE raum:794->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 795: Verhaltenbeobachtungsraum
UPSERT raum:795 SET
    nummer = 795,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 15.3,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:795->ist_raumtyp->raumtyp:rt_1a_vb;
RELATE raum:795->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:795->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:795->hat_verortung->verortung:bestand;
RELATE raum:795->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 796: Verhaltenbeobachtungsraum
UPSERT raum:796 SET
    nummer = 796,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 15.3,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:796->ist_raumtyp->raumtyp:rt_1b_vb;
RELATE raum:796->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:796->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:796->hat_verortung->verortung:bestand;
RELATE raum:796->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 797: Verhaltenbeobachtungsraum
UPSERT raum:797 SET
    nummer = 797,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 15.3,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:797->ist_raumtyp->raumtyp:rt_1a_vb;
RELATE raum:797->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:797->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:797->hat_verortung->verortung:bestand;
RELATE raum:797->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 798: Verhaltenbeobachtungsraum
UPSERT raum:798 SET
    nummer = 798,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 15.3,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:798->ist_raumtyp->raumtyp:rt_1a_vb;
RELATE raum:798->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:798->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:798->hat_verortung->verortung:bestand;
RELATE raum:798->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 799: Verhaltenbeobachtungsraum
UPSERT raum:799 SET
    nummer = 799,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 15.3,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:799->ist_raumtyp->raumtyp:rt_1a_vb;
RELATE raum:799->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:799->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:799->hat_verortung->verortung:bestand;
RELATE raum:799->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 800: Verhaltenbeobachtungsraum
UPSERT raum:800 SET
    nummer = 800,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 15.3,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:800->ist_raumtyp->raumtyp:rt_1a_vb;
RELATE raum:800->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:800->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:800->hat_verortung->verortung:bestand;
RELATE raum:800->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 801: Verhaltenbeobachtungsraum
UPSERT raum:801 SET
    nummer = 801,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 15.3,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:801->ist_raumtyp->raumtyp:rt_1b_vb;
RELATE raum:801->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:801->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:801->hat_verortung->verortung:bestand;
RELATE raum:801->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 802: Verhaltenbeobachtungsraum
UPSERT raum:802 SET
    nummer = 802,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 15.3,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:802->ist_raumtyp->raumtyp:rt_1b_vb;
RELATE raum:802->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:802->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:802->hat_verortung->verortung:bestand;
RELATE raum:802->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 803: Untersuchungsraum
UPSERT raum:803 SET
    nummer = 803,
    bezeichnung = 'Untersuchungsraum',
    teil_der_beauftragung = true,
    nc5_code = '61112',
    nc5_bezeichnung = 'U + B Raum/Arztsprechzimmer mit Waschtisch',
    flaeche_nuf_1_6 = 15.3,
    anzahl_raeume = 1,
    din277 = 'NUF6';
RELATE raum:803->ist_raumtyp->raumtyp:rt_1b_ub;
RELATE raum:803->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:803->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:803->hat_verortung->verortung:bestand;
RELATE raum:803->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 804: Untersuchungsraum
UPSERT raum:804 SET
    nummer = 804,
    bezeichnung = 'Untersuchungsraum',
    teil_der_beauftragung = true,
    nc5_code = '61112',
    nc5_bezeichnung = 'U + B Raum/Arztsprechzimmer mit Waschtisch',
    flaeche_nuf_1_6 = 20.7,
    anzahl_raeume = 1,
    din277 = 'NUF6';
RELATE raum:804->ist_raumtyp->raumtyp:rt_2a_ub;
RELATE raum:804->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:804->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:804->hat_verortung->verortung:bestand;
RELATE raum:804->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 805: Verhaltenbeobachtungsraum
UPSERT raum:805 SET
    nummer = 805,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 20.7,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:805->ist_raumtyp->raumtyp:rt_2a_vb;
RELATE raum:805->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:805->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:805->hat_verortung->verortung:bestand;
RELATE raum:805->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 806: Verhaltenbeobachtungsraum
UPSERT raum:806 SET
    nummer = 806,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 20.7,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:806->ist_raumtyp->raumtyp:rt_2a_vb;
RELATE raum:806->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:806->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:806->hat_verortung->verortung:bestand;
RELATE raum:806->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 807: Verhaltenbeobachtungsraum
UPSERT raum:807 SET
    nummer = 807,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 20.7,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:807->ist_raumtyp->raumtyp:rt_2a_vb;
RELATE raum:807->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:807->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:807->hat_verortung->verortung:bestand;
RELATE raum:807->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 808: Verhaltenbeobachtungsraum
UPSERT raum:808 SET
    nummer = 808,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 20.7,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:808->ist_raumtyp->raumtyp:rt_2a_vb;
RELATE raum:808->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:808->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:808->hat_verortung->verortung:bestand;
RELATE raum:808->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 809: Verhaltenbeobachtungsraum
UPSERT raum:809 SET
    nummer = 809,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 23.46,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:809->ist_raumtyp->raumtyp:rt_3b_vb;
RELATE raum:809->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:809->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:809->hat_verortung->verortung:bestand;
RELATE raum:809->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 810: Verhaltenbeobachtungsraum
UPSERT raum:810 SET
    nummer = 810,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 23.46,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:810->ist_raumtyp->raumtyp:rt_3a_vb;
RELATE raum:810->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:810->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:810->hat_verortung->verortung:bestand;
RELATE raum:810->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 811: Untersuchungsraum
UPSERT raum:811 SET
    nummer = 811,
    bezeichnung = 'Untersuchungsraum',
    teil_der_beauftragung = true,
    nc5_code = '61112',
    nc5_bezeichnung = 'U + B Raum/Arztsprechzimmer mit Waschtisch',
    flaeche_nuf_1_6 = 31.74,
    anzahl_raeume = 1,
    din277 = 'NUF6';
RELATE raum:811->ist_raumtyp->raumtyp:rt_4b_ub;
RELATE raum:811->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:811->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:811->hat_verortung->verortung:bestand;
RELATE raum:811->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 812: Verhaltenbeobachtungsraum
UPSERT raum:812 SET
    nummer = 812,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 31.74,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:812->ist_raumtyp->raumtyp:rt_4a_vb;
RELATE raum:812->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:812->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:812->hat_verortung->verortung:bestand;
RELATE raum:812->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 813: Verhaltenbeobachtungsraum
UPSERT raum:813 SET
    nummer = 813,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 31.74,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:813->ist_raumtyp->raumtyp:rt_4b_vb;
RELATE raum:813->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:813->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:813->hat_verortung->verortung:bestand;
RELATE raum:813->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 814: Verhaltenbeobachtungsraum
UPSERT raum:814 SET
    nummer = 814,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 31.74,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:814->ist_raumtyp->raumtyp:rt_4b_vb;
RELATE raum:814->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:814->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:814->hat_verortung->verortung:bestand;
RELATE raum:814->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 815: Verhaltenbeobachtungsraum
UPSERT raum:815 SET
    nummer = 815,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 48.3,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:815->ist_raumtyp->raumtyp:rt_5b_vb;
RELATE raum:815->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:815->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:815->hat_verortung->verortung:bestand;
RELATE raum:815->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 816: Verhaltenbeobachtungsraum
UPSERT raum:816 SET
    nummer = 816,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 48.3,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:816->ist_raumtyp->raumtyp:rt_5b_vb;
RELATE raum:816->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:816->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:816->hat_verortung->verortung:bestand;
RELATE raum:816->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 817: Verhaltenbeobachtungsraum
UPSERT raum:817 SET
    nummer = 817,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 48.3,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:817->ist_raumtyp->raumtyp:rt_5b_vb;
RELATE raum:817->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:817->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:817->hat_verortung->verortung:bestand;
RELATE raum:817->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 818: Verhaltenbeobachtungsraum
UPSERT raum:818 SET
    nummer = 818,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 48.3,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:818->ist_raumtyp->raumtyp:rt_5b_vb;
RELATE raum:818->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:818->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:818->hat_verortung->verortung:bestand;
RELATE raum:818->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 819: CMLF Labor
UPSERT raum:819 SET
    nummer = 819,
    bezeichnung = 'CMLF Labor',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 73.14,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:819->ist_raumtyp->raumtyp:ps_cmlf;
RELATE raum:819->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:819->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:819->hat_verortung->verortung:bestand;
RELATE raum:819->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 820: Computerpraktikum / CIP-Pool
UPSERT raum:820 SET
    nummer = 820,
    bezeichnung = 'Computerpraktikum / CIP-Pool',
    teil_der_beauftragung = true,
    nc5_code = '53311',
    nc5_bezeichnung = 'Computer Pool/ CIP Pool mit RLT 2',
    flaeche_nuf_1_6 = 64.86,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:820->ist_raumtyp->raumtyp:ps_cip;
RELATE raum:820->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:820->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:820->hat_verortung->verortung:bestand;
RELATE raum:820->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 821: Verhaltenbeobachtungsraum
UPSERT raum:821 SET
    nummer = 821,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 15.3,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:821->ist_raumtyp->raumtyp:rt_1b_vb;
RELATE raum:821->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:821->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:821->hat_verortung->verortung:bestand;
RELATE raum:821->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 822: Verhaltenbeobachtungsraum
UPSERT raum:822 SET
    nummer = 822,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 15.3,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:822->ist_raumtyp->raumtyp:rt_1b_vb;
RELATE raum:822->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:822->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:822->hat_verortung->verortung:bestand;
RELATE raum:822->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 823: Verhaltenbeobachtungsraum
UPSERT raum:823 SET
    nummer = 823,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 15.3,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:823->ist_raumtyp->raumtyp:rt_1b_vb;
RELATE raum:823->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:823->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:823->hat_verortung->verortung:bestand;
RELATE raum:823->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 824: Verhaltenbeobachtungsraum
UPSERT raum:824 SET
    nummer = 824,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 15.3,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:824->ist_raumtyp->raumtyp:rt_1b_vb;
RELATE raum:824->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:824->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:824->hat_verortung->verortung:bestand;
RELATE raum:824->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 825: Verhaltenbeobachtungsraum
UPSERT raum:825 SET
    nummer = 825,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 23.46,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:825->ist_raumtyp->raumtyp:rt_3a_vb;
RELATE raum:825->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:825->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:825->hat_verortung->verortung:bestand;
RELATE raum:825->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 826: Verhaltenbeobachtungsraum
UPSERT raum:826 SET
    nummer = 826,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 23.46,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:826->ist_raumtyp->raumtyp:rt_3b_vb;
RELATE raum:826->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:826->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:826->hat_verortung->verortung:bestand;
RELATE raum:826->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 827: Verhaltenbeobachtungsraum
UPSERT raum:827 SET
    nummer = 827,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 23.46,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:827->ist_raumtyp->raumtyp:rt_3b_vb;
RELATE raum:827->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:827->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:827->hat_verortung->verortung:bestand;
RELATE raum:827->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 828: Verhaltenbeobachtungsraum
UPSERT raum:828 SET
    nummer = 828,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 31.74,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:828->ist_raumtyp->raumtyp:rt_4b_vb;
RELATE raum:828->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:828->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:828->hat_verortung->verortung:bestand;
RELATE raum:828->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 829: Verhaltenbeobachtungsraum
UPSERT raum:829 SET
    nummer = 829,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 31.74,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:829->ist_raumtyp->raumtyp:rt_4b_vb;
RELATE raum:829->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:829->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:829->hat_verortung->verortung:bestand;
RELATE raum:829->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 830: Verhaltenbeobachtungsraum
UPSERT raum:830 SET
    nummer = 830,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 48.3,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:830->ist_raumtyp->raumtyp:rt_5b_vb;
RELATE raum:830->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:830->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:830->hat_verortung->verortung:bestand;
RELATE raum:830->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 831: Verhaltenbeobachtungsraum
UPSERT raum:831 SET
    nummer = 831,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 48.3,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:831->ist_raumtyp->raumtyp:rt_5b_vb;
RELATE raum:831->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:831->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:831->hat_verortung->verortung:bestand;
RELATE raum:831->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 832: Verhaltenbeobachtungsraum
UPSERT raum:832 SET
    nummer = 832,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 48.3,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:832->ist_raumtyp->raumtyp:rt_5b_vb;
RELATE raum:832->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:832->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:832->hat_verortung->verortung:bestand;
RELATE raum:832->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 833: Verhaltenbeobachtungsraum
UPSERT raum:833 SET
    nummer = 833,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 48.3,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:833->ist_raumtyp->raumtyp:rt_5b_vb;
RELATE raum:833->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:833->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:833->hat_verortung->verortung:bestand;
RELATE raum:833->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 834: Verhaltenbeobachtungsraum
UPSERT raum:834 SET
    nummer = 834,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 48.3,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:834->ist_raumtyp->raumtyp:rt_5b_vb;
RELATE raum:834->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:834->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:834->hat_verortung->verortung:bestand;
RELATE raum:834->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 835: Verhaltenbeobachtungsraum
UPSERT raum:835 SET
    nummer = 835,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 48.3,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:835->ist_raumtyp->raumtyp:rt_5b_vb;
RELATE raum:835->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:835->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:835->hat_verortung->verortung:bestand;
RELATE raum:835->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 836: Verhaltenbeobachtungsraum
UPSERT raum:836 SET
    nummer = 836,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 48.3,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:836->ist_raumtyp->raumtyp:rt_5a_vb;
RELATE raum:836->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:836->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:836->hat_verortung->verortung:bestand;
RELATE raum:836->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 837: Untersuchungsraum
UPSERT raum:837 SET
    nummer = 837,
    bezeichnung = 'Untersuchungsraum',
    teil_der_beauftragung = true,
    nc5_code = '61112',
    nc5_bezeichnung = 'U + B Raum/Arztsprechzimmer mit Waschtisch',
    flaeche_nuf_1_6 = 15.3,
    anzahl_raeume = 1,
    din277 = 'NUF6';
RELATE raum:837->ist_raumtyp->raumtyp:rt_1b_ub;
RELATE raum:837->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:837->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:837->hat_verortung->verortung:bestand;
RELATE raum:837->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 838: Untersuchungsraum
UPSERT raum:838 SET
    nummer = 838,
    bezeichnung = 'Untersuchungsraum',
    teil_der_beauftragung = true,
    nc5_code = '61112',
    nc5_bezeichnung = 'U + B Raum/Arztsprechzimmer mit Waschtisch',
    flaeche_nuf_1_6 = 15.3,
    anzahl_raeume = 1,
    din277 = 'NUF6';
RELATE raum:838->ist_raumtyp->raumtyp:rt_1b_ub;
RELATE raum:838->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:838->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:838->hat_verortung->verortung:bestand;
RELATE raum:838->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 839: Untersuchungsraum
UPSERT raum:839 SET
    nummer = 839,
    bezeichnung = 'Untersuchungsraum',
    teil_der_beauftragung = true,
    nc5_code = '61112',
    nc5_bezeichnung = 'U + B Raum/Arztsprechzimmer mit Waschtisch',
    flaeche_nuf_1_6 = 15.3,
    anzahl_raeume = 1,
    din277 = 'NUF6';
RELATE raum:839->ist_raumtyp->raumtyp:rt_1b_ub;
RELATE raum:839->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:839->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:839->hat_verortung->verortung:bestand;
RELATE raum:839->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 840: Untersuchungsraum
UPSERT raum:840 SET
    nummer = 840,
    bezeichnung = 'Untersuchungsraum',
    teil_der_beauftragung = true,
    nc5_code = '61112',
    nc5_bezeichnung = 'U + B Raum/Arztsprechzimmer mit Waschtisch',
    flaeche_nuf_1_6 = 15.3,
    anzahl_raeume = 1,
    din277 = 'NUF6';
RELATE raum:840->ist_raumtyp->raumtyp:rt_1b_ub;
RELATE raum:840->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:840->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:840->hat_verortung->verortung:bestand;
RELATE raum:840->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 841: Verhaltenbeobachtungsraum
UPSERT raum:841 SET
    nummer = 841,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 20.7,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:841->ist_raumtyp->raumtyp:rt_2b_vb;
RELATE raum:841->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:841->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:841->hat_verortung->verortung:bestand;
RELATE raum:841->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 842: Verhaltenbeobachtungsraum
UPSERT raum:842 SET
    nummer = 842,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 20.7,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:842->ist_raumtyp->raumtyp:rt_2b_vb;
RELATE raum:842->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:842->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:842->hat_verortung->verortung:bestand;
RELATE raum:842->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 843: Verhaltenbeobachtungsraum
UPSERT raum:843 SET
    nummer = 843,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 20.7,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:843->ist_raumtyp->raumtyp:rt_2b_vb;
RELATE raum:843->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:843->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:843->hat_verortung->verortung:bestand;
RELATE raum:843->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 844: Untersuchungsraum
UPSERT raum:844 SET
    nummer = 844,
    bezeichnung = 'Untersuchungsraum',
    teil_der_beauftragung = true,
    nc5_code = '61112',
    nc5_bezeichnung = 'U + B Raum/Arztsprechzimmer mit Waschtisch',
    flaeche_nuf_1_6 = 20.7,
    anzahl_raeume = 1,
    din277 = 'NUF6';
RELATE raum:844->ist_raumtyp->raumtyp:rt_2a_ub;
RELATE raum:844->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:844->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:844->hat_verortung->verortung:bestand;
RELATE raum:844->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 845: Untersuchungsraum
UPSERT raum:845 SET
    nummer = 845,
    bezeichnung = 'Untersuchungsraum',
    teil_der_beauftragung = true,
    nc5_code = '61112',
    nc5_bezeichnung = 'U + B Raum/Arztsprechzimmer mit Waschtisch',
    flaeche_nuf_1_6 = 31.74,
    anzahl_raeume = 1,
    din277 = 'NUF6';
RELATE raum:845->ist_raumtyp->raumtyp:rt_4b_ub;
RELATE raum:845->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:845->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:845->hat_verortung->verortung:bestand;
RELATE raum:845->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 846: Archiv
UPSERT raum:846 SET
    nummer = 846,
    bezeichnung = 'Archiv',
    teil_der_beauftragung = true,
    nc5_code = '42111',
    nc5_bezeichnung = 'Archiv',
    flaeche_nuf_1_6 = 48.3,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:846->ist_raumtyp->raumtyp:rt_5a_arc;
RELATE raum:846->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:846->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:846->hat_verortung->verortung:bestand;
RELATE raum:846->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 847: Archiv
UPSERT raum:847 SET
    nummer = 847,
    bezeichnung = 'Archiv',
    teil_der_beauftragung = true,
    nc5_code = '42111',
    nc5_bezeichnung = 'Archiv',
    flaeche_nuf_1_6 = 48.3,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:847->ist_raumtyp->raumtyp:rt_5a_arc;
RELATE raum:847->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:847->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:847->hat_verortung->verortung:bestand;
RELATE raum:847->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 848: Untersuchungsraum
UPSERT raum:848 SET
    nummer = 848,
    bezeichnung = 'Untersuchungsraum',
    teil_der_beauftragung = true,
    nc5_code = '61112',
    nc5_bezeichnung = 'U + B Raum/Arztsprechzimmer mit Waschtisch',
    flaeche_nuf_1_6 = 23.46,
    anzahl_raeume = 1,
    din277 = 'NUF6';
RELATE raum:848->ist_raumtyp->raumtyp:rt_3b_ub;
RELATE raum:848->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:848->hat_funktionsbereich->funktionsbereich:laborbereich_psychologie;
RELATE raum:848->hat_verortung->verortung:bestand;
RELATE raum:848->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 849: Empfang
UPSERT raum:849 SET
    nummer = 849,
    bezeichnung = 'Empfang',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 18.6,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:849->ist_raumtyp->raumtyp:bro_01;
RELATE raum:849->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:849->hat_funktionsbereich->funktionsbereich:pdagogisch_psychologische_beratungsstelle;
RELATE raum:849->hat_verortung->verortung:bestand;
RELATE raum:849->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 850: Warteraum
UPSERT raum:850 SET
    nummer = 850,
    bezeichnung = 'Warteraum',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 15.0,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:850->ist_raumtyp->raumtyp:bro_01;
RELATE raum:850->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:850->hat_funktionsbereich->funktionsbereich:pdagogisch_psychologische_beratungsstelle;
RELATE raum:850->hat_verortung->verortung:bestand;
RELATE raum:850->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 851: Beratung
UPSERT raum:851 SET
    nummer = 851,
    bezeichnung = 'Beratung',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 24.0,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:851->ist_raumtyp->raumtyp:bro_01;
RELATE raum:851->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:851->hat_funktionsbereich->funktionsbereich:pdagogisch_psychologische_beratungsstelle;
RELATE raum:851->hat_verortung->verortung:bestand;
RELATE raum:851->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 852: Verhaltenbeobachtungsraum
UPSERT raum:852 SET
    nummer = 852,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 15.3,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:852->ist_raumtyp->raumtyp:rt_1b_vb;
RELATE raum:852->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:852->hat_funktionsbereich->funktionsbereich:pdagogisch_psychologische_beratungsstelle;
RELATE raum:852->hat_verortung->verortung:bestand;
RELATE raum:852->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 853: Verhaltenbeobachtungsraum
UPSERT raum:853 SET
    nummer = 853,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 20.7,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:853->ist_raumtyp->raumtyp:rt_2b_vb;
RELATE raum:853->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:853->hat_funktionsbereich->funktionsbereich:pdagogisch_psychologische_beratungsstelle;
RELATE raum:853->hat_verortung->verortung:bestand;
RELATE raum:853->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 854: Verhaltenbeobachtungsraum
UPSERT raum:854 SET
    nummer = 854,
    bezeichnung = 'Verhaltenbeobachtungsraum',
    teil_der_beauftragung = true,
    nc5_code = '53511',
    nc5_bezeichnung = 'Verhaltensbeobachtungsraum',
    flaeche_nuf_1_6 = 20.7,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:854->ist_raumtyp->raumtyp:rt_2b_vb;
RELATE raum:854->gehoert_zu_teilprojekt->teilprojekt:psychologie;
RELATE raum:854->hat_funktionsbereich->funktionsbereich:pdagogisch_psychologische_beratungsstelle;
RELATE raum:854->hat_verortung->verortung:bestand;
RELATE raum:854->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 855: Chemielab 2
UPSERT raum:855 SET
    nummer = 855,
    bezeichnung = 'Chemielab 2',
    teil_der_beauftragung = true,
    nc5_code = '34211',
    nc5_bezeichnung = 'Physiklabor (einfaches physikalisches Messlabor)',
    flaeche_nuf_1_6 = 58.28,
    personen_max = 11,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:855->ist_raumtyp->raumtyp:tl_01;
RELATE raum:855->gehoert_zu_teilprojekt->teilprojekt:teutolabs;
RELATE raum:855->hat_funktionsbereich->funktionsbereich:chemielab_2;
RELATE raum:855->hat_verortung->verortung:neubau;
RELATE raum:855->wird_genutzt_von->nutzer:teutolabs;

-- Raum 856: Chemielab 3
UPSERT raum:856 SET
    nummer = 856,
    bezeichnung = 'Chemielab 3',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 58.28,
    personen_max = 11,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:856->ist_raumtyp->raumtyp:tl_01;
RELATE raum:856->gehoert_zu_teilprojekt->teilprojekt:teutolabs;
RELATE raum:856->hat_funktionsbereich->funktionsbereich:chemielab_3;
RELATE raum:856->hat_verortung->verortung:neubau;
RELATE raum:856->wird_genutzt_von->nutzer:teutolabs;

-- Raum 857: Vorbereitungsraum Teutolabs
UPSERT raum:857 SET
    nummer = 857,
    bezeichnung = 'Vorbereitungsraum Teutolabs',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 34.0,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:857->ist_raumtyp->raumtyp:tl_01;
RELATE raum:857->gehoert_zu_teilprojekt->teilprojekt:teutolabs;
RELATE raum:857->hat_funktionsbereich->funktionsbereich:labor_lager;
RELATE raum:857->hat_verortung->verortung:neubau;
RELATE raum:857->wird_genutzt_von->nutzer:teutolabs;

-- Raum 858: Labor 1
UPSERT raum:858 SET
    nummer = 858,
    bezeichnung = 'Labor 1',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 88.04,
    personen_max = 33,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:858->ist_raumtyp->raumtyp:tl_03;
RELATE raum:858->gehoert_zu_teilprojekt->teilprojekt:teutolabs;
RELATE raum:858->hat_funktionsbereich->funktionsbereich:labor_1;
RELATE raum:858->hat_verortung->verortung:neubau;
RELATE raum:858->wird_genutzt_von->nutzer:teutolabs;

-- Raum 859: Robotik Lab 1
UPSERT raum:859 SET
    nummer = 859,
    bezeichnung = 'Robotik Lab 1',
    teil_der_beauftragung = true,
    nc5_code = '34211',
    nc5_bezeichnung = 'Physiklabor (einfaches physikalisches Messlabor)',
    flaeche_nuf_1_6 = 88.04,
    personen_max = 21,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:859->ist_raumtyp->raumtyp:tl_02;
RELATE raum:859->gehoert_zu_teilprojekt->teilprojekt:teutolabs;
RELATE raum:859->hat_funktionsbereich->funktionsbereich:robotik_lab_1;
RELATE raum:859->hat_verortung->verortung:neubau;
RELATE raum:859->wird_genutzt_von->nutzer:teutolabs;

-- Raum 860: Biologie Lab 1
UPSERT raum:860 SET
    nummer = 860,
    bezeichnung = 'Biologie Lab 1',
    teil_der_beauftragung = true,
    nc5_code = '34211',
    nc5_bezeichnung = 'Physiklabor (einfaches physikalisches Messlabor)',
    flaeche_nuf_1_6 = 110.76,
    personen_max = 33,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:860->ist_raumtyp->raumtyp:tl_04;
RELATE raum:860->gehoert_zu_teilprojekt->teilprojekt:teutolabs;
RELATE raum:860->hat_funktionsbereich->funktionsbereich:biologie_lab_1;
RELATE raum:860->hat_verortung->verortung:neubau;
RELATE raum:860->wird_genutzt_von->nutzer:teutolabs;

-- Raum 861: Sport Lab 1 / Medizin Lab 1
UPSERT raum:861 SET
    nummer = 861,
    bezeichnung = 'Sport Lab 1 / Medizin Lab 1',
    teil_der_beauftragung = true,
    nc5_code = '34211',
    nc5_bezeichnung = 'Physiklabor (einfaches physikalisches Messlabor)',
    flaeche_nuf_1_6 = 148.2,
    personen_max = 47,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:861->ist_raumtyp->raumtyp:tl_05;
RELATE raum:861->gehoert_zu_teilprojekt->teilprojekt:teutolabs;
RELATE raum:861->hat_funktionsbereich->funktionsbereich:sport_lab_1___medizin_lab_1;
RELATE raum:861->hat_verortung->verortung:neubau;
RELATE raum:861->wird_genutzt_von->nutzer:teutolabs;

-- Raum 862: Physik Lab 2
UPSERT raum:862 SET
    nummer = 862,
    bezeichnung = 'Physik Lab 2',
    teil_der_beauftragung = true,
    nc5_code = '34211',
    nc5_bezeichnung = 'Physiklabor (einfaches physikalisches Messlabor)',
    flaeche_nuf_1_6 = 28.52,
    personen_max = 11,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:862->ist_raumtyp->raumtyp:tl_07;
RELATE raum:862->gehoert_zu_teilprojekt->teilprojekt:teutolabs;
RELATE raum:862->hat_funktionsbereich->funktionsbereich:physik_lab_2;
RELATE raum:862->hat_verortung->verortung:neubau;
RELATE raum:862->wird_genutzt_von->nutzer:teutolabs;

-- Raum 863: Physik Lab 3
UPSERT raum:863 SET
    nummer = 863,
    bezeichnung = 'Physik Lab 3',
    teil_der_beauftragung = true,
    nc5_code = '34211',
    nc5_bezeichnung = 'Physiklabor (einfaches physikalisches Messlabor)',
    flaeche_nuf_1_6 = 58.28,
    personen_max = 11,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:863->ist_raumtyp->raumtyp:tl_06;
RELATE raum:863->gehoert_zu_teilprojekt->teilprojekt:teutolabs;
RELATE raum:863->hat_funktionsbereich->funktionsbereich:physik_lab_3;
RELATE raum:863->hat_verortung->verortung:neubau;
RELATE raum:863->wird_genutzt_von->nutzer:teutolabs;

-- Raum 864: Lagerraum und Vorbereitung Physik
UPSERT raum:864 SET
    nummer = 864,
    bezeichnung = 'Lagerraum und Vorbereitung Physik',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 28.52,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:864->ist_raumtyp->raumtyp:tla_02;
RELATE raum:864->gehoert_zu_teilprojekt->teilprojekt:teutolabs;
RELATE raum:864->hat_funktionsbereich->funktionsbereich:lagerraum_und_vorbereitung;
RELATE raum:864->hat_verortung->verortung:neubau;
RELATE raum:864->wird_genutzt_von->nutzer:teutolabs;

-- Raum 865: Colearning Space
UPSERT raum:865 SET
    nummer = 865,
    bezeichnung = 'Colearning Space',
    teil_der_beauftragung = true,
    nc5_code = '53311',
    nc5_bezeichnung = 'Computer Pool/ CIP Pool mit RLT 2',
    flaeche_nuf_1_6 = 209.0,
    personen_max = 60,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:865->ist_raumtyp->raumtyp:kein_rt;
RELATE raum:865->gehoert_zu_teilprojekt->teilprojekt:teutolabs;
RELATE raum:865->hat_funktionsbereich->funktionsbereich:colearning_space;
RELATE raum:865->hat_verortung->verortung:neubau;
RELATE raum:865->wird_genutzt_von->nutzer:teutolabs;

-- Raum 884: Co-Learning Space
UPSERT raum:884 SET
    nummer = 884,
    bezeichnung = 'Co-Learning Space',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 120.0,
    personen_max = 40,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:884->ist_raumtyp->raumtyp:kein_rt;
RELATE raum:884->gehoert_zu_teilprojekt->teilprojekt:sachunterricht;
RELATE raum:884->hat_funktionsbereich->funktionsbereich:lehrbereich;
RELATE raum:884->hat_verortung->verortung:bestand_neubau;
RELATE raum:884->wird_genutzt_von->nutzer:sachunterricht;

-- Raum 885: Besprechungsraum/ Kommunikationsfläche
UPSERT raum:885 SET
    nummer = 885,
    bezeichnung = 'Besprechungsraum/ Kommunikationsfläche',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 130.0,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:885->ist_raumtyp->raumtyp:kein_rt;
RELATE raum:885->gehoert_zu_teilprojekt->teilprojekt:sachunterricht;
RELATE raum:885->hat_funktionsbereich->funktionsbereich:lehrbereich;
RELATE raum:885->hat_verortung->verortung:bestand_neubau;
RELATE raum:885->wird_genutzt_von->nutzer:sachunterricht;

-- Raum 886: Besprechungsraum/ Kommunikationsfläche
UPSERT raum:886 SET
    nummer = 886,
    bezeichnung = 'Besprechungsraum/ Kommunikationsfläche',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 60.0,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:886->ist_raumtyp->raumtyp:kein_rt;
RELATE raum:886->gehoert_zu_teilprojekt->teilprojekt:sachunterricht;
RELATE raum:886->hat_funktionsbereich->funktionsbereich:lehrbereich;
RELATE raum:886->hat_verortung->verortung:bestand_neubau;
RELATE raum:886->wird_genutzt_von->nutzer:sachunterricht;

-- Raum 899: Separater Auswerte- und Steuerarbeitsplatz
UPSERT raum:899 SET
    nummer = 899,
    bezeichnung = 'Separater Auswerte- und Steuerarbeitsplatz',
    teil_der_beauftragung = true,
    nc5_code = '34212',
    nc5_bezeichnung = 'Physiklabor mit bes. Anforderungen',
    flaeche_nuf_1_6 = 43.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:899->ist_raumtyp->raumtyp:f_8_1;
RELATE raum:899->gehoert_zu_teilprojekt->teilprojekt:biologie_didaktik;
RELATE raum:899->hat_funktionsbereich->funktionsbereich:didaktik;
RELATE raum:899->hat_verortung->verortung:neubau;
RELATE raum:899->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 900: Separater Auswerte- und Steuerarbeitsplatz klein
UPSERT raum:900 SET
    nummer = 900,
    bezeichnung = 'Separater Auswerte- und Steuerarbeitsplatz klein',
    teil_der_beauftragung = true,
    nc5_code = '34212',
    nc5_bezeichnung = 'Physiklabor mit bes. Anforderungen',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:900->ist_raumtyp->raumtyp:f_8;
RELATE raum:900->gehoert_zu_teilprojekt->teilprojekt:biologie_didaktik;
RELATE raum:900->hat_funktionsbereich->funktionsbereich:didaktik;
RELATE raum:900->hat_verortung->verortung:neubau;
RELATE raum:900->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 901: Nasslabor 2 klein
UPSERT raum:901 SET
    nummer = 901,
    bezeichnung = 'Nasslabor 2 klein',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:901->ist_raumtyp->raumtyp:f_2_1;
RELATE raum:901->gehoert_zu_teilprojekt->teilprojekt:biologie_didaktik;
RELATE raum:901->hat_funktionsbereich->funktionsbereich:didaktik;
RELATE raum:901->hat_verortung->verortung:neubau;
RELATE raum:901->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 902: Nasslabor 2
UPSERT raum:902 SET
    nummer = 902,
    bezeichnung = 'Nasslabor 2',
    teil_der_beauftragung = true,
    nc5_code = '35212',
    nc5_bezeichnung = 'Labor für analytisch-/ präparativ-chemische Arbeiten mit RLT 1',
    flaeche_nuf_1_6 = 43.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:902->ist_raumtyp->raumtyp:f_2_2;
RELATE raum:902->gehoert_zu_teilprojekt->teilprojekt:biologie_didaktik;
RELATE raum:902->hat_funktionsbereich->funktionsbereich:didaktik;
RELATE raum:902->hat_verortung->verortung:neubau;
RELATE raum:902->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 903: Lagerraum
UPSERT raum:903 SET
    nummer = 903,
    bezeichnung = 'Lagerraum',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 14.88,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:903->ist_raumtyp->raumtyp:fn_7;
RELATE raum:903->gehoert_zu_teilprojekt->teilprojekt:biologie_didaktik;
RELATE raum:903->hat_funktionsbereich->funktionsbereich:didaktik;
RELATE raum:903->hat_verortung->verortung:neubau;
RELATE raum:903->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 904: Lagerraum
UPSERT raum:904 SET
    nummer = 904,
    bezeichnung = 'Lagerraum',
    teil_der_beauftragung = true,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 14.88,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:904->ist_raumtyp->raumtyp:fn_7;
RELATE raum:904->gehoert_zu_teilprojekt->teilprojekt:biologie_didaktik;
RELATE raum:904->hat_funktionsbereich->funktionsbereich:didaktik;
RELATE raum:904->hat_verortung->verortung:neubau;
RELATE raum:904->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 905: Geräteraum 01 klein
UPSERT raum:905 SET
    nummer = 905,
    bezeichnung = 'Geräteraum 01 klein',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 10.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:905->ist_raumtyp->raumtyp:fn_4_2;
RELATE raum:905->gehoert_zu_teilprojekt->teilprojekt:biologie_didaktik;
RELATE raum:905->hat_funktionsbereich->funktionsbereich:didaktik;
RELATE raum:905->hat_verortung->verortung:neubau;
RELATE raum:905->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 906: Geräteraum 01 klein
UPSERT raum:906 SET
    nummer = 906,
    bezeichnung = 'Geräteraum 01 klein',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 10.5,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:906->ist_raumtyp->raumtyp:fn_4_2;
RELATE raum:906->gehoert_zu_teilprojekt->teilprojekt:biologie_didaktik;
RELATE raum:906->hat_funktionsbereich->funktionsbereich:didaktik;
RELATE raum:906->hat_verortung->verortung:neubau;
RELATE raum:906->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 907: Klimakammer
UPSERT raum:907 SET
    nummer = 907,
    bezeichnung = 'Klimakammer',
    teil_der_beauftragung = true,
    nc5_code = '37213',
    nc5_bezeichnung = 'Klimakammer,RLT 2',
    flaeche_nuf_1_6 = 13.2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:907->ist_raumtyp->raumtyp:gwh_09;
RELATE raum:907->gehoert_zu_teilprojekt->teilprojekt:biologie_didaktik;
RELATE raum:907->hat_funktionsbereich->funktionsbereich:didaktik;
RELATE raum:907->hat_verortung->verortung:neubau;
RELATE raum:907->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 908: Spülküche S1/S2
UPSERT raum:908 SET
    nummer = 908,
    bezeichnung = 'Spülküche S1/S2',
    teil_der_beauftragung = true,
    nc5_code = '35311',
    nc5_bezeichnung = 'Labor mit Medienversorgung',
    flaeche_nuf_1_6 = 21.08,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:908->ist_raumtyp->raumtyp:fn_1_2;
RELATE raum:908->gehoert_zu_teilprojekt->teilprojekt:biologie_didaktik;
RELATE raum:908->hat_funktionsbereich->funktionsbereich:didaktik;
RELATE raum:908->hat_verortung->verortung:neubau;
RELATE raum:908->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 909: Separater Auswerte- und Steuerarbeitsplatz
UPSERT raum:909 SET
    nummer = 909,
    bezeichnung = 'Separater Auswerte- und Steuerarbeitsplatz',
    teil_der_beauftragung = true,
    nc5_code = '34212',
    nc5_bezeichnung = 'Physiklabor mit bes. Anforderungen',
    flaeche_nuf_1_6 = 43.4,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:909->ist_raumtyp->raumtyp:f_8_1;
RELATE raum:909->gehoert_zu_teilprojekt->teilprojekt:biologie_didaktik;
RELATE raum:909->hat_funktionsbereich->funktionsbereich:didaktik;
RELATE raum:909->hat_verortung->verortung:neubau;
RELATE raum:909->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 913: Büro 1-2 AP
UPSERT raum:913 SET
    nummer = 913,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:913->ist_raumtyp->raumtyp:bro_01;
RELATE raum:913->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:913->hat_funktionsbereich->funktionsbereich:dekanat;
RELATE raum:913->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:913->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 914: Besprechung L
UPSERT raum:914 SET
    nummer = 914,
    bezeichnung = 'Besprechung L',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 45.0,
    personen_max = 18,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:914->ist_raumtyp->raumtyp:bsp_01;
RELATE raum:914->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:914->hat_funktionsbereich->funktionsbereich:fakulttsverwaltung;
RELATE raum:914->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:914->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 915: Informelle Kommunikation
UPSERT raum:915 SET
    nummer = 915,
    bezeichnung = 'Informelle Kommunikation',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 17.5,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:915->ist_raumtyp->raumtyp:bro_01;
RELATE raum:915->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:915->hat_funktionsbereich->funktionsbereich:fakulttsverwaltung;
RELATE raum:915->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:915->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 916: Service / Kopierer
UPSERT raum:916 SET
    nummer = 916,
    bezeichnung = 'Service / Kopierer',
    teil_der_beauftragung = false,
    nc5_code = '27114',
    nc5_bezeichnung = 'Plotterraum mit RLT 1',
    flaeche_nuf_1_6 = 8.75,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:916->ist_raumtyp->raumtyp:ub_10;
RELATE raum:916->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:916->hat_funktionsbereich->funktionsbereich:fakulttsverwaltung;
RELATE raum:916->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:916->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 917: Büro 1-2 AP
UPSERT raum:917 SET
    nummer = 917,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 1,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:917->ist_raumtyp->raumtyp:bro_01;
RELATE raum:917->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:917->hat_funktionsbereich->funktionsbereich:fakulttsverwaltung;
RELATE raum:917->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:917->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 918: Büro 1-2 AP
UPSERT raum:918 SET
    nummer = 918,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 2,
    anzahl_raeume = 7,
    din277 = 'NUF2';
RELATE raum:918->ist_raumtyp->raumtyp:bro_01;
RELATE raum:918->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:918->hat_funktionsbereich->funktionsbereich:fakulttsverwaltung;
RELATE raum:918->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:918->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 919: Teeküche S
UPSERT raum:919 SET
    nummer = 919,
    bezeichnung = 'Teeküche S',
    teil_der_beauftragung = false,
    nc5_code = '13121',
    nc5_bezeichnung = 'Teeküche (ohne Aufenthalt)',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 4,
    anzahl_raeume = 1,
    din277 = 'NUF1';
RELATE raum:919->ist_raumtyp->raumtyp:ub_19;
RELATE raum:919->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:919->hat_funktionsbereich->funktionsbereich:fakulttsverwaltung;
RELATE raum:919->hat_verortung->verortung:neubau;
RELATE raum:919->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 920: Besprechung L
UPSERT raum:920 SET
    nummer = 920,
    bezeichnung = 'Besprechung L',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 45.0,
    personen_max = 18,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:920->ist_raumtyp->raumtyp:bsp_01;
RELATE raum:920->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:920->hat_funktionsbereich->funktionsbereich:dm_allgemein;
RELATE raum:920->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:920->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 921: Besprechung S
UPSERT raum:921 SET
    nummer = 921,
    bezeichnung = 'Besprechung S',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 23.5,
    personen_max = 9,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:921->ist_raumtyp->raumtyp:bsp_01;
RELATE raum:921->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:921->hat_funktionsbereich->funktionsbereich:dm_allgemein;
RELATE raum:921->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:921->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 922: Informelle Kommunikation
UPSERT raum:922 SET
    nummer = 922,
    bezeichnung = 'Informelle Kommunikation',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 17.5,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:922->ist_raumtyp->raumtyp:bro_01;
RELATE raum:922->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:922->hat_funktionsbereich->funktionsbereich:dm_allgemein;
RELATE raum:922->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:922->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 923: Büro 1-2 AP
UPSERT raum:923 SET
    nummer = 923,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 1,
    anzahl_raeume = 3,
    din277 = 'NUF2';
RELATE raum:923->ist_raumtyp->raumtyp:bro_01;
RELATE raum:923->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:923->hat_funktionsbereich->funktionsbereich:dm_allgemein;
RELATE raum:923->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:923->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 924: Büro 1-2 AP
UPSERT raum:924 SET
    nummer = 924,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 2,
    anzahl_raeume = 9,
    din277 = 'NUF2';
RELATE raum:924->ist_raumtyp->raumtyp:bro_01;
RELATE raum:924->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:924->hat_funktionsbereich->funktionsbereich:dm_allgemein;
RELATE raum:924->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:924->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 925: Offene AP
UPSERT raum:925 SET
    nummer = 925,
    bezeichnung = 'Offene AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 7.5,
    personen_max = 1,
    anzahl_raeume = 9,
    din277 = 'NUF2';
RELATE raum:925->ist_raumtyp->raumtyp:bro_01;
RELATE raum:925->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:925->hat_funktionsbereich->funktionsbereich:dm_allgemein;
RELATE raum:925->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:925->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 926: Fokus
UPSERT raum:926 SET
    nummer = 926,
    bezeichnung = 'Fokus',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 8.75,
    personen_max = 1,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:926->ist_raumtyp->raumtyp:bro_01;
RELATE raum:926->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:926->hat_funktionsbereich->funktionsbereich:dm_allgemein;
RELATE raum:926->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:926->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 927: Service / Kopierer
UPSERT raum:927 SET
    nummer = 927,
    bezeichnung = 'Service / Kopierer',
    teil_der_beauftragung = false,
    nc5_code = '27114',
    nc5_bezeichnung = 'Plotterraum mit RLT 1',
    flaeche_nuf_1_6 = 8.75,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:927->ist_raumtyp->raumtyp:ub_10;
RELATE raum:927->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:927->hat_funktionsbereich->funktionsbereich:dm_allgemein;
RELATE raum:927->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:927->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 928: Teeküche S
UPSERT raum:928 SET
    nummer = 928,
    bezeichnung = 'Teeküche S',
    teil_der_beauftragung = false,
    nc5_code = '13121',
    nc5_bezeichnung = 'Teeküche (ohne Aufenthalt)',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 4,
    anzahl_raeume = 1,
    din277 = 'NUF1';
RELATE raum:928->ist_raumtyp->raumtyp:ub_19;
RELATE raum:928->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:928->hat_funktionsbereich->funktionsbereich:dm_allgemein;
RELATE raum:928->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:928->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 929: Fachschaft
UPSERT raum:929 SET
    nummer = 929,
    bezeichnung = 'Fachschaft',
    teil_der_beauftragung = false,
    nc5_code = '21115',
    nc5_bezeichnung = 'Büro im Küchenbereich mit RLT 1',
    flaeche_nuf_1_6 = 35.0,
    personen_max = 14,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:929->ist_raumtyp->raumtyp:bro_02;
RELATE raum:929->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:929->hat_funktionsbereich->funktionsbereich:fachschaften;
RELATE raum:929->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:929->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 930: Besprechung L
UPSERT raum:930 SET
    nummer = 930,
    bezeichnung = 'Besprechung L',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 45.0,
    personen_max = 18,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:930->ist_raumtyp->raumtyp:bsp_01;
RELATE raum:930->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:930->hat_funktionsbereich->funktionsbereich:cluster_1;
RELATE raum:930->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:930->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 931: Büro 1-2 AP
UPSERT raum:931 SET
    nummer = 931,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 1,
    anzahl_raeume = 4,
    din277 = 'NUF2';
RELATE raum:931->ist_raumtyp->raumtyp:bro_01;
RELATE raum:931->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:931->hat_funktionsbereich->funktionsbereich:cluster_1;
RELATE raum:931->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:931->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 932: Büro 1-2 AP
UPSERT raum:932 SET
    nummer = 932,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 2,
    anzahl_raeume = 9,
    din277 = 'NUF2';
RELATE raum:932->ist_raumtyp->raumtyp:bro_01;
RELATE raum:932->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:932->hat_funktionsbereich->funktionsbereich:cluster_1;
RELATE raum:932->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:932->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 933: Offene AP
UPSERT raum:933 SET
    nummer = 933,
    bezeichnung = 'Offene AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 7.5,
    personen_max = 1,
    anzahl_raeume = 10,
    din277 = 'NUF2';
RELATE raum:933->ist_raumtyp->raumtyp:bro_01;
RELATE raum:933->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:933->hat_funktionsbereich->funktionsbereich:cluster_1;
RELATE raum:933->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:933->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 934: Besprechung S
UPSERT raum:934 SET
    nummer = 934,
    bezeichnung = 'Besprechung S',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 23.5,
    personen_max = 9,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:934->ist_raumtyp->raumtyp:bsp_01;
RELATE raum:934->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:934->hat_funktionsbereich->funktionsbereich:cluster_1;
RELATE raum:934->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:934->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 935: Lager
UPSERT raum:935 SET
    nummer = 935,
    bezeichnung = 'Lager',
    teil_der_beauftragung = false,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 17.5,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:935->ist_raumtyp->raumtyp:fn_7;
RELATE raum:935->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:935->hat_funktionsbereich->funktionsbereich:cluster_1;
RELATE raum:935->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:935->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 936: Fokus
UPSERT raum:936 SET
    nummer = 936,
    bezeichnung = 'Fokus',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 8.75,
    personen_max = 1,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:936->ist_raumtyp->raumtyp:bro_01;
RELATE raum:936->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:936->hat_funktionsbereich->funktionsbereich:cluster_1;
RELATE raum:936->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:936->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 937: Informelle Kommunikation
UPSERT raum:937 SET
    nummer = 937,
    bezeichnung = 'Informelle Kommunikation',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 17.5,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:937->ist_raumtyp->raumtyp:bro_01;
RELATE raum:937->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:937->hat_funktionsbereich->funktionsbereich:cluster_1;
RELATE raum:937->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:937->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 938: Projektraum M
UPSERT raum:938 SET
    nummer = 938,
    bezeichnung = 'Projektraum M',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 45.0,
    personen_max = 18,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:938->ist_raumtyp->raumtyp:bsp_01;
RELATE raum:938->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:938->hat_funktionsbereich->funktionsbereich:cluster_1;
RELATE raum:938->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:938->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 939: Service / Kopierer
UPSERT raum:939 SET
    nummer = 939,
    bezeichnung = 'Service / Kopierer',
    teil_der_beauftragung = false,
    nc5_code = '27114',
    nc5_bezeichnung = 'Plotterraum mit RLT 1',
    flaeche_nuf_1_6 = 8.75,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:939->ist_raumtyp->raumtyp:ub_10;
RELATE raum:939->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:939->hat_funktionsbereich->funktionsbereich:cluster_1;
RELATE raum:939->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:939->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 940: Teeküche S
UPSERT raum:940 SET
    nummer = 940,
    bezeichnung = 'Teeküche S',
    teil_der_beauftragung = false,
    nc5_code = '13121',
    nc5_bezeichnung = 'Teeküche (ohne Aufenthalt)',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 4,
    anzahl_raeume = 1,
    din277 = 'NUF1';
RELATE raum:940->ist_raumtyp->raumtyp:ub_19;
RELATE raum:940->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:940->hat_funktionsbereich->funktionsbereich:cluster_1;
RELATE raum:940->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:940->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 941: Besprechung L
UPSERT raum:941 SET
    nummer = 941,
    bezeichnung = 'Besprechung L',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 45.0,
    personen_max = 18,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:941->ist_raumtyp->raumtyp:bsp_01;
RELATE raum:941->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:941->hat_funktionsbereich->funktionsbereich:cluster_2;
RELATE raum:941->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:941->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 942: Besprechung S
UPSERT raum:942 SET
    nummer = 942,
    bezeichnung = 'Besprechung S',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 23.5,
    personen_max = 9,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:942->ist_raumtyp->raumtyp:bsp_01;
RELATE raum:942->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:942->hat_funktionsbereich->funktionsbereich:cluster_2;
RELATE raum:942->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:942->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 943: Lager
UPSERT raum:943 SET
    nummer = 943,
    bezeichnung = 'Lager',
    teil_der_beauftragung = false,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 17.5,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:943->ist_raumtyp->raumtyp:fn_7;
RELATE raum:943->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:943->hat_funktionsbereich->funktionsbereich:cluster_2;
RELATE raum:943->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:943->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 944: Büro 1-2 AP
UPSERT raum:944 SET
    nummer = 944,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 1,
    anzahl_raeume = 4,
    din277 = 'NUF2';
RELATE raum:944->ist_raumtyp->raumtyp:bro_01;
RELATE raum:944->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:944->hat_funktionsbereich->funktionsbereich:cluster_2;
RELATE raum:944->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:944->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 945: Büro 1-2 AP
UPSERT raum:945 SET
    nummer = 945,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 2,
    anzahl_raeume = 12,
    din277 = 'NUF2';
RELATE raum:945->ist_raumtyp->raumtyp:bro_01;
RELATE raum:945->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:945->hat_funktionsbereich->funktionsbereich:cluster_2;
RELATE raum:945->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:945->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 946: Fokus
UPSERT raum:946 SET
    nummer = 946,
    bezeichnung = 'Fokus',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 8.75,
    personen_max = 1,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:946->ist_raumtyp->raumtyp:bro_01;
RELATE raum:946->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:946->hat_funktionsbereich->funktionsbereich:cluster_2;
RELATE raum:946->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:946->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 947: Informelle Kommunikation
UPSERT raum:947 SET
    nummer = 947,
    bezeichnung = 'Informelle Kommunikation',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 17.5,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:947->ist_raumtyp->raumtyp:bro_01;
RELATE raum:947->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:947->hat_funktionsbereich->funktionsbereich:cluster_2;
RELATE raum:947->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:947->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 948: Offene AP
UPSERT raum:948 SET
    nummer = 948,
    bezeichnung = 'Offene AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 7.5,
    personen_max = 1,
    anzahl_raeume = 10,
    din277 = 'NUF2';
RELATE raum:948->ist_raumtyp->raumtyp:bro_01;
RELATE raum:948->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:948->hat_funktionsbereich->funktionsbereich:cluster_2;
RELATE raum:948->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:948->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 949: Projektraum M
UPSERT raum:949 SET
    nummer = 949,
    bezeichnung = 'Projektraum M',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 45.0,
    personen_max = 18,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:949->ist_raumtyp->raumtyp:bsp_01;
RELATE raum:949->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:949->hat_funktionsbereich->funktionsbereich:cluster_2;
RELATE raum:949->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:949->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 950: Service / Kopierer
UPSERT raum:950 SET
    nummer = 950,
    bezeichnung = 'Service / Kopierer',
    teil_der_beauftragung = false,
    nc5_code = '27114',
    nc5_bezeichnung = 'Plotterraum mit RLT 1',
    flaeche_nuf_1_6 = 8.75,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:950->ist_raumtyp->raumtyp:ub_10;
RELATE raum:950->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:950->hat_funktionsbereich->funktionsbereich:cluster_2;
RELATE raum:950->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:950->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 951: Teeküche S
UPSERT raum:951 SET
    nummer = 951,
    bezeichnung = 'Teeküche S',
    teil_der_beauftragung = false,
    nc5_code = '13121',
    nc5_bezeichnung = 'Teeküche (ohne Aufenthalt)',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 4,
    anzahl_raeume = 1,
    din277 = 'NUF1';
RELATE raum:951->ist_raumtyp->raumtyp:ub_19;
RELATE raum:951->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:951->hat_funktionsbereich->funktionsbereich:cluster_2;
RELATE raum:951->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:951->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 952: Besprechung L
UPSERT raum:952 SET
    nummer = 952,
    bezeichnung = 'Besprechung L',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 45.0,
    personen_max = 18,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:952->ist_raumtyp->raumtyp:bsp_01;
RELATE raum:952->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:952->hat_funktionsbereich->funktionsbereich:cluster_3;
RELATE raum:952->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:952->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 953: Fokus
UPSERT raum:953 SET
    nummer = 953,
    bezeichnung = 'Fokus',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 8.75,
    personen_max = 1,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:953->ist_raumtyp->raumtyp:bro_01;
RELATE raum:953->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:953->hat_funktionsbereich->funktionsbereich:cluster_3;
RELATE raum:953->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:953->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 954: Lager
UPSERT raum:954 SET
    nummer = 954,
    bezeichnung = 'Lager',
    teil_der_beauftragung = false,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 17.5,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:954->ist_raumtyp->raumtyp:fn_7;
RELATE raum:954->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:954->hat_funktionsbereich->funktionsbereich:cluster_3;
RELATE raum:954->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:954->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 955: Informelle Kommunikation
UPSERT raum:955 SET
    nummer = 955,
    bezeichnung = 'Informelle Kommunikation',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 17.5,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:955->ist_raumtyp->raumtyp:bro_01;
RELATE raum:955->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:955->hat_funktionsbereich->funktionsbereich:cluster_3;
RELATE raum:955->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:955->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 956: Büro 1-2 AP
UPSERT raum:956 SET
    nummer = 956,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 1,
    anzahl_raeume = 3,
    din277 = 'NUF2';
RELATE raum:956->ist_raumtyp->raumtyp:bro_01;
RELATE raum:956->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:956->hat_funktionsbereich->funktionsbereich:cluster_3;
RELATE raum:956->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:956->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 957: Büro 1-2 AP
UPSERT raum:957 SET
    nummer = 957,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 2,
    anzahl_raeume = 7,
    din277 = 'NUF2';
RELATE raum:957->ist_raumtyp->raumtyp:bro_01;
RELATE raum:957->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:957->hat_funktionsbereich->funktionsbereich:cluster_3;
RELATE raum:957->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:957->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 958: Offene AP
UPSERT raum:958 SET
    nummer = 958,
    bezeichnung = 'Offene AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 7.5,
    personen_max = 1,
    anzahl_raeume = 7,
    din277 = 'NUF2';
RELATE raum:958->ist_raumtyp->raumtyp:bro_01;
RELATE raum:958->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:958->hat_funktionsbereich->funktionsbereich:cluster_3;
RELATE raum:958->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:958->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 959: Projektraum M
UPSERT raum:959 SET
    nummer = 959,
    bezeichnung = 'Projektraum M',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 45.0,
    personen_max = 18,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:959->ist_raumtyp->raumtyp:bsp_01;
RELATE raum:959->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:959->hat_funktionsbereich->funktionsbereich:cluster_3;
RELATE raum:959->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:959->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 960: Service / Kopierer
UPSERT raum:960 SET
    nummer = 960,
    bezeichnung = 'Service / Kopierer',
    teil_der_beauftragung = false,
    nc5_code = '27114',
    nc5_bezeichnung = 'Plotterraum mit RLT 1',
    flaeche_nuf_1_6 = 8.75,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:960->ist_raumtyp->raumtyp:ub_10;
RELATE raum:960->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:960->hat_funktionsbereich->funktionsbereich:cluster_3;
RELATE raum:960->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:960->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 961: Teeküche S
UPSERT raum:961 SET
    nummer = 961,
    bezeichnung = 'Teeküche S',
    teil_der_beauftragung = false,
    nc5_code = '13121',
    nc5_bezeichnung = 'Teeküche (ohne Aufenthalt)',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 4,
    anzahl_raeume = 1,
    din277 = 'NUF1';
RELATE raum:961->ist_raumtyp->raumtyp:ub_19;
RELATE raum:961->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:961->hat_funktionsbereich->funktionsbereich:cluster_3;
RELATE raum:961->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:961->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 962: Besprechung L
UPSERT raum:962 SET
    nummer = 962,
    bezeichnung = 'Besprechung L',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 45.0,
    personen_max = 18,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:962->ist_raumtyp->raumtyp:bsp_01;
RELATE raum:962->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:962->hat_funktionsbereich->funktionsbereich:cluster_4;
RELATE raum:962->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:962->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 963: Lager
UPSERT raum:963 SET
    nummer = 963,
    bezeichnung = 'Lager',
    teil_der_beauftragung = false,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 17.5,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:963->ist_raumtyp->raumtyp:fn_7;
RELATE raum:963->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:963->hat_funktionsbereich->funktionsbereich:cluster_4;
RELATE raum:963->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:963->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 964: Fokus
UPSERT raum:964 SET
    nummer = 964,
    bezeichnung = 'Fokus',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 8.75,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:964->ist_raumtyp->raumtyp:bro_01;
RELATE raum:964->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:964->hat_funktionsbereich->funktionsbereich:cluster_4;
RELATE raum:964->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:964->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 965: Informelle Kommunikation
UPSERT raum:965 SET
    nummer = 965,
    bezeichnung = 'Informelle Kommunikation',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 17.5,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:965->ist_raumtyp->raumtyp:bro_01;
RELATE raum:965->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:965->hat_funktionsbereich->funktionsbereich:cluster_4;
RELATE raum:965->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:965->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 966: Büro 1-2 AP
UPSERT raum:966 SET
    nummer = 966,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 1,
    anzahl_raeume = 4,
    din277 = 'NUF2';
RELATE raum:966->ist_raumtyp->raumtyp:bro_01;
RELATE raum:966->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:966->hat_funktionsbereich->funktionsbereich:cluster_4;
RELATE raum:966->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:966->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 967: Büro 1-2 AP
UPSERT raum:967 SET
    nummer = 967,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 2,
    anzahl_raeume = 5,
    din277 = 'NUF2';
RELATE raum:967->ist_raumtyp->raumtyp:bro_01;
RELATE raum:967->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:967->hat_funktionsbereich->funktionsbereich:cluster_4;
RELATE raum:967->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:967->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 968: Offene AP
UPSERT raum:968 SET
    nummer = 968,
    bezeichnung = 'Offene AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 7.5,
    personen_max = 1,
    anzahl_raeume = 6,
    din277 = 'NUF2';
RELATE raum:968->ist_raumtyp->raumtyp:bro_01;
RELATE raum:968->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:968->hat_funktionsbereich->funktionsbereich:cluster_4;
RELATE raum:968->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:968->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 969: Projektraum M
UPSERT raum:969 SET
    nummer = 969,
    bezeichnung = 'Projektraum M',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 45.0,
    personen_max = 18,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:969->ist_raumtyp->raumtyp:bsp_01;
RELATE raum:969->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:969->hat_funktionsbereich->funktionsbereich:cluster_4;
RELATE raum:969->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:969->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 970: Service / Kopierer
UPSERT raum:970 SET
    nummer = 970,
    bezeichnung = 'Service / Kopierer',
    teil_der_beauftragung = false,
    nc5_code = '27114',
    nc5_bezeichnung = 'Plotterraum mit RLT 1',
    flaeche_nuf_1_6 = 8.75,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:970->ist_raumtyp->raumtyp:ub_10;
RELATE raum:970->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:970->hat_funktionsbereich->funktionsbereich:cluster_4;
RELATE raum:970->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:970->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 971: Teeküche S
UPSERT raum:971 SET
    nummer = 971,
    bezeichnung = 'Teeküche S',
    teil_der_beauftragung = false,
    nc5_code = '13121',
    nc5_bezeichnung = 'Teeküche (ohne Aufenthalt)',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 4,
    anzahl_raeume = 1,
    din277 = 'NUF1';
RELATE raum:971->ist_raumtyp->raumtyp:ub_19;
RELATE raum:971->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:971->hat_funktionsbereich->funktionsbereich:cluster_4;
RELATE raum:971->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:971->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 972: Besprechung L
UPSERT raum:972 SET
    nummer = 972,
    bezeichnung = 'Besprechung L',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 45.0,
    personen_max = 18,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:972->ist_raumtyp->raumtyp:bsp_01;
RELATE raum:972->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:972->hat_funktionsbereich->funktionsbereich:cluster_5;
RELATE raum:972->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:972->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 973: Lager
UPSERT raum:973 SET
    nummer = 973,
    bezeichnung = 'Lager',
    teil_der_beauftragung = false,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 17.5,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:973->ist_raumtyp->raumtyp:fn_7;
RELATE raum:973->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:973->hat_funktionsbereich->funktionsbereich:cluster_5;
RELATE raum:973->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:973->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 974: Informelle Kommunikation
UPSERT raum:974 SET
    nummer = 974,
    bezeichnung = 'Informelle Kommunikation',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 17.5,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:974->ist_raumtyp->raumtyp:bro_01;
RELATE raum:974->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:974->hat_funktionsbereich->funktionsbereich:cluster_5;
RELATE raum:974->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:974->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 975: Büro 1-2 AP
UPSERT raum:975 SET
    nummer = 975,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 1,
    anzahl_raeume = 5,
    din277 = 'NUF2';
RELATE raum:975->ist_raumtyp->raumtyp:bro_01;
RELATE raum:975->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:975->hat_funktionsbereich->funktionsbereich:cluster_5;
RELATE raum:975->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:975->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 976: Büro 1-2 AP
UPSERT raum:976 SET
    nummer = 976,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 2,
    anzahl_raeume = 12,
    din277 = 'NUF2';
RELATE raum:976->ist_raumtyp->raumtyp:bro_01;
RELATE raum:976->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:976->hat_funktionsbereich->funktionsbereich:cluster_5;
RELATE raum:976->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:976->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 977: Projektraum M
UPSERT raum:977 SET
    nummer = 977,
    bezeichnung = 'Projektraum M',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 45.0,
    personen_max = 18,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:977->ist_raumtyp->raumtyp:bsp_01;
RELATE raum:977->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:977->hat_funktionsbereich->funktionsbereich:cluster_5;
RELATE raum:977->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:977->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 978: Service / Kopierer
UPSERT raum:978 SET
    nummer = 978,
    bezeichnung = 'Service / Kopierer',
    teil_der_beauftragung = false,
    nc5_code = '27114',
    nc5_bezeichnung = 'Plotterraum mit RLT 1',
    flaeche_nuf_1_6 = 8.75,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:978->ist_raumtyp->raumtyp:ub_10;
RELATE raum:978->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:978->hat_funktionsbereich->funktionsbereich:cluster_5;
RELATE raum:978->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:978->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 979: Teeküche S
UPSERT raum:979 SET
    nummer = 979,
    bezeichnung = 'Teeküche S',
    teil_der_beauftragung = false,
    nc5_code = '13121',
    nc5_bezeichnung = 'Teeküche (ohne Aufenthalt)',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 4,
    anzahl_raeume = 1,
    din277 = 'NUF1';
RELATE raum:979->ist_raumtyp->raumtyp:ub_19;
RELATE raum:979->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:979->hat_funktionsbereich->funktionsbereich:cluster_5;
RELATE raum:979->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:979->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 980: Besprechung L
UPSERT raum:980 SET
    nummer = 980,
    bezeichnung = 'Besprechung L',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 45.0,
    personen_max = 18,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:980->ist_raumtyp->raumtyp:bsp_01;
RELATE raum:980->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:980->hat_funktionsbereich->funktionsbereich:cluster_6;
RELATE raum:980->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:980->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 981: Fokus
UPSERT raum:981 SET
    nummer = 981,
    bezeichnung = 'Fokus',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 8.75,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:981->ist_raumtyp->raumtyp:bro_01;
RELATE raum:981->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:981->hat_funktionsbereich->funktionsbereich:cluster_6;
RELATE raum:981->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:981->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 982: Informelle Kommunikation
UPSERT raum:982 SET
    nummer = 982,
    bezeichnung = 'Informelle Kommunikation',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 17.5,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:982->ist_raumtyp->raumtyp:bro_01;
RELATE raum:982->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:982->hat_funktionsbereich->funktionsbereich:cluster_6;
RELATE raum:982->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:982->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 983: Offene AP
UPSERT raum:983 SET
    nummer = 983,
    bezeichnung = 'Offene AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 7.5,
    personen_max = 1,
    anzahl_raeume = 7,
    din277 = 'NUF2';
RELATE raum:983->ist_raumtyp->raumtyp:bro_01;
RELATE raum:983->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:983->hat_funktionsbereich->funktionsbereich:cluster_6;
RELATE raum:983->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:983->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 984: Projektraum M
UPSERT raum:984 SET
    nummer = 984,
    bezeichnung = 'Projektraum M',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 45.0,
    personen_max = 18,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:984->ist_raumtyp->raumtyp:bsp_01;
RELATE raum:984->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:984->hat_funktionsbereich->funktionsbereich:cluster_6;
RELATE raum:984->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:984->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 985: Büro 1-2 AP
UPSERT raum:985 SET
    nummer = 985,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 1,
    anzahl_raeume = 3,
    din277 = 'NUF2';
RELATE raum:985->ist_raumtyp->raumtyp:bro_01;
RELATE raum:985->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:985->hat_funktionsbereich->funktionsbereich:cluster_6;
RELATE raum:985->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:985->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 986: Büro 1-2 AP
UPSERT raum:986 SET
    nummer = 986,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 2,
    anzahl_raeume = 5,
    din277 = 'NUF2';
RELATE raum:986->ist_raumtyp->raumtyp:bro_01;
RELATE raum:986->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:986->hat_funktionsbereich->funktionsbereich:cluster_6;
RELATE raum:986->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:986->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 987: Service / Kopierer
UPSERT raum:987 SET
    nummer = 987,
    bezeichnung = 'Service / Kopierer',
    teil_der_beauftragung = false,
    nc5_code = '27114',
    nc5_bezeichnung = 'Plotterraum mit RLT 1',
    flaeche_nuf_1_6 = 8.75,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:987->ist_raumtyp->raumtyp:ub_10;
RELATE raum:987->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:987->hat_funktionsbereich->funktionsbereich:cluster_6;
RELATE raum:987->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:987->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 988: Teeküche S
UPSERT raum:988 SET
    nummer = 988,
    bezeichnung = 'Teeküche S',
    teil_der_beauftragung = false,
    nc5_code = '13121',
    nc5_bezeichnung = 'Teeküche (ohne Aufenthalt)',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 4,
    anzahl_raeume = 1,
    din277 = 'NUF1';
RELATE raum:988->ist_raumtyp->raumtyp:ub_19;
RELATE raum:988->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:988->hat_funktionsbereich->funktionsbereich:cluster_6;
RELATE raum:988->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:988->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 989: Büro 1-2 AP
UPSERT raum:989 SET
    nummer = 989,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:989->ist_raumtyp->raumtyp:bro_01;
RELATE raum:989->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:989->hat_funktionsbereich->funktionsbereich:isotopenlabor;
RELATE raum:989->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:989->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 990: Büro 1-2 AP
UPSERT raum:990 SET
    nummer = 990,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:990->ist_raumtyp->raumtyp:bro_01;
RELATE raum:990->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:990->hat_funktionsbereich->funktionsbereich:bro;
RELATE raum:990->hat_verortung->verortung:bestand_neubau;
RELATE raum:990->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 991: Büro
UPSERT raum:991 SET
    nummer = 991,
    bezeichnung = 'Büro',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 27.21,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:991->ist_raumtyp->raumtyp:bro_01;
RELATE raum:991->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:991->hat_funktionsbereich->funktionsbereich:bro;
RELATE raum:991->hat_verortung->verortung:bestand_neubau;
RELATE raum:991->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 992: Büro
UPSERT raum:992 SET
    nummer = 992,
    bezeichnung = 'Büro',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 35.0,
    personen_max = 4,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:992->ist_raumtyp->raumtyp:bro_01;
RELATE raum:992->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:992->hat_funktionsbereich->funktionsbereich:bro;
RELATE raum:992->hat_verortung->verortung:bestand_neubau;
RELATE raum:992->wird_genutzt_von->nutzer:fakultt_fr_biologie;

-- Raum 993: Einzelbüro S
UPSERT raum:993 SET
    nummer = 993,
    bezeichnung = 'Einzelbüro S',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 11.5,
    personen_max = 1,
    anzahl_raeume = 8,
    din277 = 'NUF2';
RELATE raum:993->ist_raumtyp->raumtyp:bro_01;
RELATE raum:993->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:993->hat_funktionsbereich->funktionsbereich:fakulttsverwaltung;
RELATE raum:993->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:993->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 994: Einzelbüro M
UPSERT raum:994 SET
    nummer = 994,
    bezeichnung = 'Einzelbüro M',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:994->ist_raumtyp->raumtyp:bro_01;
RELATE raum:994->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:994->hat_funktionsbereich->funktionsbereich:dm_allgemein;
RELATE raum:994->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:994->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 995: Doppelbüro
UPSERT raum:995 SET
    nummer = 995,
    bezeichnung = 'Doppelbüro',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 2,
    anzahl_raeume = 4,
    din277 = 'NUF2';
RELATE raum:995->ist_raumtyp->raumtyp:bro_01;
RELATE raum:995->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:995->hat_funktionsbereich->funktionsbereich:dm_allgemein;
RELATE raum:995->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:995->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 996: Gruppe 4 AP
UPSERT raum:996 SET
    nummer = 996,
    bezeichnung = 'Gruppe 4 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 30.0,
    personen_max = 4,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:996->ist_raumtyp->raumtyp:bro_01;
RELATE raum:996->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:996->hat_funktionsbereich->funktionsbereich:dm_allgemein;
RELATE raum:996->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:996->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 997: Fachschaft
UPSERT raum:997 SET
    nummer = 997,
    bezeichnung = 'Fachschaft',
    teil_der_beauftragung = false,
    nc5_code = '21115',
    nc5_bezeichnung = 'Büro im Küchenbereich mit RLT 1',
    flaeche_nuf_1_6 = 30.0,
    personen_max = 12,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:997->ist_raumtyp->raumtyp:bro_02;
RELATE raum:997->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:997->hat_funktionsbereich->funktionsbereich:fachschaft;
RELATE raum:997->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:997->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 998: Besprechung M
UPSERT raum:998 SET
    nummer = 998,
    bezeichnung = 'Besprechung M',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 30.0,
    personen_max = 12,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:998->ist_raumtyp->raumtyp:bsp_01;
RELATE raum:998->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:998->hat_funktionsbereich->funktionsbereich:fakultt;
RELATE raum:998->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:998->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 999: Teeküche/Service
UPSERT raum:999 SET
    nummer = 999,
    bezeichnung = 'Teeküche/Service',
    teil_der_beauftragung = false,
    nc5_code = '13121',
    nc5_bezeichnung = 'Teeküche (ohne Aufenthalt)',
    flaeche_nuf_1_6 = 17.5,
    anzahl_raeume = 1,
    din277 = 'NUF1';
RELATE raum:999->ist_raumtyp->raumtyp:ub_19;
RELATE raum:999->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:999->hat_funktionsbereich->funktionsbereich:fakultt;
RELATE raum:999->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:999->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1000: Einzelbüro S
UPSERT raum:1000 SET
    nummer = 1000,
    bezeichnung = 'Einzelbüro S',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 11.5,
    personen_max = 1,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:1000->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1000->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1000->hat_funktionsbereich->funktionsbereich:datenverarbeitung_physik;
RELATE raum:1000->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1000->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1001: Doppelbüro
UPSERT raum:1001 SET
    nummer = 1001,
    bezeichnung = 'Doppelbüro',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:1001->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1001->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1001->hat_funktionsbereich->funktionsbereich:datenverarbeitung_physik;
RELATE raum:1001->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1001->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1002: Gruppe 4 AP
UPSERT raum:1002 SET
    nummer = 1002,
    bezeichnung = 'Gruppe 4 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 30.0,
    personen_max = 4,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:1002->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1002->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1002->hat_funktionsbereich->funktionsbereich:teutolabs;
RELATE raum:1002->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1002->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1003: Einzelbüro S
UPSERT raum:1003 SET
    nummer = 1003,
    bezeichnung = 'Einzelbüro S',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 11.5,
    personen_max = 1,
    anzahl_raeume = 7,
    din277 = 'NUF2';
RELATE raum:1003->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1003->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1003->hat_funktionsbereich->funktionsbereich:cluster_hochenergie___astroteilchen;
RELATE raum:1003->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1003->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1004: Einzelbüro M
UPSERT raum:1004 SET
    nummer = 1004,
    bezeichnung = 'Einzelbüro M',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 3,
    anzahl_raeume = 8,
    din277 = 'NUF2';
RELATE raum:1004->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1004->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1004->hat_funktionsbereich->funktionsbereich:cluster_hochenergie___astroteilchen;
RELATE raum:1004->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1004->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1005: Doppelbüro
UPSERT raum:1005 SET
    nummer = 1005,
    bezeichnung = 'Doppelbüro',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 2,
    anzahl_raeume = 8,
    din277 = 'NUF2';
RELATE raum:1005->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1005->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1005->hat_funktionsbereich->funktionsbereich:cluster_hochenergie___astroteilchen;
RELATE raum:1005->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1005->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1006: Gruppe 4 AP
UPSERT raum:1006 SET
    nummer = 1006,
    bezeichnung = 'Gruppe 4 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 30.0,
    personen_max = 4,
    anzahl_raeume = 6,
    din277 = 'NUF2';
RELATE raum:1006->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1006->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1006->hat_funktionsbereich->funktionsbereich:cluster_hochenergie___astroteilchen;
RELATE raum:1006->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1006->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1007: Gruppe 6 AP
UPSERT raum:1007 SET
    nummer = 1007,
    bezeichnung = 'Gruppe 6 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 45.0,
    personen_max = 6,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:1007->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1007->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1007->hat_funktionsbereich->funktionsbereich:cluster_hochenergie___astroteilchen;
RELATE raum:1007->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1007->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1008: Besprechung M
UPSERT raum:1008 SET
    nummer = 1008,
    bezeichnung = 'Besprechung M',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 30.0,
    personen_max = 12,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:1008->ist_raumtyp->raumtyp:bsp_01;
RELATE raum:1008->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1008->hat_funktionsbereich->funktionsbereich:cluster_hochenergie___astroteilchen;
RELATE raum:1008->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1008->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1009: Teeküche/Service groß
UPSERT raum:1009 SET
    nummer = 1009,
    bezeichnung = 'Teeküche/Service groß',
    teil_der_beauftragung = false,
    nc5_code = '13121',
    nc5_bezeichnung = 'Teeküche (ohne Aufenthalt)',
    flaeche_nuf_1_6 = 23.5,
    anzahl_raeume = 1,
    din277 = 'NUF1';
RELATE raum:1009->ist_raumtyp->raumtyp:ub_19;
RELATE raum:1009->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1009->hat_funktionsbereich->funktionsbereich:cluster_hochenergie___astroteilchen;
RELATE raum:1009->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1009->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1010: Einzelbüro S
UPSERT raum:1010 SET
    nummer = 1010,
    bezeichnung = 'Einzelbüro S',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 11.5,
    personen_max = 1,
    anzahl_raeume = 3,
    din277 = 'NUF2';
RELATE raum:1010->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1010->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1010->hat_funktionsbereich->funktionsbereich:cluster_kondensierte_materie_und_mathematische_physik;
RELATE raum:1010->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1010->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1011: Einzelbüro M
UPSERT raum:1011 SET
    nummer = 1011,
    bezeichnung = 'Einzelbüro M',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 3,
    anzahl_raeume = 6,
    din277 = 'NUF2';
RELATE raum:1011->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1011->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1011->hat_funktionsbereich->funktionsbereich:cluster_kondensierte_materie_und_mathematische_physik;
RELATE raum:1011->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1011->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1012: Doppelbüro
UPSERT raum:1012 SET
    nummer = 1012,
    bezeichnung = 'Doppelbüro',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 2,
    anzahl_raeume = 6,
    din277 = 'NUF2';
RELATE raum:1012->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1012->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1012->hat_funktionsbereich->funktionsbereich:cluster_kondensierte_materie_und_mathematische_physik;
RELATE raum:1012->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1012->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1013: Gruppe 4 AP
UPSERT raum:1013 SET
    nummer = 1013,
    bezeichnung = 'Gruppe 4 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 30.0,
    personen_max = 4,
    anzahl_raeume = 4,
    din277 = 'NUF2';
RELATE raum:1013->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1013->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1013->hat_funktionsbereich->funktionsbereich:cluster_kondensierte_materie_und_mathematische_physik;
RELATE raum:1013->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1013->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1014: Teeküche/Service groß
UPSERT raum:1014 SET
    nummer = 1014,
    bezeichnung = 'Teeküche/Service groß',
    teil_der_beauftragung = false,
    nc5_code = '13121',
    nc5_bezeichnung = 'Teeküche (ohne Aufenthalt)',
    flaeche_nuf_1_6 = 23.5,
    anzahl_raeume = 1,
    din277 = 'NUF1';
RELATE raum:1014->ist_raumtyp->raumtyp:ub_19;
RELATE raum:1014->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1014->hat_funktionsbereich->funktionsbereich:cluster_kondensierte_materie_und_mathematische_physik;
RELATE raum:1014->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1014->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1015: Projektraum S
UPSERT raum:1015 SET
    nummer = 1015,
    bezeichnung = 'Projektraum S',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 23.5,
    personen_max = 11,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:1015->ist_raumtyp->raumtyp:bsp_01;
RELATE raum:1015->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1015->hat_funktionsbereich->funktionsbereich:theoretische_physik;
RELATE raum:1015->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1015->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1016: Einzelbüro S
UPSERT raum:1016 SET
    nummer = 1016,
    bezeichnung = 'Einzelbüro S',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 11.5,
    personen_max = 1,
    anzahl_raeume = 6,
    din277 = 'NUF2';
RELATE raum:1016->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1016->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1016->hat_funktionsbereich->funktionsbereich:cluster_physik_supramolekularer_systeme_und_oberflchen;
RELATE raum:1016->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1016->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1017: Einzelbüro M
UPSERT raum:1017 SET
    nummer = 1017,
    bezeichnung = 'Einzelbüro M',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 3,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:1017->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1017->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1017->hat_funktionsbereich->funktionsbereich:cluster_physik_supramolekularer_systeme_und_oberflchen;
RELATE raum:1017->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1017->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1018: Doppelbüro
UPSERT raum:1018 SET
    nummer = 1018,
    bezeichnung = 'Doppelbüro',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 2,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:1018->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1018->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1018->hat_funktionsbereich->funktionsbereich:cluster_physik_supramolekularer_systeme_und_oberflchen;
RELATE raum:1018->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1018->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1019: Gruppe 4 AP
UPSERT raum:1019 SET
    nummer = 1019,
    bezeichnung = 'Gruppe 4 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 30.0,
    personen_max = 4,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:1019->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1019->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1019->hat_funktionsbereich->funktionsbereich:cluster_physik_supramolekularer_systeme_und_oberflchen;
RELATE raum:1019->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1019->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1020: Einzelbüro S
UPSERT raum:1020 SET
    nummer = 1020,
    bezeichnung = 'Einzelbüro S',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 11.5,
    personen_max = 1,
    anzahl_raeume = 6,
    din277 = 'NUF2';
RELATE raum:1020->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1020->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1020->hat_funktionsbereich->funktionsbereich:cluster_dnne_schichten__physik_der_nanostrukturen;
RELATE raum:1020->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1020->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1021: Einzelbüro M
UPSERT raum:1021 SET
    nummer = 1021,
    bezeichnung = 'Einzelbüro M',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 3,
    anzahl_raeume = 4,
    din277 = 'NUF2';
RELATE raum:1021->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1021->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1021->hat_funktionsbereich->funktionsbereich:cluster_dnne_schichten__physik_der_nanostrukturen;
RELATE raum:1021->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1021->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1022: Doppelbüro
UPSERT raum:1022 SET
    nummer = 1022,
    bezeichnung = 'Doppelbüro',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 2,
    anzahl_raeume = 3,
    din277 = 'NUF2';
RELATE raum:1022->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1022->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1022->hat_funktionsbereich->funktionsbereich:cluster_dnne_schichten__physik_der_nanostrukturen;
RELATE raum:1022->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1022->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1023: Gruppe 4 AP
UPSERT raum:1023 SET
    nummer = 1023,
    bezeichnung = 'Gruppe 4 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 30.0,
    personen_max = 4,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:1023->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1023->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1023->hat_funktionsbereich->funktionsbereich:cluster_dnne_schichten__physik_der_nanostrukturen;
RELATE raum:1023->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1023->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1024: Einzelbüro S
UPSERT raum:1024 SET
    nummer = 1024,
    bezeichnung = 'Einzelbüro S',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 11.5,
    personen_max = 1,
    anzahl_raeume = 6,
    din277 = 'NUF2';
RELATE raum:1024->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1024->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1024->hat_funktionsbereich->funktionsbereich:cluster_biomolekulare_photonik;
RELATE raum:1024->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1024->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1025: Einzelbüro M
UPSERT raum:1025 SET
    nummer = 1025,
    bezeichnung = 'Einzelbüro M',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 3,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:1025->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1025->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1025->hat_funktionsbereich->funktionsbereich:cluster_biomolekulare_photonik;
RELATE raum:1025->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1025->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1026: Doppelbüro
UPSERT raum:1026 SET
    nummer = 1026,
    bezeichnung = 'Doppelbüro',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 2,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:1026->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1026->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1026->hat_funktionsbereich->funktionsbereich:cluster_biomolekulare_photonik;
RELATE raum:1026->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1026->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1027: Gruppe 4 AP
UPSERT raum:1027 SET
    nummer = 1027,
    bezeichnung = 'Gruppe 4 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 30.0,
    personen_max = 4,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:1027->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1027->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1027->hat_funktionsbereich->funktionsbereich:cluster_biomolekulare_photonik;
RELATE raum:1027->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1027->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1028: Lager
UPSERT raum:1028 SET
    nummer = 1028,
    bezeichnung = 'Lager',
    teil_der_beauftragung = false,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 17.5,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:1028->ist_raumtyp->raumtyp:fn_7;
RELATE raum:1028->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1028->hat_funktionsbereich->funktionsbereich:cluster_biomolekulare_photonik;
RELATE raum:1028->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1028->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1029: Einzelbüro S
UPSERT raum:1029 SET
    nummer = 1029,
    bezeichnung = 'Einzelbüro S',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 11.5,
    personen_max = 1,
    anzahl_raeume = 6,
    din277 = 'NUF2';
RELATE raum:1029->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1029->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1029->hat_funktionsbereich->funktionsbereich:cluster_experimentelle_biophysik;
RELATE raum:1029->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1029->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1030: Einzelbüro M
UPSERT raum:1030 SET
    nummer = 1030,
    bezeichnung = 'Einzelbüro M',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 3,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:1030->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1030->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1030->hat_funktionsbereich->funktionsbereich:cluster_experimentelle_biophysik;
RELATE raum:1030->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1030->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1031: Doppelbüro
UPSERT raum:1031 SET
    nummer = 1031,
    bezeichnung = 'Doppelbüro',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 2,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:1031->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1031->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1031->hat_funktionsbereich->funktionsbereich:cluster_experimentelle_biophysik;
RELATE raum:1031->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1031->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1032: Gruppe 4 AP
UPSERT raum:1032 SET
    nummer = 1032,
    bezeichnung = 'Gruppe 4 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 30.0,
    personen_max = 4,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:1032->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1032->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1032->hat_funktionsbereich->funktionsbereich:cluster_experimentelle_biophysik;
RELATE raum:1032->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1032->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1033: Lager
UPSERT raum:1033 SET
    nummer = 1033,
    bezeichnung = 'Lager',
    teil_der_beauftragung = false,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 17.5,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:1033->ist_raumtyp->raumtyp:fn_7;
RELATE raum:1033->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1033->hat_funktionsbereich->funktionsbereich:cluster_experimentelle_biophysik;
RELATE raum:1033->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1033->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1034: Einzelbüro S
UPSERT raum:1034 SET
    nummer = 1034,
    bezeichnung = 'Einzelbüro S',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 11.5,
    personen_max = 1,
    anzahl_raeume = 6,
    din277 = 'NUF2';
RELATE raum:1034->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1034->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1034->hat_funktionsbereich->funktionsbereich:cluster_ultrafast_science;
RELATE raum:1034->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1034->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1035: Einzelbüro M
UPSERT raum:1035 SET
    nummer = 1035,
    bezeichnung = 'Einzelbüro M',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 3,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:1035->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1035->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1035->hat_funktionsbereich->funktionsbereich:cluster_ultrafast_science;
RELATE raum:1035->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1035->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1036: Doppelbüro
UPSERT raum:1036 SET
    nummer = 1036,
    bezeichnung = 'Doppelbüro',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 2,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:1036->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1036->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1036->hat_funktionsbereich->funktionsbereich:cluster_ultrafast_science;
RELATE raum:1036->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1036->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1041: Gruppe 4 AP
UPSERT raum:1041 SET
    nummer = 1041,
    bezeichnung = 'Gruppe 4 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 30.0,
    personen_max = 4,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:1041->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1041->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1041->hat_funktionsbereich->funktionsbereich:cluster_ultrafast_science;
RELATE raum:1041->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1041->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1045: Lager
UPSERT raum:1045 SET
    nummer = 1045,
    bezeichnung = 'Lager',
    teil_der_beauftragung = false,
    nc5_code = '41113',
    nc5_bezeichnung = 'Lagerraum mit RLT 1',
    flaeche_nuf_1_6 = 17.5,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:1045->ist_raumtyp->raumtyp:fn_7;
RELATE raum:1045->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1045->hat_funktionsbereich->funktionsbereich:cluster_ultrafast_science;
RELATE raum:1045->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1045->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1049: Besprechung M
UPSERT raum:1049 SET
    nummer = 1049,
    bezeichnung = 'Besprechung M',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 30.0,
    personen_max = 12,
    anzahl_raeume = 5,
    din277 = 'NUF2';
RELATE raum:1049->ist_raumtyp->raumtyp:bsp_01;
RELATE raum:1049->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1049->hat_funktionsbereich->funktionsbereich:experimentalphysik;
RELATE raum:1049->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1049->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1050: Projektraum S
UPSERT raum:1050 SET
    nummer = 1050,
    bezeichnung = 'Projektraum S',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 23.5,
    personen_max = 10,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:1050->ist_raumtyp->raumtyp:bsp_01;
RELATE raum:1050->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1050->hat_funktionsbereich->funktionsbereich:experimentalphysik;
RELATE raum:1050->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1050->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1051: Teeküche/Service
UPSERT raum:1051 SET
    nummer = 1051,
    bezeichnung = 'Teeküche/Service',
    teil_der_beauftragung = false,
    nc5_code = '13121',
    nc5_bezeichnung = 'Teeküche (ohne Aufenthalt)',
    flaeche_nuf_1_6 = 17.5,
    anzahl_raeume = 5,
    din277 = 'NUF1';
RELATE raum:1051->ist_raumtyp->raumtyp:ub_19;
RELATE raum:1051->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1051->hat_funktionsbereich->funktionsbereich:experimentalphysik;
RELATE raum:1051->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1051->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1052: Einzelbüro S
UPSERT raum:1052 SET
    nummer = 1052,
    bezeichnung = 'Einzelbüro S',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 11.5,
    personen_max = 1,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:1052->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1052->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1052->hat_funktionsbereich->funktionsbereich:didaktik;
RELATE raum:1052->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1052->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1053: Einzelbüro M
UPSERT raum:1053 SET
    nummer = 1053,
    bezeichnung = 'Einzelbüro M',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:1053->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1053->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1053->hat_funktionsbereich->funktionsbereich:didaktik;
RELATE raum:1053->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1053->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1054: Doppelbüro
UPSERT raum:1054 SET
    nummer = 1054,
    bezeichnung = 'Doppelbüro',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 2,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:1054->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1054->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1054->hat_funktionsbereich->funktionsbereich:didaktik;
RELATE raum:1054->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1054->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1055: Besprechung M
UPSERT raum:1055 SET
    nummer = 1055,
    bezeichnung = 'Besprechung M',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 30.0,
    personen_max = 12,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:1055->ist_raumtyp->raumtyp:bsp_01;
RELATE raum:1055->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1055->hat_funktionsbereich->funktionsbereich:didaktik;
RELATE raum:1055->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1055->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1056: Teeküche/Service
UPSERT raum:1056 SET
    nummer = 1056,
    bezeichnung = 'Teeküche/Service',
    teil_der_beauftragung = false,
    nc5_code = '13121',
    nc5_bezeichnung = 'Teeküche (ohne Aufenthalt)',
    flaeche_nuf_1_6 = 17.5,
    anzahl_raeume = 1,
    din277 = 'NUF1';
RELATE raum:1056->ist_raumtyp->raumtyp:ub_19;
RELATE raum:1056->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1056->hat_funktionsbereich->funktionsbereich:didaktik;
RELATE raum:1056->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1056->wird_genutzt_von->nutzer:fakultt_fr_physik;

-- Raum 1057: Büro
UPSERT raum:1057 SET
    nummer = 1057,
    bezeichnung = 'Büro',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 27.21,
    personen_max = 3,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:1057->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1057->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1057->hat_funktionsbereich->funktionsbereich:bro;
RELATE raum:1057->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1057->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 1058: Büro
UPSERT raum:1058 SET
    nummer = 1058,
    bezeichnung = 'Büro',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 35.0,
    personen_max = 4,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:1058->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1058->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1058->hat_funktionsbereich->funktionsbereich:bro;
RELATE raum:1058->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1058->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 1059: Besprechung
UPSERT raum:1059 SET
    nummer = 1059,
    bezeichnung = 'Besprechung',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 7,
    anzahl_raeume = 4,
    din277 = 'NUF2';
RELATE raum:1059->ist_raumtyp->raumtyp:bsp_01;
RELATE raum:1059->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1059->hat_funktionsbereich->funktionsbereich:cluster_1;
RELATE raum:1059->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1059->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 1060: Büro 1-2 AP
UPSERT raum:1060 SET
    nummer = 1060,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 2,
    anzahl_raeume = 9,
    din277 = 'NUF2';
RELATE raum:1060->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1060->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1060->hat_funktionsbereich->funktionsbereich:cluster_1;
RELATE raum:1060->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1060->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 1061: Offene AP
UPSERT raum:1061 SET
    nummer = 1061,
    bezeichnung = 'Offene AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 7.5,
    personen_max = 1,
    anzahl_raeume = 10,
    din277 = 'NUF2';
RELATE raum:1061->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1061->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1061->hat_funktionsbereich->funktionsbereich:cluster_1;
RELATE raum:1061->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1061->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 1062: Büro 1-2 AP
UPSERT raum:1062 SET
    nummer = 1062,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 1,
    anzahl_raeume = 4,
    din277 = 'NUF2';
RELATE raum:1062->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1062->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1062->hat_funktionsbereich->funktionsbereich:cluster_2;
RELATE raum:1062->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1062->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 1063: Büro 1-2 AP
UPSERT raum:1063 SET
    nummer = 1063,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 2,
    anzahl_raeume = 12,
    din277 = 'NUF2';
RELATE raum:1063->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1063->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1063->hat_funktionsbereich->funktionsbereich:cluster_2;
RELATE raum:1063->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1063->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 1064: Offene AP
UPSERT raum:1064 SET
    nummer = 1064,
    bezeichnung = 'Offene AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 7.5,
    personen_max = 1,
    anzahl_raeume = 12,
    din277 = 'NUF2';
RELATE raum:1064->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1064->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1064->hat_funktionsbereich->funktionsbereich:cluster_2;
RELATE raum:1064->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1064->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 1065: Büro 1-2 AP
UPSERT raum:1065 SET
    nummer = 1065,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 1,
    anzahl_raeume = 3,
    din277 = 'NUF2';
RELATE raum:1065->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1065->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1065->hat_funktionsbereich->funktionsbereich:cluster_3;
RELATE raum:1065->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1065->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 1066: Büro 1-2 AP
UPSERT raum:1066 SET
    nummer = 1066,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 2,
    anzahl_raeume = 7,
    din277 = 'NUF2';
RELATE raum:1066->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1066->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1066->hat_funktionsbereich->funktionsbereich:cluster_3;
RELATE raum:1066->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1066->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 1067: Offene AP
UPSERT raum:1067 SET
    nummer = 1067,
    bezeichnung = 'Offene AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 7.5,
    personen_max = 1,
    anzahl_raeume = 7,
    din277 = 'NUF2';
RELATE raum:1067->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1067->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1067->hat_funktionsbereich->funktionsbereich:cluster_3;
RELATE raum:1067->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1067->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 1068: Service / Kopierer
UPSERT raum:1068 SET
    nummer = 1068,
    bezeichnung = 'Service / Kopierer',
    teil_der_beauftragung = false,
    nc5_code = '27112',
    nc5_bezeichnung = 'Fotokopierraum / Druckerraum mit RLT 1',
    flaeche_nuf_1_6 = 17.5,
    anzahl_raeume = 4,
    din277 = 'NUF2';
RELATE raum:1068->ist_raumtyp->raumtyp:ub_10;
RELATE raum:1068->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1068->hat_funktionsbereich->funktionsbereich:cluster_4;
RELATE raum:1068->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1068->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 1069: Büro 1-2 AP
UPSERT raum:1069 SET
    nummer = 1069,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 2,
    anzahl_raeume = 5,
    din277 = 'NUF2';
RELATE raum:1069->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1069->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1069->hat_funktionsbereich->funktionsbereich:cluster_4;
RELATE raum:1069->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1069->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 1070: Offene AP
UPSERT raum:1070 SET
    nummer = 1070,
    bezeichnung = 'Offene AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 7.5,
    personen_max = 1,
    anzahl_raeume = 6,
    din277 = 'NUF2';
RELATE raum:1070->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1070->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1070->hat_funktionsbereich->funktionsbereich:cluster_4;
RELATE raum:1070->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1070->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 1071: Büro 1-2 AP
UPSERT raum:1071 SET
    nummer = 1071,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 1,
    anzahl_raeume = 5,
    din277 = 'NUF2';
RELATE raum:1071->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1071->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1071->hat_funktionsbereich->funktionsbereich:cluster_5;
RELATE raum:1071->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1071->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 1072: Büro 1-2 AP
UPSERT raum:1072 SET
    nummer = 1072,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 2,
    anzahl_raeume = 12,
    din277 = 'NUF2';
RELATE raum:1072->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1072->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1072->hat_funktionsbereich->funktionsbereich:cluster_5;
RELATE raum:1072->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1072->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 1073: Offene AP
UPSERT raum:1073 SET
    nummer = 1073,
    bezeichnung = 'Offene AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 7.5,
    personen_max = 1,
    anzahl_raeume = 7,
    din277 = 'NUF2';
RELATE raum:1073->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1073->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1073->hat_funktionsbereich->funktionsbereich:cluster_6;
RELATE raum:1073->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1073->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 1074: Büro 1-2 AP
UPSERT raum:1074 SET
    nummer = 1074,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 2,
    anzahl_raeume = 3,
    din277 = 'NUF2';
RELATE raum:1074->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1074->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1074->hat_funktionsbereich->funktionsbereich:cluster_6;
RELATE raum:1074->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1074->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 1075: Teeküche
UPSERT raum:1075 SET
    nummer = 1075,
    bezeichnung = 'Teeküche',
    teil_der_beauftragung = false,
    nc5_code = '21115',
    nc5_bezeichnung = 'Büro im Küchenbereich mit RLT 1',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 4,
    anzahl_raeume = 5,
    din277 = 'NUF2';
RELATE raum:1075->ist_raumtyp->raumtyp:ub_19;
RELATE raum:1075->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1075->hat_funktionsbereich->funktionsbereich:cluster_6;
RELATE raum:1075->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1075->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 1076: Büro 1-2 AP
UPSERT raum:1076 SET
    nummer = 1076,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 1,
    anzahl_raeume = 3,
    din277 = 'NUF2';
RELATE raum:1076->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1076->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1076->hat_funktionsbereich->funktionsbereich:dm_allgemein;
RELATE raum:1076->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1076->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 1077: Büro 1-2 AP
UPSERT raum:1077 SET
    nummer = 1077,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 2,
    anzahl_raeume = 9,
    din277 = 'NUF2';
RELATE raum:1077->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1077->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1077->hat_funktionsbereich->funktionsbereich:dm_allgemein;
RELATE raum:1077->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1077->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 1078: Offene AP
UPSERT raum:1078 SET
    nummer = 1078,
    bezeichnung = 'Offene AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 7.5,
    personen_max = 1,
    anzahl_raeume = 9,
    din277 = 'NUF2';
RELATE raum:1078->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1078->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1078->hat_funktionsbereich->funktionsbereich:dm_allgemein;
RELATE raum:1078->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1078->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 1079: Fokus
UPSERT raum:1079 SET
    nummer = 1079,
    bezeichnung = 'Fokus',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 8.75,
    personen_max = 1,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:1079->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1079->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1079->hat_funktionsbereich->funktionsbereich:dm_allgemein;
RELATE raum:1079->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1079->wird_genutzt_von->nutzer:fakultt_fr_psychologie_und_sportwissenschaft;

-- Raum 1080: Informelle Kommunikation
UPSERT raum:1080 SET
    nummer = 1080,
    bezeichnung = 'Informelle Kommunikation',
    teil_der_beauftragung = false,
    nc5_code = '23212',
    nc5_bezeichnung = 'Besprechungsraum mit RLT 1',
    flaeche_nuf_1_6 = 20.0,
    anzahl_raeume = 2,
    din277 = 'NUF2';
RELATE raum:1080->ist_raumtyp->raumtyp:kein_rt;
RELATE raum:1080->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1080->hat_funktionsbereich->funktionsbereich:brobereich;
RELATE raum:1080->hat_verortung->verortung:bestand_neubau;
RELATE raum:1080->wird_genutzt_von->nutzer:sachunterricht;

-- Raum 1081: Hörsaal (ansteigende Ebenen)
UPSERT raum:1081 SET
    nummer = 1081,
    bezeichnung = 'Hörsaal (ansteigende Ebenen)',
    teil_der_beauftragung = false,
    nc5_code = '51131',
    nc5_bezeichnung = 'Hör-/Lehrsaal anst. o. Exp.-Bühne und RLT 1',
    flaeche_nuf_1_6 = 280.0,
    personen_max = 157,
    anzahl_raeume = 2,
    din277 = 'NUF5';
RELATE raum:1081->ist_raumtyp->raumtyp:zl_hs;
RELATE raum:1081->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1081->hat_funktionsbereich->funktionsbereich:zl;
RELATE raum:1081->hat_verortung->verortung:neubau;
RELATE raum:1081->wird_genutzt_von->nutzer:zentrale_lehre;

-- Raum 1082: Hörsaal Naturwissenschaften (HS 07)
UPSERT raum:1082 SET
    nummer = 1082,
    bezeichnung = 'Hörsaal Naturwissenschaften (HS 07)',
    teil_der_beauftragung = false,
    nc5_code = '51111',
    nc5_bezeichnung = 'Hör-/Lehrsaal anst. m. Exp.-Bühne und RLT 1',
    flaeche_nuf_1_6 = 353.0,
    personen_max = 309,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:1082->ist_raumtyp->raumtyp:zl_hsflex;
RELATE raum:1082->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1082->hat_funktionsbereich->funktionsbereich:zl;
RELATE raum:1082->hat_verortung->verortung:bestand;
RELATE raum:1082->wird_genutzt_von->nutzer:zentrale_lehre;

-- Raum 1083: Hörsaal (HS 08)
UPSERT raum:1083 SET
    nummer = 1083,
    bezeichnung = 'Hörsaal (HS 08)',
    teil_der_beauftragung = false,
    nc5_code = '51111',
    nc5_bezeichnung = 'Hör-/Lehrsaal anst. m. Exp.-Bühne und RLT 1',
    flaeche_nuf_1_6 = 76.0,
    personen_max = 69,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:1083->ist_raumtyp->raumtyp:zl_hsflex;
RELATE raum:1083->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1083->hat_funktionsbereich->funktionsbereich:zl;
RELATE raum:1083->hat_verortung->verortung:bestand;
RELATE raum:1083->wird_genutzt_von->nutzer:zentrale_lehre;

-- Raum 1084: Hörsaal (HS 09)
UPSERT raum:1084 SET
    nummer = 1084,
    bezeichnung = 'Hörsaal (HS 09)',
    teil_der_beauftragung = false,
    nc5_code = '51111',
    nc5_bezeichnung = 'Hör-/Lehrsaal anst. m. Exp.-Bühne und RLT 1',
    flaeche_nuf_1_6 = 76.0,
    personen_max = 69,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:1084->ist_raumtyp->raumtyp:zl_hsflex;
RELATE raum:1084->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1084->hat_funktionsbereich->funktionsbereich:zl;
RELATE raum:1084->hat_verortung->verortung:bestand;
RELATE raum:1084->wird_genutzt_von->nutzer:zentrale_lehre;

-- Raum 1085: Hörsaal (HS 10)
UPSERT raum:1085 SET
    nummer = 1085,
    bezeichnung = 'Hörsaal (HS 10)',
    teil_der_beauftragung = false,
    nc5_code = '51111',
    nc5_bezeichnung = 'Hör-/Lehrsaal anst. m. Exp.-Bühne und RLT 1',
    flaeche_nuf_1_6 = 91.0,
    personen_max = 85,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:1085->ist_raumtyp->raumtyp:zl_hsflex;
RELATE raum:1085->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1085->hat_funktionsbereich->funktionsbereich:zl;
RELATE raum:1085->hat_verortung->verortung:bestand;
RELATE raum:1085->wird_genutzt_von->nutzer:zentrale_lehre;

-- Raum 1086: Hörsaal Naturwissenschaften (HS 11)
UPSERT raum:1086 SET
    nummer = 1086,
    bezeichnung = 'Hörsaal Naturwissenschaften (HS 11)',
    teil_der_beauftragung = false,
    nc5_code = '51111',
    nc5_bezeichnung = 'Hör-/Lehrsaal anst. m. Exp.-Bühne und RLT 1',
    flaeche_nuf_1_6 = 91.0,
    personen_max = 85,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:1086->ist_raumtyp->raumtyp:zl_hsflex;
RELATE raum:1086->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1086->hat_funktionsbereich->funktionsbereich:zl;
RELATE raum:1086->hat_verortung->verortung:bestand;
RELATE raum:1086->wird_genutzt_von->nutzer:zentrale_lehre;

-- Raum 1087: Hörsaal Naturwissenschaften (HS 12)
UPSERT raum:1087 SET
    nummer = 1087,
    bezeichnung = 'Hörsaal Naturwissenschaften (HS 12)',
    teil_der_beauftragung = false,
    nc5_code = '51111',
    nc5_bezeichnung = 'Hör-/Lehrsaal anst. m. Exp.-Bühne und RLT 1',
    flaeche_nuf_1_6 = 239.0,
    personen_max = 257,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:1087->ist_raumtyp->raumtyp:zl_hsflex;
RELATE raum:1087->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1087->hat_funktionsbereich->funktionsbereich:zl;
RELATE raum:1087->hat_verortung->verortung:bestand;
RELATE raum:1087->wird_genutzt_von->nutzer:zentrale_lehre;

-- Raum 1088: Vorbereitungsraum (HS 07)
UPSERT raum:1088 SET
    nummer = 1088,
    bezeichnung = 'Vorbereitungsraum (HS 07)',
    teil_der_beauftragung = false,
    nc5_code = '39722',
    nc5_bezeichnung = 'Vorbereitungsraum Naturwissenschaft',
    flaeche_nuf_1_6 = 97.0,
    personen_max = 6,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:1088->ist_raumtyp->raumtyp:zl_hsflex;
RELATE raum:1088->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1088->hat_funktionsbereich->funktionsbereich:zl;
RELATE raum:1088->hat_verortung->verortung:bestand;
RELATE raum:1088->wird_genutzt_von->nutzer:zentrale_lehre;

-- Raum 1089: Vorbereitungsraum (HS 11 und 12)
UPSERT raum:1089 SET
    nummer = 1089,
    bezeichnung = 'Vorbereitungsraum (HS 11 und 12)',
    teil_der_beauftragung = false,
    nc5_code = '39722',
    nc5_bezeichnung = 'Vorbereitungsraum Naturwissenschaft',
    flaeche_nuf_1_6 = 117.0,
    personen_max = 6,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:1089->ist_raumtyp->raumtyp:zl_hsflex;
RELATE raum:1089->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1089->hat_funktionsbereich->funktionsbereich:zl;
RELATE raum:1089->hat_verortung->verortung:bestand;
RELATE raum:1089->wird_genutzt_von->nutzer:zentrale_lehre;

-- Raum 1090: Seminarraum (Ebene 2 Bestand)
UPSERT raum:1090 SET
    nummer = 1090,
    bezeichnung = 'Seminarraum (Ebene 2 Bestand)',
    teil_der_beauftragung = false,
    nc5_code = '52212',
    nc5_bezeichnung = 'Seminar-/ Unterrichtsgroßraum mit RLT 1',
    flaeche_nuf_1_6 = 100.0,
    personen_max = 49,
    anzahl_raeume = 12,
    din277 = 'NUF5';
RELATE raum:1090->ist_raumtyp->raumtyp:zl_sem01;
RELATE raum:1090->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1090->hat_funktionsbereich->funktionsbereich:zl;
RELATE raum:1090->hat_verortung->verortung:bestand;
RELATE raum:1090->wird_genutzt_von->nutzer:zentrale_lehre;

-- Raum 1091: Seminarraum (Nähe Physik)
UPSERT raum:1091 SET
    nummer = 1091,
    bezeichnung = 'Seminarraum (Nähe Physik)',
    teil_der_beauftragung = false,
    nc5_code = '52212',
    nc5_bezeichnung = 'Seminar-/ Unterrichtsgroßraum mit RLT 1',
    flaeche_nuf_1_6 = 114.0,
    personen_max = 51,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:1091->ist_raumtyp->raumtyp:zl_sem01;
RELATE raum:1091->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1091->hat_funktionsbereich->funktionsbereich:zl;
RELATE raum:1091->hat_verortung->verortung:bestand_neubau;
RELATE raum:1091->wird_genutzt_von->nutzer:zentrale_lehre;

-- Raum 1092: Seminarraum (Nähe Biologie)
UPSERT raum:1092 SET
    nummer = 1092,
    bezeichnung = 'Seminarraum (Nähe Biologie)',
    teil_der_beauftragung = false,
    nc5_code = '52212',
    nc5_bezeichnung = 'Seminar-/ Unterrichtsgroßraum mit RLT 1',
    flaeche_nuf_1_6 = 114.0,
    personen_max = 51,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:1092->ist_raumtyp->raumtyp:zl_sem01;
RELATE raum:1092->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1092->hat_funktionsbereich->funktionsbereich:zl;
RELATE raum:1092->hat_verortung->verortung:bestand_neubau;
RELATE raum:1092->wird_genutzt_von->nutzer:zentrale_lehre;

-- Raum 1093: Seminarraum (Neubau / Bestand)
UPSERT raum:1093 SET
    nummer = 1093,
    bezeichnung = 'Seminarraum (Neubau / Bestand)',
    teil_der_beauftragung = false,
    nc5_code = '52212',
    nc5_bezeichnung = 'Seminar-/ Unterrichtsgroßraum mit RLT 1',
    flaeche_nuf_1_6 = 82.0,
    personen_max = 31,
    anzahl_raeume = 10,
    din277 = 'NUF5';
RELATE raum:1093->ist_raumtyp->raumtyp:zl_sem01;
RELATE raum:1093->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1093->hat_funktionsbereich->funktionsbereich:zl;
RELATE raum:1093->hat_verortung->verortung:bestand_neubau;
RELATE raum:1093->wird_genutzt_von->nutzer:zentrale_lehre;

-- Raum 1094: Seminarraum (Neubau / Bestand)
UPSERT raum:1094 SET
    nummer = 1094,
    bezeichnung = 'Seminarraum (Neubau / Bestand)',
    teil_der_beauftragung = false,
    nc5_code = '52212',
    nc5_bezeichnung = 'Seminar-/ Unterrichtsgroßraum mit RLT 1',
    flaeche_nuf_1_6 = 145.0,
    personen_max = 79,
    anzahl_raeume = 3,
    din277 = 'NUF5';
RELATE raum:1094->ist_raumtyp->raumtyp:zl_sem01;
RELATE raum:1094->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1094->hat_funktionsbereich->funktionsbereich:zl;
RELATE raum:1094->hat_verortung->verortung:bestand_neubau;
RELATE raum:1094->wird_genutzt_von->nutzer:zentrale_lehre;

-- Raum 1095: Studentische Lehrfläche (Physik)
UPSERT raum:1095 SET
    nummer = 1095,
    bezeichnung = 'Studentische Lehrfläche (Physik)',
    teil_der_beauftragung = false,
    nc5_code = '51111',
    nc5_bezeichnung = 'Hör-/Lehrsaal anst. m. Exp.-Bühne und RLT 1',
    flaeche_nuf_1_6 = 122.0,
    personen_max = 35,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:1095->ist_raumtyp->raumtyp:zl_sem01;
RELATE raum:1095->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1095->hat_funktionsbereich->funktionsbereich:zl;
RELATE raum:1095->hat_verortung->verortung:bestand_neubau;
RELATE raum:1095->wird_genutzt_von->nutzer:zentrale_lehre;

-- Raum 1096: Studentische Lehrfläche (Biologie)
UPSERT raum:1096 SET
    nummer = 1096,
    bezeichnung = 'Studentische Lehrfläche (Biologie)',
    teil_der_beauftragung = false,
    nc5_code = '51111',
    nc5_bezeichnung = 'Hör-/Lehrsaal anst. m. Exp.-Bühne und RLT 1',
    flaeche_nuf_1_6 = 114.0,
    personen_max = 32,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:1096->ist_raumtyp->raumtyp:zl_sem01;
RELATE raum:1096->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1096->hat_funktionsbereich->funktionsbereich:zl;
RELATE raum:1096->hat_verortung->verortung:bestand_neubau;
RELATE raum:1096->wird_genutzt_von->nutzer:zentrale_lehre;

-- Raum 1097: Studentische Lehrfläche (Halle)
UPSERT raum:1097 SET
    nummer = 1097,
    bezeichnung = 'Studentische Lehrfläche (Halle)',
    teil_der_beauftragung = false,
    nc5_code = '52212',
    nc5_bezeichnung = 'Seminar-/ Unterrichtsgroßraum mit RLT 1',
    flaeche_nuf_1_6 = 200.0,
    personen_max = 55,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:1097->ist_raumtyp->raumtyp:zl_studlf;
RELATE raum:1097->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1097->hat_funktionsbereich->funktionsbereich:zl;
RELATE raum:1097->hat_verortung->verortung:bestand;
RELATE raum:1097->wird_genutzt_von->nutzer:zentrale_lehre;

-- Raum 1098: Freihandbestand
UPSERT raum:1098 SET
    nummer = 1098,
    bezeichnung = 'Freihandbestand',
    teil_der_beauftragung = false,
    nc5_code = '54151',
    nc5_bezeichnung = 'Freihandstellfläche mit RLT 1',
    flaeche_nuf_1_6 = 2600.0,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:1098->ist_raumtyp->raumtyp:ub_01;
RELATE raum:1098->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1098->hat_funktionsbereich->funktionsbereich:medien;
RELATE raum:1098->hat_verortung->verortung:bestand_neubau;
RELATE raum:1098->wird_genutzt_von->nutzer:universittsbibliothek;

-- Raum 1099: Testothek
UPSERT raum:1099 SET
    nummer = 1099,
    bezeichnung = 'Testothek',
    teil_der_beauftragung = false,
    nc5_code = '54151',
    nc5_bezeichnung = 'Freihandstellfläche mit RLT 1',
    flaeche_nuf_1_6 = 50.0,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:1099->ist_raumtyp->raumtyp:ub_02;
RELATE raum:1099->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1099->hat_funktionsbereich->funktionsbereich:medien;
RELATE raum:1099->hat_verortung->verortung:bestand_neubau;
RELATE raum:1099->wird_genutzt_von->nutzer:universittsbibliothek;

-- Raum 1100: Leseplätze
UPSERT raum:1100 SET
    nummer = 1100,
    bezeichnung = 'Leseplätze',
    teil_der_beauftragung = false,
    nc5_code = '54121',
    nc5_bezeichnung = 'Leseraum mit RLT 1',
    flaeche_nuf_1_6 = 2410.0,
    personen_max = 750,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:1100->ist_raumtyp->raumtyp:ub_03;
RELATE raum:1100->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1100->hat_funktionsbereich->funktionsbereich:nutzer;
RELATE raum:1100->hat_verortung->verortung:bestand_neubau;
RELATE raum:1100->wird_genutzt_von->nutzer:universittsbibliothek;

-- Raum 1101: Gruppenarbeitsraum groß
UPSERT raum:1101 SET
    nummer = 1101,
    bezeichnung = 'Gruppenarbeitsraum groß',
    teil_der_beauftragung = false,
    nc5_code = '54121',
    nc5_bezeichnung = 'Leseraum mit RLT 1',
    flaeche_nuf_1_6 = 23.5,
    personen_max = 8,
    anzahl_raeume = 4,
    din277 = 'NUF5';
RELATE raum:1101->ist_raumtyp->raumtyp:ub_04;
RELATE raum:1101->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1101->hat_funktionsbereich->funktionsbereich:nutzer;
RELATE raum:1101->hat_verortung->verortung:bestand_neubau;
RELATE raum:1101->wird_genutzt_von->nutzer:universittsbibliothek;

-- Raum 1102: Gruppenarbeitsraum mittel
UPSERT raum:1102 SET
    nummer = 1102,
    bezeichnung = 'Gruppenarbeitsraum mittel',
    teil_der_beauftragung = false,
    nc5_code = '54121',
    nc5_bezeichnung = 'Leseraum mit RLT 1',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 4,
    anzahl_raeume = 8,
    din277 = 'NUF5';
RELATE raum:1102->ist_raumtyp->raumtyp:ub_05;
RELATE raum:1102->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1102->hat_funktionsbereich->funktionsbereich:nutzer;
RELATE raum:1102->hat_verortung->verortung:bestand_neubau;
RELATE raum:1102->wird_genutzt_von->nutzer:universittsbibliothek;

-- Raum 1103: Arbeitsbox
UPSERT raum:1103 SET
    nummer = 1103,
    bezeichnung = 'Arbeitsbox',
    teil_der_beauftragung = false,
    nc5_code = '54121',
    nc5_bezeichnung = 'Leseraum mit RLT 1',
    flaeche_nuf_1_6 = 6.0,
    personen_max = 2,
    anzahl_raeume = 10,
    din277 = 'NUF5';
RELATE raum:1103->ist_raumtyp->raumtyp:ub_06;
RELATE raum:1103->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1103->hat_funktionsbereich->funktionsbereich:nutzer;
RELATE raum:1103->hat_verortung->verortung:bestand_neubau;
RELATE raum:1103->wird_genutzt_von->nutzer:universittsbibliothek;

-- Raum 1104: Eltern-Kind-Raum
UPSERT raum:1104 SET
    nummer = 1104,
    bezeichnung = 'Eltern-Kind-Raum',
    teil_der_beauftragung = false,
    nc5_code = '54121',
    nc5_bezeichnung = 'Leseraum mit RLT 1',
    flaeche_nuf_1_6 = 23.5,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:1104->ist_raumtyp->raumtyp:ub_07;
RELATE raum:1104->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1104->hat_funktionsbereich->funktionsbereich:nutzer;
RELATE raum:1104->hat_verortung->verortung:bestand_neubau;
RELATE raum:1104->wird_genutzt_von->nutzer:universittsbibliothek;

-- Raum 1105: PC-Plätze
UPSERT raum:1105 SET
    nummer = 1105,
    bezeichnung = 'PC-Plätze',
    teil_der_beauftragung = false,
    nc5_code = '54121',
    nc5_bezeichnung = 'Leseraum mit RLT 1',
    flaeche_nuf_1_6 = 35.0,
    personen_max = 10,
    anzahl_raeume = 2,
    din277 = 'NUF5';
RELATE raum:1105->ist_raumtyp->raumtyp:ub_08;
RELATE raum:1105->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1105->hat_funktionsbereich->funktionsbereich:nutzer;
RELATE raum:1105->hat_verortung->verortung:bestand_neubau;
RELATE raum:1105->wird_genutzt_von->nutzer:universittsbibliothek;

-- Raum 1106: Lounge
UPSERT raum:1106 SET
    nummer = 1106,
    bezeichnung = 'Lounge',
    teil_der_beauftragung = false,
    nc5_code = '52113',
    nc5_bezeichnung = 'Seminar-/ Unterrichtsraum mit Medien und RLT 1',
    flaeche_nuf_1_6 = 40.0,
    personen_max = 10,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:1106->ist_raumtyp->raumtyp:ub_09;
RELATE raum:1106->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1106->hat_funktionsbereich->funktionsbereich:nutzer;
RELATE raum:1106->hat_verortung->verortung:bestand_neubau;
RELATE raum:1106->wird_genutzt_von->nutzer:universittsbibliothek;

-- Raum 1107: Scan-/Kopierraum Benutzer
UPSERT raum:1107 SET
    nummer = 1107,
    bezeichnung = 'Scan-/Kopierraum Benutzer',
    teil_der_beauftragung = false,
    nc5_code = '27111',
    nc5_bezeichnung = 'Fotokopierraum / Druckerraum',
    flaeche_nuf_1_6 = 7.2,
    anzahl_raeume = 4,
    din277 = 'NUF2';
RELATE raum:1107->ist_raumtyp->raumtyp:ub_10;
RELATE raum:1107->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1107->hat_funktionsbereich->funktionsbereich:nutzer;
RELATE raum:1107->hat_verortung->verortung:bestand_neubau;
RELATE raum:1107->wird_genutzt_von->nutzer:universittsbibliothek;

-- Raum 1108: Infoterminal
UPSERT raum:1108 SET
    nummer = 1108,
    bezeichnung = 'Infoterminal',
    teil_der_beauftragung = false,
    nc5_code = '54121',
    nc5_bezeichnung = 'Leseraum mit RLT 1',
    flaeche_nuf_1_6 = 23.5,
    personen_max = 5,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:1108->ist_raumtyp->raumtyp:ub_11;
RELATE raum:1108->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1108->hat_funktionsbereich->funktionsbereich:nutzer;
RELATE raum:1108->hat_verortung->verortung:bestand_neubau;
RELATE raum:1108->wird_genutzt_von->nutzer:universittsbibliothek;

-- Raum 1109: Selbstverbucher
UPSERT raum:1109 SET
    nummer = 1109,
    bezeichnung = 'Selbstverbucher',
    teil_der_beauftragung = false,
    nc5_code = '54121',
    nc5_bezeichnung = 'Leseraum mit RLT 1',
    flaeche_nuf_1_6 = 7.2,
    personen_max = 4,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:1109->ist_raumtyp->raumtyp:ub_12;
RELATE raum:1109->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1109->hat_funktionsbereich->funktionsbereich:nutzer;
RELATE raum:1109->hat_verortung->verortung:bestand_neubau;
RELATE raum:1109->wird_genutzt_von->nutzer:universittsbibliothek;

-- Raum 1110: Automaten, Selbstbedienungsterminal
UPSERT raum:1110 SET
    nummer = 1110,
    bezeichnung = 'Automaten, Selbstbedienungsterminal',
    teil_der_beauftragung = false,
    nc5_code = '54121',
    nc5_bezeichnung = 'Leseraum mit RLT 1',
    flaeche_nuf_1_6 = 7.2,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF5';
RELATE raum:1110->ist_raumtyp->raumtyp:ub_13;
RELATE raum:1110->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1110->hat_funktionsbereich->funktionsbereich:nutzer;
RELATE raum:1110->hat_verortung->verortung:bestand_neubau;
RELATE raum:1110->wird_genutzt_von->nutzer:universittsbibliothek;

-- Raum 1111: Ausleihe/ Rücknahme
UPSERT raum:1111 SET
    nummer = 1111,
    bezeichnung = 'Ausleihe/ Rücknahme',
    teil_der_beauftragung = false,
    nc5_code = '26111',
    nc5_bezeichnung = 'Aufsichtsraum',
    flaeche_nuf_1_6 = 23.5,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:1111->ist_raumtyp->raumtyp:ub_14;
RELATE raum:1111->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1111->hat_funktionsbereich->funktionsbereich:nutzer;
RELATE raum:1111->hat_verortung->verortung:bestand_neubau;
RELATE raum:1111->wird_genutzt_von->nutzer:universittsbibliothek;

-- Raum 1112: Theke/ Auskunft/ Aufsicht
UPSERT raum:1112 SET
    nummer = 1112,
    bezeichnung = 'Theke/ Auskunft/ Aufsicht',
    teil_der_beauftragung = false,
    nc5_code = '26111',
    nc5_bezeichnung = 'Aufsichtsraum',
    flaeche_nuf_1_6 = 23.5,
    personen_max = 1,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:1112->ist_raumtyp->raumtyp:ub_15;
RELATE raum:1112->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1112->hat_funktionsbereich->funktionsbereich:nutzer;
RELATE raum:1112->hat_verortung->verortung:bestand_neubau;
RELATE raum:1112->wird_genutzt_von->nutzer:universittsbibliothek;

-- Raum 1113: Lager digitale Medien
UPSERT raum:1113 SET
    nummer = 1113,
    bezeichnung = 'Lager digitale Medien',
    teil_der_beauftragung = false,
    nc5_code = '42111',
    nc5_bezeichnung = 'Archiv',
    flaeche_nuf_1_6 = 23.5,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:1113->ist_raumtyp->raumtyp:ub_16;
RELATE raum:1113->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1113->hat_funktionsbereich->funktionsbereich:nutzer;
RELATE raum:1113->hat_verortung->verortung:bestand_neubau;
RELATE raum:1113->wird_genutzt_von->nutzer:universittsbibliothek;

-- Raum 1114: Büro - Einzelbelegung
UPSERT raum:1114 SET
    nummer = 1114,
    bezeichnung = 'Büro - Einzelbelegung',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 1,
    anzahl_raeume = 3,
    din277 = 'NUF2';
RELATE raum:1114->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1114->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1114->hat_funktionsbereich->funktionsbereich:personal;
RELATE raum:1114->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1114->wird_genutzt_von->nutzer:universittsbibliothek;

-- Raum 1115: Büro - Doppelbelegung
UPSERT raum:1115 SET
    nummer = 1115,
    bezeichnung = 'Büro - Doppelbelegung',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 17.5,
    personen_max = 2,
    anzahl_raeume = 3,
    din277 = 'NUF2';
RELATE raum:1115->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1115->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1115->hat_funktionsbereich->funktionsbereich:personal;
RELATE raum:1115->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1115->wird_genutzt_von->nutzer:universittsbibliothek;

-- Raum 1116: Teeküche / Lounge / Besprechung
UPSERT raum:1116 SET
    nummer = 1116,
    bezeichnung = 'Teeküche / Lounge / Besprechung',
    teil_der_beauftragung = false,
    nc5_code = '12122',
    nc5_bezeichnung = 'Aufenthaltsraum mit Teeküche und  RLT 1',
    flaeche_nuf_1_6 = 35.0,
    personen_max = 8,
    anzahl_raeume = 1,
    din277 = 'NUF1';
RELATE raum:1116->ist_raumtyp->raumtyp:ub_19;
RELATE raum:1116->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1116->hat_funktionsbereich->funktionsbereich:personal;
RELATE raum:1116->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1116->wird_genutzt_von->nutzer:universittsbibliothek;

-- Raum 1117: Kopierraum
UPSERT raum:1117 SET
    nummer = 1117,
    bezeichnung = 'Kopierraum',
    teil_der_beauftragung = false,
    nc5_code = '27111',
    nc5_bezeichnung = 'Fotokopierraum / Druckerraum',
    flaeche_nuf_1_6 = 6.0,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:1117->ist_raumtyp->raumtyp:ub_20;
RELATE raum:1117->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1117->hat_funktionsbereich->funktionsbereich:personal;
RELATE raum:1117->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1117->wird_genutzt_von->nutzer:universittsbibliothek;

-- Raum 1118: Zwischenlager
UPSERT raum:1118 SET
    nummer = 1118,
    bezeichnung = 'Zwischenlager',
    teil_der_beauftragung = false,
    nc5_code = '42111',
    nc5_bezeichnung = 'Archiv',
    flaeche_nuf_1_6 = 23.5,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:1118->ist_raumtyp->raumtyp:ub_21;
RELATE raum:1118->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1118->hat_funktionsbereich->funktionsbereich:personal;
RELATE raum:1118->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1118->wird_genutzt_von->nutzer:universittsbibliothek;

-- Raum 1125: Lagerraum allgemein
UPSERT raum:1125 SET
    nummer = 1125,
    bezeichnung = 'Lagerraum allgemein',
    teil_der_beauftragung = false,
    nc5_code = '41111',
    nc5_bezeichnung = 'einfacher Lagerraum',
    flaeche_nuf_1_6 = 12.54,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:1125->ist_raumtyp->raumtyp:fn_7;
RELATE raum:1125->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1125->hat_funktionsbereich->funktionsbereich:zentrale_versorgung;
RELATE raum:1125->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1125->wird_genutzt_von->nutzer:zentrale_versorgung;

-- Raum 1126: Lagerraum allgemein
UPSERT raum:1126 SET
    nummer = 1126,
    bezeichnung = 'Lagerraum allgemein',
    teil_der_beauftragung = false,
    nc5_code = '41111',
    nc5_bezeichnung = 'einfacher Lagerraum',
    flaeche_nuf_1_6 = 20.06,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:1126->ist_raumtyp->raumtyp:fn_7;
RELATE raum:1126->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1126->hat_funktionsbereich->funktionsbereich:zentrale_versorgung;
RELATE raum:1126->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1126->wird_genutzt_von->nutzer:zentrale_versorgung;

-- Raum 1127: Lagerraum allgemein
UPSERT raum:1127 SET
    nummer = 1127,
    bezeichnung = 'Lagerraum allgemein',
    teil_der_beauftragung = false,
    nc5_code = '41111',
    nc5_bezeichnung = 'einfacher Lagerraum',
    flaeche_nuf_1_6 = 34.52,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:1127->ist_raumtyp->raumtyp:fn_7;
RELATE raum:1127->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1127->hat_funktionsbereich->funktionsbereich:zentrale_versorgung;
RELATE raum:1127->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1127->wird_genutzt_von->nutzer:zentrale_versorgung;

-- Raum 1128: Lagerraum allgemein
UPSERT raum:1128 SET
    nummer = 1128,
    bezeichnung = 'Lagerraum allgemein',
    teil_der_beauftragung = false,
    nc5_code = '41111',
    nc5_bezeichnung = 'einfacher Lagerraum',
    flaeche_nuf_1_6 = 35.52,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:1128->ist_raumtyp->raumtyp:fn_7;
RELATE raum:1128->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1128->hat_funktionsbereich->funktionsbereich:zentrale_versorgung;
RELATE raum:1128->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1128->wird_genutzt_von->nutzer:zentrale_versorgung;

-- Raum 1129: Lagerraum allgemein
UPSERT raum:1129 SET
    nummer = 1129,
    bezeichnung = 'Lagerraum allgemein',
    teil_der_beauftragung = false,
    nc5_code = '41111',
    nc5_bezeichnung = 'einfacher Lagerraum',
    flaeche_nuf_1_6 = 7.04,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:1129->ist_raumtyp->raumtyp:fn_7;
RELATE raum:1129->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1129->hat_funktionsbereich->funktionsbereich:zentrale_versorgung;
RELATE raum:1129->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1129->wird_genutzt_von->nutzer:zentrale_versorgung;

-- Raum 1130: Lagerraum allgemein
UPSERT raum:1130 SET
    nummer = 1130,
    bezeichnung = 'Lagerraum allgemein',
    teil_der_beauftragung = false,
    nc5_code = '41111',
    nc5_bezeichnung = 'einfacher Lagerraum',
    flaeche_nuf_1_6 = 9.92,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:1130->ist_raumtyp->raumtyp:fn_7;
RELATE raum:1130->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1130->hat_funktionsbereich->funktionsbereich:zentrale_versorgung;
RELATE raum:1130->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1130->wird_genutzt_von->nutzer:zentrale_versorgung;

-- Raum 1131: Lagerraum allgemein
UPSERT raum:1131 SET
    nummer = 1131,
    bezeichnung = 'Lagerraum allgemein',
    teil_der_beauftragung = false,
    nc5_code = '41111',
    nc5_bezeichnung = 'einfacher Lagerraum',
    flaeche_nuf_1_6 = 10.81,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:1131->ist_raumtyp->raumtyp:fn_7;
RELATE raum:1131->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1131->hat_funktionsbereich->funktionsbereich:zentrale_versorgung;
RELATE raum:1131->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1131->wird_genutzt_von->nutzer:zentrale_versorgung;

-- Raum 1132: Lagerraum allgemein
UPSERT raum:1132 SET
    nummer = 1132,
    bezeichnung = 'Lagerraum allgemein',
    teil_der_beauftragung = false,
    nc5_code = '41111',
    nc5_bezeichnung = 'einfacher Lagerraum',
    flaeche_nuf_1_6 = 14.64,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:1132->ist_raumtyp->raumtyp:fn_7;
RELATE raum:1132->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1132->hat_funktionsbereich->funktionsbereich:zentrale_versorgung;
RELATE raum:1132->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1132->wird_genutzt_von->nutzer:zentrale_versorgung;

-- Raum 1133: Aufsichtsräume allgemein
UPSERT raum:1133 SET
    nummer = 1133,
    bezeichnung = 'Aufsichtsräume allgemein',
    teil_der_beauftragung = false,
    nc5_code = '26111',
    nc5_bezeichnung = 'Aufsichtsraum',
    flaeche_nuf_1_6 = 33.52,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:1133->ist_raumtyp->raumtyp:ub_15;
RELATE raum:1133->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1133->hat_funktionsbereich->funktionsbereich:zentrale_versorgung;
RELATE raum:1133->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1133->wird_genutzt_von->nutzer:zentrale_versorgung;

-- Raum 1134: Aufsichtsräume allgemein
UPSERT raum:1134 SET
    nummer = 1134,
    bezeichnung = 'Aufsichtsräume allgemein',
    teil_der_beauftragung = false,
    nc5_code = '26111',
    nc5_bezeichnung = 'Aufsichtsraum',
    flaeche_nuf_1_6 = 61.17,
    personen_max = 4,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:1134->ist_raumtyp->raumtyp:ub_15;
RELATE raum:1134->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1134->hat_funktionsbereich->funktionsbereich:zentrale_versorgung;
RELATE raum:1134->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1134->wird_genutzt_von->nutzer:zentrale_versorgung;

-- Raum 1135: Wäschereiräume
UPSERT raum:1135 SET
    nummer = 1135,
    bezeichnung = 'Wäschereiräume',
    teil_der_beauftragung = false,
    nc5_code = '39211',
    nc5_bezeichnung = 'Wäschereiraum',
    flaeche_nuf_1_6 = 81.17,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:1135->ist_raumtyp->raumtyp:wsr;
RELATE raum:1135->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1135->hat_funktionsbereich->funktionsbereich:zentrale_versorgung;
RELATE raum:1135->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1135->wird_genutzt_von->nutzer:zentrale_versorgung;

-- Raum 1136: Büro 1-2 AP
UPSERT raum:1136 SET
    nummer = 1136,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 18.72,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:1136->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1136->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1136->hat_funktionsbereich->funktionsbereich:zentrale_versorgung;
RELATE raum:1136->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1136->wird_genutzt_von->nutzer:zentrale_versorgung;

-- Raum 1137: Büro 1-2 AP
UPSERT raum:1137 SET
    nummer = 1137,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 18.86,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:1137->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1137->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1137->hat_funktionsbereich->funktionsbereich:zentrale_versorgung;
RELATE raum:1137->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1137->wird_genutzt_von->nutzer:zentrale_versorgung;

-- Raum 1138: Büro 1-2 AP
UPSERT raum:1138 SET
    nummer = 1138,
    bezeichnung = 'Büro 1-2 AP',
    teil_der_beauftragung = false,
    nc5_code = '21111',
    nc5_bezeichnung = 'Büroraum',
    flaeche_nuf_1_6 = 19.02,
    personen_max = 2,
    anzahl_raeume = 1,
    din277 = 'NUF2';
RELATE raum:1138->ist_raumtyp->raumtyp:bro_01;
RELATE raum:1138->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1138->hat_funktionsbereich->funktionsbereich:zentrale_versorgung;
RELATE raum:1138->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1138->wird_genutzt_von->nutzer:zentrale_versorgung;

-- Raum 1139: Cafeteria
UPSERT raum:1139 SET
    nummer = 1139,
    bezeichnung = 'Cafeteria',
    teil_der_beauftragung = false,
    nc5_code = '15211',
    nc5_bezeichnung = 'Cafeteria',
    flaeche_nuf_1_6 = 32.99,
    anzahl_raeume = 1,
    din277 = 'NUF1';
RELATE raum:1139->ist_raumtyp->raumtyp:cafe;
RELATE raum:1139->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1139->hat_funktionsbereich->funktionsbereich:zentrale_versorgung;
RELATE raum:1139->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1139->wird_genutzt_von->nutzer:zentrale_versorgung;

-- Raum 1140: Speiseraum allgemein
UPSERT raum:1140 SET
    nummer = 1140,
    bezeichnung = 'Speiseraum allgemein',
    teil_der_beauftragung = false,
    nc5_code = '15111',
    nc5_bezeichnung = 'Speiseraum',
    flaeche_nuf_1_6 = 162.06,
    anzahl_raeume = 1,
    din277 = 'NUF1';
RELATE raum:1140->ist_raumtyp->raumtyp:speise;
RELATE raum:1140->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1140->hat_funktionsbereich->funktionsbereich:zentrale_versorgung;
RELATE raum:1140->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1140->wird_genutzt_von->nutzer:zentrale_versorgung;

-- Raum 1141: Lebensmittelkühlraum
UPSERT raum:1141 SET
    nummer = 1141,
    bezeichnung = 'Lebensmittelkühlraum',
    teil_der_beauftragung = false,
    nc5_code = '43111',
    nc5_bezeichnung = 'Lebensmittelkühlraum',
    flaeche_nuf_1_6 = 3.8,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:1141->ist_raumtyp->raumtyp:lmkr;
RELATE raum:1141->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1141->hat_funktionsbereich->funktionsbereich:zentrale_versorgung;
RELATE raum:1141->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1141->wird_genutzt_von->nutzer:zentrale_versorgung;

-- Raum 1142: Großküche
UPSERT raum:1142 SET
    nummer = 1142,
    bezeichnung = 'Großküche',
    teil_der_beauftragung = false,
    nc5_code = '38111',
    nc5_bezeichnung = 'Großküche mit Sonderabsaugung, Lüftungsdecke und RLT 1',
    flaeche_nuf_1_6 = 44.38,
    anzahl_raeume = 1,
    din277 = 'NUF3';
RELATE raum:1142->ist_raumtyp->raumtyp:grok;
RELATE raum:1142->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1142->hat_funktionsbereich->funktionsbereich:zentrale_versorgung;
RELATE raum:1142->hat_verortung->verortung:vorzugsweise_bestand;
RELATE raum:1142->wird_genutzt_von->nutzer:zentrale_versorgung;

-- Raum 1143: Verkaufsräume
UPSERT raum:1143 SET
    nummer = 1143,
    bezeichnung = 'Verkaufsräume',
    teil_der_beauftragung = false,
    nc5_code = '45212',
    nc5_bezeichnung = 'Ladenraum',
    flaeche_nuf_1_6 = 44.47,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:1143->ist_raumtyp->raumtyp:vkr;
RELATE raum:1143->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1143->hat_funktionsbereich->funktionsbereich:zentrale_versorgung;
RELATE raum:1143->hat_verortung->verortung:bestand;
RELATE raum:1143->wird_genutzt_von->nutzer:zentrale_versorgung;

-- Raum 1144: Verkaufsräume
UPSERT raum:1144 SET
    nummer = 1144,
    bezeichnung = 'Verkaufsräume',
    teil_der_beauftragung = false,
    nc5_code = '45212',
    nc5_bezeichnung = 'Ladenraum',
    flaeche_nuf_1_6 = 53.69,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:1144->ist_raumtyp->raumtyp:vkr;
RELATE raum:1144->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1144->hat_funktionsbereich->funktionsbereich:zentrale_versorgung;
RELATE raum:1144->hat_verortung->verortung:bestand;
RELATE raum:1144->wird_genutzt_von->nutzer:zentrale_versorgung;

-- Raum 1145: Verkaufsräume
UPSERT raum:1145 SET
    nummer = 1145,
    bezeichnung = 'Verkaufsräume',
    teil_der_beauftragung = false,
    nc5_code = '45212',
    nc5_bezeichnung = 'Ladenraum',
    flaeche_nuf_1_6 = 98.92,
    anzahl_raeume = 1,
    din277 = 'NUF4';
RELATE raum:1145->ist_raumtyp->raumtyp:vkr;
RELATE raum:1145->gehoert_zu_teilprojekt->teilprojekt:nicht_beauftragt;
RELATE raum:1145->hat_funktionsbereich->funktionsbereich:zentrale_versorgung;
RELATE raum:1145->hat_verortung->verortung:bestand;
RELATE raum:1145->wird_genutzt_von->nutzer:zentrale_versorgung;


-- ############################################################
-- BEISPIEL-ABFRAGEN FÜR GRAPH VIEWER
-- ############################################################

-- Alle Verbindungen eines Raums anzeigen
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

-- Alle Räume mit Raumtyp und Bereich
-- SELECT
--     nummer,
--     bezeichnung,
--     ->ist_raumtyp->raumtyp.bezeichnung AS raumtyp,
--     ->ist_raumtyp->raumtyp->gehoert_zu_bereich->bereich.name AS bereich
-- FROM raum;
