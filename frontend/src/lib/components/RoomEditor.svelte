<script lang="ts">
    import { createEventDispatcher } from 'svelte';
    import { goto } from '$app/navigation';
    import { base } from '$app/paths';
    import type { RaumWithRelations, RaumFormData, RaumParameter, LookupData } from '$lib/db/types';
    import { updateRoom, updateRoomParameter } from '$lib/db/queries';

    export let room: RaumWithRelations;
    export let lookupData: LookupData;

    const dispatch = createEventDispatcher<{ saved: RaumWithRelations; cancel: void }>();

    let saving = false;
    let error: string | null = null;
    let activeTab: 'stammdaten' | 'parameter' = 'stammdaten';

    // Helper to extract ID string from various SurrealDB formats
    function extractId(value: unknown): string | undefined {
        if (!value) return undefined;
        // Handle arrays - extract from first element
        if (Array.isArray(value)) {
            return value.length > 0 ? extractId(value[0]) : undefined;
        }
        if (typeof value === 'string') return value;
        if (typeof value === 'object' && value !== null) {
            if ('tb' in value && 'id' in value) {
                const tb = (value as { tb: unknown }).tb;
                const id = (value as { id: unknown }).id;
                if (typeof tb === 'string' && (typeof id === 'string' || typeof id === 'number')) {
                    return `${tb}:${id}`;
                }
            }
            if ('id' in value) {
                return extractId((value as { id: unknown }).id);
            }
            if ('toString' in value && typeof (value as { toString: unknown }).toString === 'function') {
                const str = String(value);
                if (str.includes(':') && !str.startsWith('[object')) {
                    return str;
                }
            }
        }
        return undefined;
    }

    // Form state - Stammdaten
    let formData: RaumFormData = {
        nummer: room.nummer,
        bezeichnung: room.bezeichnung ?? '',
        nc5_code: room.nc5_code ?? '',
        nc5_bezeichnung: room.nc5_bezeichnung ?? '',
        raumtyp: extractId(room.raumtyp),
        teilprojekt: extractId(room.teilprojekt),
        funktionsbereich: extractId(room.funktionsbereich),
        verortung: extractId(room.verortung),
        nutzer: extractId(room.nutzer),
        teil_der_beauftragung: room.teil_der_beauftragung ?? false,
        flaeche_nuf_1_6: room.flaeche_nuf_1_6,
        flaeche_nuf_7_9: room.flaeche_nuf_7_9,
        din277: room.din277 ?? '',
        personen_max: room.personen_max,
        anzahl_raeume: room.anzahl_raeume,
        hinweise: room.hinweise ?? ''
    };

    // Handle parameter data - it might be an array from the query or a direct object
    const param = Array.isArray(room.parameter) ? room.parameter[0] : room.parameter;

    // Form state - Parameter
    let paramData: Partial<Omit<RaumParameter, 'id'>> = {
        // Grundparameter
        mindest_flaeche: param?.mindest_flaeche,
        mindest_hoehe: param?.mindest_hoehe,
        zugang_vorne: param?.zugang_vorne,
        zugang_hinten: param?.zugang_hinten,
        zugang_seite: param?.zugang_seite,
        platzierung: param?.platzierung,
        service_zugang: param?.service_zugang,
        boden_tragfaehigkeit: param?.boden_tragfaehigkeit,
        vibrationsdaempfung: param?.vibrationsdaempfung,
        // Mikroklima
        temperatur_min: param?.temperatur_min,
        temperatur_max: param?.temperatur_max,
        temperatur_schwankung: param?.temperatur_schwankung,
        luftfeuchtigkeit_min: param?.luftfeuchtigkeit_min,
        luftfeuchtigkeit_max: param?.luftfeuchtigkeit_max,
        luftfeuchtigkeit_schwankung: param?.luftfeuchtigkeit_schwankung,
        kondensation_empfindlich: param?.kondensation_empfindlich,
        // Luftstrom
        luftstrom_messeinfluss: param?.luftstrom_messeinfluss,
        belueftungsart: param?.belueftungsart,
        luftstrom_sensibel: param?.luftstrom_sensibel,
        lokale_abgasanlage: param?.lokale_abgasanlage,
        turbulenzen_vermeiden: param?.turbulenzen_vermeiden,
        rezirkulation_erlaubt: param?.rezirkulation_erlaubt,
        // Elektrik
        leistungsstabilitaet: param?.leistungsstabilitaet,
        ueberspannungsschutz: param?.ueberspannungsschutz,
        lan_geschwindigkeit: param?.lan_geschwindigkeit,
        ups_erforderlich: param?.ups_erforderlich,
        // Umwelt
        vibrations_grad: param?.vibrations_grad,
        em_sensibel: param?.em_sensibel,
        akustik_einschraenkungen: param?.akustik_einschraenkungen,
        staub_kritisch: param?.staub_kritisch,
        chemische_daempfe_erlaubt: param?.chemische_daempfe_erlaubt,
        // Sicherheit
        zugang_beschraenkt: param?.zugang_beschraenkt,
        personal_qualifikation: param?.personal_qualifikation,
        psa_anforderungen: param?.psa_anforderungen,
        verriegelung_erforderlich: param?.verriegelung_erforderlich,
        notabschaltung_erforderlich: param?.notabschaltung_erforderlich,
        service_sperre_erforderlich: param?.service_sperre_erforderlich,
        // Wartung
        servicewerkzeug_platz: param?.servicewerkzeug_platz,
        ersatzteil_zugang: param?.ersatzteil_zugang,
        dekontamination_erforderlich: param?.dekontamination_erforderlich,
        ausfallzeit_toleranz: param?.ausfallzeit_toleranz,
        externe_dienste_erforderlich: param?.externe_dienste_erforderlich,
        service_anderer_raum: param?.service_anderer_raum
    };

    async function handleSubmit() {
        saving = true;
        error = null;

        try {
            // Save Stammdaten
            const updateData: Partial<RaumFormData> = {
                bezeichnung: formData.bezeichnung,
                nc5_code: formData.nc5_code || undefined,
                nc5_bezeichnung: formData.nc5_bezeichnung || undefined,
                raumtyp: formData.raumtyp || undefined,
                teilprojekt: formData.teilprojekt || undefined,
                funktionsbereich: formData.funktionsbereich || undefined,
                verortung: formData.verortung || undefined,
                nutzer: formData.nutzer || undefined,
                teil_der_beauftragung: formData.teil_der_beauftragung,
                flaeche_nuf_1_6: formData.flaeche_nuf_1_6,
                flaeche_nuf_7_9: formData.flaeche_nuf_7_9,
                din277: formData.din277 || undefined,
                personen_max: formData.personen_max,
                anzahl_raeume: formData.anzahl_raeume,
                hinweise: formData.hinweise || undefined
            };
            await updateRoom(room.id, updateData);

            // Save Parameter (only if any are set)
            const hasParameters = Object.values(paramData).some(v => v !== undefined && v !== null && v !== '');
            if (hasParameters) {
                await updateRoomParameter(room.id, paramData);
            }

            dispatch('saved', { ...room, ...updateData } as RaumWithRelations);
        } catch (err) {
            error = err instanceof Error ? err.message : 'Fehler beim Speichern';
            console.error('Failed to save room:', err);
        } finally {
            saving = false;
        }
    }

    function handleCancel() {
        dispatch('cancel');
        goto(`${base}/rooms`);
    }
