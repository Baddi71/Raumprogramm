<script>
  import { onMount, createEventDispatcher } from "svelte";
  import { db } from "../lib/surreal";
  import CategoryEditor from "./CategoryEditor.svelte";

  export let id;
  const dispatch = createEventDispatcher();

  let room = null;
  let loading = true;
  let saving = false;

  onMount(async () => {
    try {
      const result = await db.select(id);
      room = Array.isArray(result) ? result[0] : result;

      if (!room.categories) room.categories = {};
    } catch (e) {
      console.error(e);
      alert("Fehler: " + e.message);
    } finally {
      loading = false;
    }
  });

  async function save() {
    saving = true;
    try {
      await db.update(id, room);
      alert("Erfolgreich gespeichert!");
    } catch (e) {
      console.error(e);
      alert("Fehler beim Speichern: " + e.message);
    } finally {
      saving = false;
    }
  }

  function goBack() {
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

    <div class="section glass-panel">
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
          <label for="room-status">Status</label>
          <select id="room-status" bind:value={room.categories.info.status}>
            <option value="pending">Nicht begonnen</option>
            <option value="in_progress">In Bearbeitung</option>
            <option value="completed">Abgeschlossen</option>
          </select>
        </div>
      </div>
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
  }

  .input-field input,
  .input-field select {
    padding: 0.75rem 1rem;
    background: rgba(255, 255, 255, 0.05);
    border: 1px solid var(--glass-border);
    border-radius: var(--radius-md);
    color: var(--text-primary);
    font-family: inherit;
    transition: all 0.2s ease;
  }

  .input-field select option {
    background: var(--bg-core);
    color: var(--text-primary);
  }

  .input-field input:focus,
  .input-field select:focus {
    outline: none;
    border-color: var(--primary);
    background: rgba(255, 255, 255, 0.08);
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
