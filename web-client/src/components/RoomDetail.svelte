<script>
  import { onMount, createEventDispatcher } from "svelte";
  import { db } from "../lib/surreal";
  import CategoryEditor from "./CategoryEditor.svelte";
  import StatusSelect from "./StatusSelect.svelte";
  import MarkdownEditor from "./MarkdownEditor.svelte";

  export let id;
  const dispatch = createEventDispatcher();

  let room = null;
  let originalRoom = null; // To track changes
  let loading = true;
  let saving = false;
  // Hardcoded configuration for boolean fields
  // Add values here in the format: "categories.categoryName.parameterName"
  const BOOLEAN_FIELDS = ["categories.moebel.schrank"];

  // Populate fieldTypes map for the editors
  // Value "bool" triggers the dropdown logic in CategoryEditor
  const fieldTypes = BOOLEAN_FIELDS.reduce((acc, field) => {
    acc[field] = "bool";
    return acc;
  }, {});

  // Simple deep comparison to check for changes
  $: isDirty =
    room && originalRoom ? JSON.stringify(room) !== originalRoom : false;

  // Browser navigation guard
  function handleBeforeUnload(event) {
    if (isDirty) {
      event.preventDefault();
      event.returnValue = ""; // Standard for Chrome/modern browsers
      return "";
    }
  }

  onMount(() => {
    window.addEventListener("beforeunload", handleBeforeUnload);

    (async () => {
      try {
        const result = await db.query(
          `SELECT *, 
          ->hat_teilprojekt->teilprojekt.name AS teilprojekt, 
          ->hat_nutzer_ebene_1->nutzer_ebene_1.name AS nutzer_ebene_1, 
          ->hat_nutzer_ebene_2->nutzer_ebene_2.name AS nutzer_ebene_2, 
          ->hat_funktions_bereich->funktions_bereich.name AS funktions_bereich 
          FROM $id`,
          { id },
        );
        const r = Array.isArray(result) ? result[0] : result;
        const records = Array.isArray(r) ? r : r && r.result ? r.result : [];
        room = records[0] || null;

        if (room) {
          if (!room.categories) room.categories = {};
          if (!room.description) room.description = "";

          // Store initial state as string for easy comparison
          originalRoom = JSON.stringify(room);
        }
      } catch (e) {
        console.error(e);
        alert("Fehler: " + e.message);
      } finally {
        loading = false;
      }
    })();

    return () => {
      window.removeEventListener("beforeunload", handleBeforeUnload);
    };
  });

  async function save() {
    saving = true;
    try {
      const roomToSave = { ...room };
      delete roomToSave.teilprojekt;
      delete roomToSave.nutzer_ebene_1;
      delete roomToSave.nutzer_ebene_2;
      delete roomToSave.funktions_bereich;

      await db.update(id, roomToSave);
      // Update original state after successful save
      originalRoom = JSON.stringify(room);
      alert("Erfolgreich gespeichert!");
    } catch (e) {
      console.error(e);
      alert("Fehler beim Speichern: " + e.message);
    } finally {
      saving = false;
    }
  }

  function goBack() {
    if (isDirty) {
      if (
        !confirm(
          "Es gibt ungespeicherte Änderungen. Möchten Sie die Seite wirklich verlassen?",
        )
      ) {
        return;
      }
    }
    dispatch("back");
  }
</script>

