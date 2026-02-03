<script>
  import { onMount, createEventDispatcher } from "svelte";
  import { db } from "../lib/surreal";

  const dispatch = createEventDispatcher();
  let rooms = [];
  let loading = true;

  onMount(async () => {
    try {
      const result = await db.select("raumtypen");
      rooms = result;
    } catch (e) {
      console.error(e);
      alert("Fehler beim Laden der Daten: " + e.message);
    } finally {
      loading = false;
    }
  });

  function selectRoom(id) {
    dispatch("select", id);
  }

  function getStatusLabel(status) {
    switch (status) {
      case "in_progress":
        return "In Bearbeitung";
      case "completed":
        return "Abgeschlossen";
      default:
        return "Nicht begonnen";
    }
  }

  function getStatusClass(status) {
    switch (status) {
      case "in_progress":
        return "status-progress";
      case "completed":
        return "status-completed";
      default:
        return "status-pending";
    }
  }
</script>

{#if loading}
  <div class="loading-container">
    <div class="spinner"></div>
    <p>Lade Raumtypen...</p>
  </div>
{:else}
  <div class="room-list-container">
    <div class="header-section">
      <h2>Raumtypen</h2>
      <p class="subtitle">{rooms.length} Räume gefunden</p>
    </div>

    <div class="table-wrapper glass-panel">
      <table>
        <thead>
          <tr>
            <th>NC Code</th>
            <th>Bezeichnung</th>
            <th>Raumtyp</th>
            <th>Status</th>
            <th>Aktion</th>
          </tr>
        </thead>
        <tbody>
          {#each rooms as room}
            <tr>
              <td class="code">{room.nc_code_7_stellig || room.id}</td>
              <td class="name">{room.nc_bezeichnung}</td>
              <td>{room.raumtyp}</td>
              <td>
                <span
                  class="status-badge {getStatusClass(
                    room.categories?.info?.status,
                  )}"
                >
                  {getStatusLabel(room.categories?.info?.status)}
                </span>
              </td>
              <td>
                <button
                  class="btn-secondary"
                  on:click={() => selectRoom(room.id)}
                >
                  Bearbeiten
                </button>
              </td>
            </tr>
          {/each}
        </tbody>
      </table>
    </div>
  </div>
{/if}

<style>
  .loading-container {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
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

  .room-list-container {
    display: flex;
    flex-direction: column;
    gap: 1.5rem;
  }

  .header-section {
    margin-bottom: 0.5rem;
  }

  h2 {
    font-size: 2rem;
    font-weight: 700;
    margin: 0;
    background: linear-gradient(to right, var(--primary), var(--secondary));
    -webkit-background-clip: text;
    background-clip: text;
    color: transparent;
  }

  .subtitle {
    color: var(--text-muted);
    margin: 0.5rem 0 0 0;
    font-size: 0.9rem;
  }

  .table-wrapper {
    overflow: hidden;
    padding: 0;
  }

  table {
    width: 100%;
    border-collapse: separate;
    border-spacing: 0;
  }

  thead {
    background: rgba(255, 255, 255, 0.03);
    position: sticky;
    top: 0;
    z-index: 10;
  }

  th {
    text-align: left;
    padding: 1rem 1.5rem;
    font-weight: 600;
    font-size: 0.875rem;
    text-transform: uppercase;
    letter-spacing: 0.05em;
    color: var(--text-secondary);
    border-bottom: 1px solid var(--glass-border);
  }

  td {
    padding: 1rem 1.5rem;
    border-bottom: 1px solid rgba(255, 255, 255, 0.05);
    color: var(--text-primary);
  }

  tbody tr {
    transition: background 0.2s ease;
  }

  tbody tr:hover {
    background: rgba(255, 255, 255, 0.03);
  }

  tbody tr:last-child td {
    border-bottom: none;
  }

  .code {
    font-family: "Courier New", monospace;
    color: var(--primary);
    font-weight: 500;
  }

  .name {
    font-weight: 500;
  }

  .status-badge {
    display: inline-block;
    padding: 0.25rem 0.75rem;
    border-radius: 999px;
    font-size: 0.75rem;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 0.05em;
  }

  .status-pending {
    background: rgba(148, 163, 184, 0.2);
    color: #cbd5e1;
    border: 1px solid rgba(148, 163, 184, 0.3);
  }

  .status-progress {
    background: rgba(59, 130, 246, 0.2);
    color: #60a5fa;
    border: 1px solid rgba(59, 130, 246, 0.3);
  }

  .status-completed {
    background: rgba(16, 185, 129, 0.2);
    color: #34d399;
    border: 1px solid rgba(16, 185, 129, 0.3);
  }
</style>
