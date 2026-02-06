<script lang="ts">
  import { onMount, createEventDispatcher } from "svelte";
  import { db } from "../lib/surreal";

  const dispatch = createEventDispatcher();
  let rooms: any[] = [];
  let loading = true;
  let debugInfo: any = null;

  onMount(async () => {
    try {
      const result = await db.query(
        "SELECT *, ->hat_teilprojekt->teilprojekt.name AS teilprojekt FROM raumtypen ORDER BY nc_code_7_stellig ASC",
      );
      debugInfo = result[0];
      // Robust check
      // Direct assignment with fallback
      const r = Array.isArray(result) ? result[0] : result;

      if (Array.isArray(r)) {
        rooms = r;
      } else if (r && r.result) {
        rooms = r.result;
      } else {
        rooms = [];
      }

      console.log("Rooms assigned:", r);
    } catch (e: any) {
      console.error(e);
      debugInfo = { error: e.message };
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

  // Filtering and Sorting
  let searchQuery = "";
  let sortField = "nc_code_7_stellig";
  let sortDirection = "asc";

  $: filteredRooms = rooms
    .filter((room) => {
      if (!searchQuery) return true;
      const query = searchQuery.toLowerCase();
      return (
        (room.nc_code_7_stellig || "").toLowerCase().includes(query) ||
        (room.nc_bezeichnung || "").toLowerCase().includes(query) ||
        (room.raumtyp || "").toLowerCase().includes(query) ||
        (Array.isArray(room.teilprojekt)
          ? room.teilprojekt[0] || ""
          : room.teilprojekt || ""
        )
          .toLowerCase()
          .includes(query)
      );
    })
    .sort((a, b) => {
      let fieldA = a[sortField];
      let fieldB = b[sortField];

      // Handle nested properties if needed, e.g. status
      if (sortField === "status") {
        fieldA = a.categories?.info?.status || "";
        fieldB = b.categories?.info?.status || "";
      }

      if (!fieldA) fieldA = "";
      if (!fieldB) fieldB = "";

      if (fieldA < fieldB) return sortDirection === "asc" ? -1 : 1;
      if (fieldA > fieldB) return sortDirection === "asc" ? 1 : -1;
      return 0;
    });

  function handleSort(field) {
    if (sortField === field) {
      sortDirection = sortDirection === "asc" ? "desc" : "asc";
    } else {
      sortField = field;
      sortDirection = "asc";
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
      <div class="title-row">
        <h2>Raumtypen</h2>
        <p class="subtitle">{filteredRooms.length} Räume gefunden</p>
      </div>
      <div class="search-sort-controls">
        <div class="search-box">
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
            <circle cx="11" cy="11" r="8"></circle>
            <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
          </svg>
          <input type="text" placeholder="Suchen..." bind:value={searchQuery} />
        </div>
      </div>
    </div>

    <div class="table-wrapper glass-panel">
      <table>
        <thead>
          <tr>
            <th
              class="sortable"
              on:click={() => handleSort("nc_code_7_stellig")}
            >
              NC Code
              {#if sortField === "nc_code_7_stellig"}
                <span class="sort-icon"
                  >{sortDirection === "asc" ? "↑" : "↓"}</span
                >
              {/if}
            </th>
            <th class="sortable" on:click={() => handleSort("nc_bezeichnung")}>
              Bezeichnung
              {#if sortField === "nc_bezeichnung"}
                <span class="sort-icon"
                  >{sortDirection === "asc" ? "↑" : "↓"}</span
                >
              {/if}
            </th>
            <th class="sortable" on:click={() => handleSort("teilprojekt")}>
              Teilprojekt
              {#if sortField === "teilprojekt"}
                <span class="sort-icon"
                  >{sortDirection === "asc" ? "↑" : "↓"}</span
                >
              {/if}
            </th>
            <th class="sortable" on:click={() => handleSort("raumtyp")}>
              Raumtyp
              {#if sortField === "raumtyp"}
                <span class="sort-icon"
                  >{sortDirection === "asc" ? "↑" : "↓"}</span
                >
              {/if}
            </th>
            <th class="sortable" on:click={() => handleSort("status")}>
              Status
              {#if sortField === "status"}
                <span class="sort-icon"
                  >{sortDirection === "asc" ? "↑" : "↓"}</span
                >
              {/if}
            </th>
            <th>Aktion</th>
          </tr>
        </thead>
        <tbody>
          {#each filteredRooms as room (room.id)}
            <tr>
              <td class="code" data-label="NC Code"
                >{room.nc_code_7_stellig || room.id}</td
              >
              <td class="name" data-label="Bezeichnung"
                >{room.nc_bezeichnung}</td
              >
              <td data-label="Teilprojekt"
                >{Array.isArray(room.teilprojekt)
                  ? room.teilprojekt[0] || "-"
                  : room.teilprojekt || "-"}</td
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
    display: flex;
    justify-content: space-between;
    align-items: flex-end;
    gap: 1rem;
    flex-wrap: wrap;
  }

  .title-row {
    flex: 1;
  }

  .search-box {
    position: relative;
    width: 250px;
  }

  .search-box svg {
    position: absolute;
    left: 10px;
    top: 50%;
    transform: translateY(-50%);
    color: var(--text-muted);
    pointer-events: none;
  }

  .search-box input {
    width: 100%;
    padding: 0.5rem 0.5rem 0.5rem 2.25rem;
    border-radius: var(--radius-md);
    border: 1px solid var(--glass-border);
    background: rgba(255, 255, 255, 0.05);
    color: var(--text-primary);
    outline: none;
    transition: all 0.2s ease;
  }

  .search-box input:focus {
    border-color: var(--primary);
    background: rgba(255, 255, 255, 0.1);
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
    user-select: none;
  }

  th.sortable {
    cursor: pointer;
    transition: color 0.2s;
  }

  th.sortable:hover {
    color: var(--primary);
    background: rgba(255, 255, 255, 0.02);
  }

  .sort-icon {
    display: inline-block;
    margin-left: 0.5rem;
    color: var(--primary);
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