</script>

<form class="room-editor" on:submit|preventDefault={handleSubmit}>
    <div class="editor-header">
        <h2>Raum {room.nummer} bearbeiten</h2>
        <div class="editor-actions">
            <button type="button" class="btn btn-secondary" on:click={handleCancel} disabled={saving}>
                Abbrechen
            </button>
            <button type="submit" class="btn btn-primary" disabled={saving}>
                {#if saving}
                    Speichern...
                {:else}
                    Speichern
                {/if}
            </button>
        </div>
    </div>

    {#if error}
        <div class="error-banner">{error}</div>
    {/if}

    <!-- Tabs -->
    <div class="tabs">
        <button
            type="button"
            class="tab"
            class:active={activeTab === 'stammdaten'}
            on:click={() => (activeTab = 'stammdaten')}
        >
            Stammdaten
        </button>
        <button
            type="button"
            class="tab"
            class:active={activeTab === 'parameter'}
            on:click={() => (activeTab = 'parameter')}
        >
            Technische Parameter
        </button>
    </div>

    <!-- Tab Content -->
    {#if activeTab === 'stammdaten'}
        <div class="form-sections">
            <section class="form-section">
                <h3>Grunddaten</h3>
                <div class="form-grid">
                    <div class="form-group">
                        <label for="nummer">Raumnummer</label>
                        <input type="number" id="nummer" value={formData.nummer} disabled class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="bezeichnung">Bezeichnung *</label>
                        <input type="text" id="bezeichnung" bind:value={formData.bezeichnung} required class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="nc5_code">NC5 Code</label>
                        <input type="text" id="nc5_code" bind:value={formData.nc5_code} class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="nc5_bezeichnung">NC5 Bezeichnung</label>
                        <input type="text" id="nc5_bezeichnung" bind:value={formData.nc5_bezeichnung} class="form-control" />
                    </div>
                </div>
            </section>

            <section class="form-section">
                <h3>Zuordnungen</h3>
                <div class="form-grid">
                    <div class="form-group">
                        <label for="raumtyp">Raumtyp</label>
                        <select id="raumtyp" bind:value={formData.raumtyp} class="form-control">
                            <option value={undefined}>-- Kein Raumtyp --</option>
                            {#each lookupData.raumtypen as rt}
                                <option value={extractId(rt)}>{rt.code} - {rt.bezeichnung}</option>
                            {/each}
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="teilprojekt">Teilprojekt</label>
                        <select id="teilprojekt" bind:value={formData.teilprojekt} class="form-control">
                            <option value={undefined}>-- Kein Teilprojekt --</option>
                            {#each lookupData.teilprojekte as tp}
                                <option value={extractId(tp)}>{tp.name}</option>
                            {/each}
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="funktionsbereich">Funktionsbereich</label>
                        <select id="funktionsbereich" bind:value={formData.funktionsbereich} class="form-control">
                            <option value={undefined}>-- Kein Funktionsbereich --</option>
                            {#each lookupData.funktionsbereiche as fb}
                                <option value={extractId(fb)}>{fb.name}</option>
                            {/each}
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="verortung">Verortung</label>
                        <select id="verortung" bind:value={formData.verortung} class="form-control">
                            <option value={undefined}>-- Keine Verortung --</option>
                            {#each lookupData.verortungen as v}
                                <option value={extractId(v)}>{v.name}</option>
                            {/each}
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="nutzer">Nutzer</label>
                        <select id="nutzer" bind:value={formData.nutzer} class="form-control">
                            <option value={undefined}>-- Kein Nutzer --</option>
                            {#each lookupData.nutzer as n}
                                <option value={extractId(n)}>
                                    {#if n.ebene === 1}{n.name}{:else}&nbsp;&nbsp;- {n.name}{/if}
                                </option>
                            {/each}
                        </select>
                    </div>
                </div>
            </section>

            <section class="form-section">
                <h3>Flächen & Kapazität</h3>
                <div class="form-grid">
                    <div class="form-group">
                        <label for="flaeche_nuf_1_6">Fläche NUF 1-6 (m²)</label>
                        <input type="number" id="flaeche_nuf_1_6" bind:value={formData.flaeche_nuf_1_6} step="0.01" min="0" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="flaeche_nuf_7_9">Fläche NUF 7-9 (m²)</label>
                        <input type="number" id="flaeche_nuf_7_9" bind:value={formData.flaeche_nuf_7_9} step="0.01" min="0" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="personen_max">Max. Personen</label>
                        <input type="number" id="personen_max" bind:value={formData.personen_max} min="0" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="anzahl_raeume">Anzahl Räume</label>
                        <input type="number" id="anzahl_raeume" bind:value={formData.anzahl_raeume} min="1" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="din277">DIN 277 Klassifikation</label>
                        <input type="text" id="din277" bind:value={formData.din277} class="form-control" />
                    </div>
                </div>
            </section>

            <section class="form-section">
                <h3>Status & Hinweise</h3>
                <div class="form-grid form-grid-wide">
                    <div class="form-group form-group-checkbox">
                        <label>
                            <input type="checkbox" bind:checked={formData.teil_der_beauftragung} />
                            Teil der Beauftragung
                        </label>
                    </div>
                    <div class="form-group form-group-full">
                        <label for="hinweise">Hinweise</label>
                        <textarea id="hinweise" bind:value={formData.hinweise} rows="4" class="form-control"></textarea>
                    </div>
                </div>
            </section>
        </div>
    {:else}
        <div class="form-sections">
            <!-- Grundparameter -->
            <section class="form-section">
                <h3>Grundparameter</h3>
                <div class="form-grid">
                    <div class="form-group">
                        <label for="mindest_flaeche">Mindestfläche (m²)</label>
                        <input type="number" id="mindest_flaeche" bind:value={paramData.mindest_flaeche} step="0.1" min="0" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="mindest_hoehe">Mindesthöhe (m)</label>
                        <input type="number" id="mindest_hoehe" bind:value={paramData.mindest_hoehe} step="0.1" min="0" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="zugang_vorne">Zugang vorne (mm)</label>
                        <input type="number" id="zugang_vorne" bind:value={paramData.zugang_vorne} min="0" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="zugang_hinten">Zugang hinten (mm)</label>
                        <input type="number" id="zugang_hinten" bind:value={paramData.zugang_hinten} min="0" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="zugang_seite">Zugang Seite (mm)</label>
                        <input type="number" id="zugang_seite" bind:value={paramData.zugang_seite} min="0" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="platzierung">Platzierung</label>
                        <select id="platzierung" bind:value={paramData.platzierung} class="form-control">
                            <option value={undefined}>-- Auswählen --</option>
                            <option value="wand">Wand</option>
                            <option value="freistehend">Freistehend</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="service_zugang">Servicezugang</label>
                        <select id="service_zugang" bind:value={paramData.service_zugang} class="form-control">
                            <option value={undefined}>-- Auswählen --</option>
                            <option value="vorne">Vorne</option>
                            <option value="hinten">Hinten</option>
                            <option value="oben">Oben</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="boden_tragfaehigkeit">Bodentragfähigkeit (kg/m²)</label>
                        <input type="number" id="boden_tragfaehigkeit" bind:value={paramData.boden_tragfaehigkeit} min="0" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="vibrationsdaempfung">Vibrationsdämpfung</label>
                        <input type="text" id="vibrationsdaempfung" bind:value={paramData.vibrationsdaempfung} placeholder="Ja / Nein / Stufe" class="form-control" />
                    </div>
                </div>
            </section>

            <!-- Mikroklima -->
            <section class="form-section">
                <h3>Mikroklima</h3>
                <div class="form-grid">
                    <div class="form-group">
                        <label for="temperatur_min">Temperatur Min (°C)</label>
                        <input type="number" id="temperatur_min" bind:value={paramData.temperatur_min} step="0.1" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="temperatur_max">Temperatur Max (°C)</label>
                        <input type="number" id="temperatur_max" bind:value={paramData.temperatur_max} step="0.1" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="temperatur_schwankung">Temp. Schwankung (°C)</label>
                        <input type="number" id="temperatur_schwankung" bind:value={paramData.temperatur_schwankung} step="0.1" min="0" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="luftfeuchtigkeit_min">Luftfeuchtigkeit Min (%)</label>
                        <input type="number" id="luftfeuchtigkeit_min" bind:value={paramData.luftfeuchtigkeit_min} min="0" max="100" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="luftfeuchtigkeit_max">Luftfeuchtigkeit Max (%)</label>
                        <input type="number" id="luftfeuchtigkeit_max" bind:value={paramData.luftfeuchtigkeit_max} min="0" max="100" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="luftfeuchtigkeit_schwankung">Feuchte Schwankung (%)</label>
                        <input type="number" id="luftfeuchtigkeit_schwankung" bind:value={paramData.luftfeuchtigkeit_schwankung} min="0" class="form-control" />
                    </div>
                    <div class="form-group form-group-checkbox">
                        <label>
                            <input type="checkbox" bind:checked={paramData.kondensation_empfindlich} />
                            Kondensationsempfindlich
                        </label>
                    </div>
                </div>
            </section>

            <!-- Luftstrom -->
            <section class="form-section">
                <h3>Luftstrom</h3>
                <div class="form-grid">
                    <div class="form-group">
                        <label for="luftstrom_messeinfluss">Messeinfluss</label>
                        <input type="text" id="luftstrom_messeinfluss" bind:value={paramData.luftstrom_messeinfluss} class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="belueftungsart">Belüftungsart</label>
                        <select id="belueftungsart" bind:value={paramData.belueftungsart} class="form-control">
                            <option value={undefined}>-- Auswählen --</option>
                            <option value="zuluft">Zuluft</option>
                            <option value="abluft">Abluft</option>
                            <option value="ausgeglichen">Ausgeglichen</option>
                        </select>
                    </div>
                    <div class="form-group form-group-checkbox">
                        <label><input type="checkbox" bind:checked={paramData.luftstrom_sensibel} /> Luftstrom sensibel</label>
                    </div>
                    <div class="form-group form-group-checkbox">
                        <label><input type="checkbox" bind:checked={paramData.lokale_abgasanlage} /> Lokale Abgasanlage erforderlich</label>
                    </div>
                    <div class="form-group form-group-checkbox">
                        <label><input type="checkbox" bind:checked={paramData.turbulenzen_vermeiden} /> Turbulenzen vermeiden</label>
                    </div>
                    <div class="form-group form-group-checkbox">
                        <label><input type="checkbox" bind:checked={paramData.rezirkulation_erlaubt} /> Rezirkulation erlaubt</label>
                    </div>
                </div>
            </section>

            <!-- Elektrik -->
            <section class="form-section">
                <h3>Elektrik & Kommunikation</h3>
                <div class="form-grid">
                    <div class="form-group">
                        <label for="leistungsstabilitaet">Leistungsstabilität</label>
                        <select id="leistungsstabilitaet" bind:value={paramData.leistungsstabilitaet} class="form-control">
                            <option value={undefined}>-- Auswählen --</option>
                            <option value="standard">Standard</option>
                            <option value="hoch">Hoch</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="lan_geschwindigkeit">LAN Geschwindigkeit</label>
                        <input type="text" id="lan_geschwindigkeit" bind:value={paramData.lan_geschwindigkeit} placeholder="z.B. 1 Gbit/s" class="form-control" />
                    </div>
                    <div class="form-group form-group-checkbox">
                        <label><input type="checkbox" bind:checked={paramData.ueberspannungsschutz} /> Überspannungsschutz erforderlich</label>
                    </div>
                    <div class="form-group form-group-checkbox">
                        <label><input type="checkbox" bind:checked={paramData.ups_erforderlich} /> USV erforderlich</label>
                    </div>
                </div>
            </section>

            <!-- Umwelt -->
            <section class="form-section">
                <h3>Umwelt</h3>
                <div class="form-grid">
                    <div class="form-group">
                        <label for="vibrations_grad">Zulässiger Vibrationsgrad</label>
                        <input type="text" id="vibrations_grad" bind:value={paramData.vibrations_grad} class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="akustik_einschraenkungen">Akustische Einschränkungen</label>
                        <input type="text" id="akustik_einschraenkungen" bind:value={paramData.akustik_einschraenkungen} class="form-control" />
                    </div>
                    <div class="form-group form-group-checkbox">
                        <label><input type="checkbox" bind:checked={paramData.em_sensibel} /> EM-sensibel</label>
                    </div>
                    <div class="form-group form-group-checkbox">
                        <label><input type="checkbox" bind:checked={paramData.staub_kritisch} /> Staub/Aerosole kritisch</label>
                    </div>
                    <div class="form-group form-group-checkbox">
                        <label><input type="checkbox" bind:checked={paramData.chemische_daempfe_erlaubt} /> Chemische Dämpfe erlaubt</label>
                    </div>
                </div>
            </section>

            <!-- Sicherheit -->
            <section class="form-section">
                <h3>Sicherheit & Zugang</h3>
                <div class="form-grid">
                    <div class="form-group">
                        <label for="personal_qualifikation">Personalqualifikation</label>
                        <input type="text" id="personal_qualifikation" bind:value={paramData.personal_qualifikation} class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="psa_anforderungen">PSA-Anforderungen</label>
                        <input type="text" id="psa_anforderungen" bind:value={paramData.psa_anforderungen} class="form-control" />
                    </div>
                    <div class="form-group form-group-checkbox">
                        <label><input type="checkbox" bind:checked={paramData.zugang_beschraenkt} /> Zugang beschränkt</label>
                    </div>
                    <div class="form-group form-group-checkbox">
                        <label><input type="checkbox" bind:checked={paramData.verriegelung_erforderlich} /> Verriegelung erforderlich</label>
                    </div>
                    <div class="form-group form-group-checkbox">
                        <label><input type="checkbox" bind:checked={paramData.notabschaltung_erforderlich} /> Notabschaltung erforderlich</label>
                    </div>
                    <div class="form-group form-group-checkbox">
                        <label><input type="checkbox" bind:checked={paramData.service_sperre_erforderlich} /> Service-Sperre erforderlich</label>
                    </div>
                </div>
            </section>

            <!-- Wartung -->
            <section class="form-section">
                <h3>Wartung & Service</h3>
                <div class="form-grid">
                    <div class="form-group">
                        <label for="ausfallzeit_toleranz">Ausfallzeittoleranz</label>
                        <input type="text" id="ausfallzeit_toleranz" bind:value={paramData.ausfallzeit_toleranz} class="form-control" />
                    </div>
                    <div class="form-group form-group-checkbox">
                        <label><input type="checkbox" bind:checked={paramData.servicewerkzeug_platz} /> Platz für Servicewerkzeuge</label>
                    </div>
                    <div class="form-group form-group-checkbox">
                        <label><input type="checkbox" bind:checked={paramData.ersatzteil_zugang} /> Ersatzteilzugang erforderlich</label>
                    </div>
                    <div class="form-group form-group-checkbox">
                        <label><input type="checkbox" bind:checked={paramData.dekontamination_erforderlich} /> Dekontamination erforderlich</label>
                    </div>
                    <div class="form-group form-group-checkbox">
                        <label><input type="checkbox" bind:checked={paramData.externe_dienste_erforderlich} /> Externe Dienste erforderlich</label>
                    </div>
                    <div class="form-group form-group-checkbox">
                        <label><input type="checkbox" bind:checked={paramData.service_anderer_raum} /> Service aus anderem Raum</label>
                    </div>
                </div>
            </section>
        </div>
    {/if}
</form>

<style>
    :global(html) {
        scroll-behavior: smooth;
    }

    .room-editor {
        width: 100%;
        max-width: 100%;
        margin: 0 auto;
        padding: 1rem;
        box-sizing: border-box;
    }

    .editor-header {
        display: flex;
        justify-content: space-between;
        align-items: flex-start;
        gap: 1rem;
        margin-bottom: 1.5rem;
        padding-bottom: 1rem;
        border-bottom: 1px solid #e1e4e8;
        flex-wrap: wrap;
    }

    .editor-header h2 {
        margin: 0;
        font-size: clamp(1.25rem, 4vw, 1.75rem);
        color: #24292e;
        flex: 1;
        min-width: 200px;
    }

    .editor-actions {
        display: flex;
        gap: 0.5rem;
        flex-wrap: wrap;
        min-width: 200px;
    }

    .tabs {
        display: flex;
        gap: 0;
        margin-bottom: 1.5rem;
        border-bottom: 2px solid #e1e4e8;
        overflow-x: auto;
        -webkit-overflow-scrolling: touch;
        scroll-behavior: smooth;
    }

    .tabs::-webkit-scrollbar {
        height: 4px;
    }

    .tabs::-webkit-scrollbar-track {
        background: #f6f8fa;
    }

    .tabs::-webkit-scrollbar-thumb {
        background: #d1d5da;
        border-radius: 2px;
    }

    .tab {
        padding: 0.75rem 1rem;
        background: none;
        border: none;
        font-size: clamp(0.8rem, 2vw, 0.95rem);
        font-weight: 500;
        color: #586069;
        cursor: pointer;
        position: relative;
        transition: color 0.2s;
        white-space: nowrap;
        flex-shrink: 0;
    }

    .tab:active {
        color: #24292e;
    }

    .tab.active {
        color: #0078d4;
    }

    .tab.active::after {
        content: '';
        position: absolute;
        bottom: -2px;
        left: 0;
        right: 0;
        height: 2px;
        background-color: #0078d4;
    }

    .btn {
        padding: clamp(0.5rem, 2vw, 0.625rem) clamp(0.75rem, 3vw, 1.25rem);
        border-radius: 4px;
        font-weight: 500;
        font-size: clamp(0.8rem, 2vw, 0.9rem);
        cursor: pointer;
        transition: all 0.2s;
        border: none;
        min-height: 44px;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .btn:active {
        transform: scale(0.98);
    }

    .btn:disabled {
        opacity: 0.6;
        cursor: not-allowed;
    }

    .btn-primary {
        background-color: #0078d4;
        color: white;
    }

    .btn-primary:hover:not(:disabled) {
        background-color: #006cbe;
    }

    .btn-primary:active:not(:disabled) {
        background-color: #005a9e;
    }

    .btn-secondary {
        background-color: white;
        color: #24292e;
        border: 1px solid #e1e4e8;
    }

    .btn-secondary:hover:not(:disabled) {
        background-color: #f6f8fa;
    }

    .btn-secondary:active:not(:disabled) {
        background-color: #e1e4e8;
    }

    .error-banner {
        background-color: #ffeef0;
        border: 1px solid #f97583;
        color: #cb2431;
        padding: 1rem;
        border-radius: 4px;
        margin-bottom: 1.5rem;
        word-break: break-word;
    }

    .form-sections {
        display: flex;
        flex-direction: column;
        gap: 1.5rem;
    }

    .form-section {
        background-color: #f6f8fa;
        padding: 1rem;
        border-radius: 8px;
    }

    .form-section h3 {
        margin: 0 0 1rem 0;
        font-size: clamp(0.95rem, 3vw, 1.1rem);
        color: #24292e;
    }

    .form-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
        gap: 1rem;
    }

    .form-grid-wide {
        grid-template-columns: 1fr;
    }

    .form-group {
        display: flex;
        flex-direction: column;
        gap: 0.375rem;
        min-width: 0;
    }

    .form-group-full {
        grid-column: 1 / -1;
    }

    .form-group-checkbox {
        flex-direction: row;
        align-items: center;
        gap: 0.5rem;
    }

    .form-group-checkbox input {
        min-width: 18px;
        min-height: 18px;
        cursor: pointer;
    }

    .form-group-checkbox label {
        display: flex;
        align-items: center;
        gap: 0.5rem;
        cursor: pointer;
        font-weight: 400;
    }

    .form-group label {
        font-size: clamp(0.8rem, 2vw, 0.9rem);
        font-weight: 500;
        color: #24292e;
        display: block;
        word-break: break-word;
    }

    .form-control {
        padding: 0.625rem 0.875rem;
        border: 1px solid #d1d5da;
        border-radius: 4px;
        font-size: 16px;
        background-color: white;
        width: 100%;
        box-sizing: border-box;
        -webkit-appearance: none;
        appearance: none;
        min-height: 44px;
    }

    .form-control:focus {
        outline: none;
        border-color: #0078d4;
        box-shadow: 0 0 0 3px rgba(0, 120, 212, 0.15);
    }

    .form-control:disabled {
        background-color: #f6f8fa;
        color: #586069;
        cursor: not-allowed;
    }

    select.form-control {
        cursor: pointer;
        background-image: url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' fill='none' stroke='%23586069' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'%3e%3cpolyline points='6 9 12 15 18 9'%3e%3c/polyline%3e%3c/svg%3e");
        background-repeat: no-repeat;
        background-position: right 0.75rem center;
        background-size: 1.5em 1.5em;
        padding-right: 2.5rem;
    }

    textarea.form-control {
        resize: vertical;
        min-height: 100px;
        font-family: inherit;
    }

    /* Prevent zoom on iOS when input is focused */
    @media (max-width: 768px) {
        .form-control {
            font-size: 16px;
        }
    }

    /* Extra large desktop: 1600px+ */
    @media (min-width: 1600px) {
        .room-editor {
            max-width: 1400px;
            padding: 2.5rem;
        }

        .form-section {
            padding: 2rem;
        }

        .form-grid {
            gap: 1.5rem;
        }

        .form-sections {
            gap: 2rem;
        }

        .editor-header h2 {
            font-size: 2rem;
        }
    }

    /* Large desktop: 1400px - 1600px */
    @media (min-width: 1400px) and (max-width: 1600px) {
        .room-editor {
            max-width: 1200px;
            padding: 2rem;
        }

        .form-section {
            padding: 1.75rem;
        }

        .form-grid {
            grid-template-columns: repeat(3, 1fr);
            gap: 1.5rem;
        }
    }

    /* Medium desktop: 1200px - 1400px */
    @media (min-width: 1200px) and (max-width: 1400px) {
        .room-editor {
            max-width: 1100px;
            padding: 1.75rem;
        }

        .form-grid {
            grid-template-columns: repeat(2, 1fr);
            gap: 1.25rem;
        }
    }

    /* Small desktop: 1024px - 1200px */
    @media (min-width: 1024px) and (max-width: 1200px) {
        .room-editor {
            max-width: 100%;
            padding: 1.5rem;
        }

        .form-grid {
            grid-template-columns: repeat(2, 1fr);
            gap: 1.25rem;
        }
    }

    /* Landscape tablet: 768px - 1024px */
    @media (min-width: 768px) and (max-width: 1024px) {
        .room-editor {
            padding: 1.25rem;
        }

        .form-section {
            padding: 1.25rem;
        }

        .form-grid {
            grid-template-columns: repeat(2, 1fr);
            gap: 1rem;
        }

        .editor-header {
            flex-direction: column;
            align-items: stretch;
        }

        .editor-actions {
            width: 100%;
        }

        .btn {
            flex: 1;
        }
    }

    /* Portrait tablet: 600px - 768px */
    @media (min-width: 600px) and (max-width: 768px) {
        .room-editor {
            padding: 1rem;
        }

        .form-section {
            padding: 1rem;
        }

        .form-grid {
            grid-template-columns: 1fr;
            gap: 1rem;
        }

        .editor-header {
            flex-direction: column;
            align-items: stretch;
        }

        .editor-actions {
            width: 100%;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 0.75rem;
        }

        .editor-header h2 {
            width: 100%;
        }

        .tab {
            padding: 0.75rem 0.75rem;
        }
    }

    /* Large mobile: 480px - 600px */
    @media (max-width: 600px) {
        .room-editor {
            padding: 0.75rem;
        }

        .form-section {
            padding: 0.75rem;
            border-radius: 6px;
        }

        .form-grid {
            grid-template-columns: 1fr;
            gap: 0.75rem;
        }

        .editor-header {
            flex-direction: column;
            align-items: stretch;
            gap: 0.75rem;
        }

        .editor-actions {
            width: 100%;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 0.5rem;
        }

        .editor-header h2 {
            font-size: 1.25rem;
            width: 100%;
        }

        .form-section h3 {
            font-size: 1rem;
            margin-bottom: 0.75rem;
        }

        .form-group label {
            font-size: 0.85rem;
        }

        .tab {
            padding: 0.625rem 0.5rem;
            font-size: 0.8rem;
        }

        .tabs {
            margin-bottom: 1rem;
        }
    }

    /* Small mobile: < 480px */
    @media (max-width: 480px) {
        .room-editor {
            padding: 0.5rem;
        }

        .editor-header {
            flex-direction: column;
            align-items: stretch;
            gap: 0.5rem;
            margin-bottom: 1rem;
        }

        .editor-actions {
            width: 100%;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 0.5rem;
        }

        .editor-header h2 {
            font-size: 1.1rem;
            margin: 0;
        }

        .form-section {
            padding: 0.625rem;
            border-radius: 4px;
        }

        .form-section h3 {
            font-size: 0.95rem;
            margin-bottom: 0.625rem;
        }

        .form-grid {
            gap: 0.625rem;
        }

        .form-group label {
            font-size: 0.8rem;
        }

        .btn {
            padding: 0.5rem 0.75rem;
            font-size: 0.75rem;
            min-height: 40px;
        }

        .form-control {
            padding: 0.5rem 0.625rem;
            font-size: 16px;
            min-height: 40px;
        }

        .tab {
            padding: 0.5rem 0.375rem;
            font-size: 0.75rem;
        }

        .error-banner {
            padding: 0.75rem;
            font-size: 0.85rem;
        }
    }

    /* Touch device optimizations */
    @media (hover: none) and (pointer: coarse) {
        .btn {
            min-height: 48px;
        }

        .form-control {
            min-height: 48px;
        }

        .tab {
            padding: 1rem 1.25rem;
        }

        .btn:active:not(:disabled) {
            opacity: 0.8;
        }

        .btn:hover:not(:disabled) {
            opacity: 1;
        }
    }
</style>
