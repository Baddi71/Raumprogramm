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
              <td class="code" data-label="NC Code"
                >{room.nc_code_7_stellig || room.id}</td
              >
              <td class="name" data-label="Bezeichnung"
                >{room.nc_bezeichnung}</td
              >
              <td data-label="Raumtyp">{room.raumtyp}</td>
              <td data-label="Status">
                <span
                  class="status-badge {getStatusClass(
                    room.categories?.info?.status,
                  )}"
                >
                  {getStatusLabel(room.categories?.info?.status)}
                </span>
              </td>
              <td data-label="Aktion">
                <button
                  class="btn-icon"
                  on:click={() => selectRoom(room.id)}
                  title="Bearbeiten"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="18"
                    height="18"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    stroke-width="2"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                  >
                    <path
                      d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"
                    ></path>
                    <path
                      d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"
                    ></path>
                  </svg>
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
    color: var(--text-muted);
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

  .btn-icon {
    background: transparent;
    color: var(--text-muted);
    padding: 0.5rem;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: var(--radius-md);
    transition: all 0.2s ease;
  }

  .btn-icon:hover {
    background: rgba(255, 255, 255, 0.1);
    color: var(--primary);
    transform: translateY(-1px);
  }

  @media (max-width: 768px) {
    thead {
      display: none;
    }

    table,
    tbody,
    tr,
    td {
      display: block;
      width: 100%;
    }

    tr {
      margin-bottom: 1rem;
      background: rgba(255, 255, 255, 0.05);
      border-radius: var(--radius-md);
      overflow: hidden;
      border: 1px solid var(--glass-border);
    }

    tbody tr:hover {
      background: rgba(255, 255, 255, 0.08);
    }

    td {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 0.75rem 1rem;
      border-bottom: 1px solid rgba(255, 255, 255, 0.05);
      text-align: right;
    }

    td::before {
      content: attr(data-label);
      font-weight: 600;
      color: var(--text-muted);
      font-size: 0.8rem;
      text-transform: uppercase;
      margin-right: 1rem;
    }

    td:last-child {
      border-bottom: none;
      justify-content: flex-end;
    }

    td:last-child::before {
      display: none;
    }
  }
</style>