{#if loading}
  <div class="loading-container">
    <div class="spinner"></div>
    <p>Lade Details...</p>
  </div>
{:else if room}
  <div class="detail-container">
    <div class="top-actions">
      <button class="btn-secondary" on:click={goBack}> ← Zurück </button>
      <button class="btn-primary" on:click={save} disabled={saving}>
        {saving ? "Speichert..." : "Speichern"}
      </button>
    </div>

    <div class="room-header glass-panel">
      <h1>{room.nc_bezeichnung}</h1>
      <p class="code">Code: {room.nc_code_7_stellig}</p>
    </div>

    <div class="section glass-panel" style="position: relative; z-index: 10;">
      <h3>Stammdaten</h3>
      <div class="input-grid">
        <div class="input-field">
          <label for="room-name">Raumbezeichnung</label>
          <input id="room-name" bind:value={room.raum_bezeichnung} />
        </div>
        <div class="input-field">
          <label for="room-type">Raumtyp</label>
          <input id="room-type" bind:value={room.raumtyp} />
        </div>
        <div class="input-field">
          <label for="room-count">Anzahl Räume</label>
          <input
            id="room-count"
            type="number"
            bind:value={room.anzahl_räume_summe}
          />
        </div>
        <div class="input-field">
          <label for="status-select">Status</label>
          <!-- Using a wrapper div to avoid A11y label issues since custom component handles its own ID internally or via prop -->
          <StatusSelect bind:value={room.info.status} />
        </div>
        <div class="input-field">
          <label for="teilprojekt">Teilprojekt</label>
          <input
            id="teilprojekt"
            value={room.teilprojekt?.[0] || ""}
            readonly
            disabled
          />
        </div>
        <div class="input-field">
          <label for="nutzer1">Nutzer Ebene 1</label>
          <input
            id="nutzer1"
            value={room.nutzer_ebene_1?.[0] || ""}
            readonly
            disabled
          />
        </div>
        <div class="input-field">
          <label for="nutzer2">Nutzer Ebene 2</label>
          <input
            id="nutzer2"
            value={room.nutzer_ebene_2?.[0] || ""}
            readonly
            disabled
          />
        </div>
        <div class="input-field">
          <label for="funktionsbereich">Funktionsbereich</label>
          <input
            id="funktionsbereich"
            value={room.funktions_bereich?.[0] || ""}
            readonly
            disabled
          />
        </div>
      </div>
    </div>
    <div class="section glass-panel">
      <h3>Beschreibung</h3>
      <MarkdownEditor bind:value={room.description} />
    </div>

    <div class="categories-section">
      <h3>Kategorien</h3>
      <div class="categories-grid">
        {#each Object.keys(room.categories) as catName}
          {#if catName !== "info"}
            <CategoryEditor
              bind:categoryData={room.categories[catName]}
              title={catName}
              currentRoomId={id}
              categoryName={catName}
              {fieldTypes}
            />
          {/if}
        {/each}
      </div>
    </div>
  </div>
{:else}
  <div class="error-container glass-panel">
    <p>Raum nicht gefunden.</p>
    <button class="btn-secondary" on:click={goBack}>Zurück</button>
  </div>
{/if}

<style>
  .loading-container {
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 4rem;
    gap: 1rem;
  }

  .spinner {
    width: 40px;
    height: 40px;
    border: 3px solid rgba(255, 255, 255, 0.3);
    border-radius: 50%;
    border-top-color: var(--primary);
    animation: spin 1s ease-in-out infinite;
  }

  @keyframes spin {
    to {
      transform: rotate(360deg);
    }
  }

  .detail-container {
    display: flex;
    flex-direction: column;
    gap: 1.5rem;
  }

  .top-actions {
    display: flex;
    justify-content: space-between;
    align-items: center;
  }

  .room-header {
    padding: 2rem;
  }

  .room-header h1 {
    margin: 0;
    font-size: 2rem;
    font-weight: 700;
    background: linear-gradient(to right, var(--primary), var(--secondary));
    -webkit-background-clip: text;
    background-clip: text;
    color: transparent;
  }

  .code {
    margin: 0.5rem 0 0 0;
    color: var(--text-muted);
    font-family: "Courier New", monospace;
  }

  .section {
    padding: 2rem;
  }

  h3 {
    margin: 0 0 1.5rem 0;
    font-size: 1.25rem;
    font-weight: 600;
    color: var(--text-primary);
  }

  .input-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
    gap: 1.25rem;
  }

  .input-field {
    display: flex;
    flex-direction: column;
    gap: 0.5rem;
  }

  .input-field label {
    font-size: 0.875rem;
    font-weight: 500;
    color: var(--text-secondary);
    text-transform: uppercase;
    letter-spacing: 0.05em;
    transition: color 0.2s ease;
  }

  .input-field input {
    padding: 0.75rem 1rem;
    background: rgba(255, 255, 255, 0.05);
    border: 1px solid var(--glass-border);
    border-radius: var(--radius-md);
    color: var(--text-primary);
    font-family: inherit;
    transition: all 0.2s ease;
  }

  .input-field input:focus {
    outline: none;
    border-color: var(--primary);
    background: rgba(255, 255, 255, 0.1);
    box-shadow: 0 0 0 3px rgba(168, 85, 247, 0.2);
  }

  .input-field:focus-within label {
    color: var(--primary);
  }

  .categories-section {
    margin-top: 1rem;
  }

  .categories-section h3 {
    margin-bottom: 1rem;
  }

  .categories-grid {
    display: flex;
    flex-direction: column;
    gap: 1.5rem;
  }

  .error-container {
    padding: 2rem;
    text-align: center;
  }
</style>
