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
        "SELECT *, ->hat_teilprojekt->teilprojekt.name AS teilprojekt, ->hat_nutzer_ebene_1->nutzer_ebene_1.name AS nutzer, ->hat_funktions_bereich->funktions_bereich.name AS funktionsbereich FROM raumtypen ORDER BY nc_code_7_stellig ASC",
      );
      debugInfo = result[0];
      // Robust check
      // Direct assignment with fallback
      const r = Array.isArray(result) ? result[0] : result;

      if (Array.isArray(r)) {
        rooms = r;
      } else if (r && (r as any).result) {
        rooms = (r as any).result;
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
  let filterTeilprojekt = "";
  let filterRaumtyp = "";
  let filterNutzer = "";

  let sortField = "nc_code_7_stellig";
  let sortDirection = "asc";

  // Column functions
  let showColumnDropdown = false;
  let columns = [
    // {
    //   id: "nc_code_7_stellig",
    //   label: "NC Code",
    //   visible: true,
    //   mandatory: true,
    // },
    // {
    //   id: "nc_bezeichnung",
    //   label: "Bezeichnung",
    //   visible: true,
    //   mandatory: true,
    // },
    { id: "teilprojekt", label: "Teilprojekt", visible: true },
    { id: "nutzer", label: "Nutzer", visible: true },
    { id: "funktionsbereich", label: "Funktionsbereich", visible: true },
    { id: "raumtyp", label: "Raumtyp", visible: true },
    { id: "status", label: "Status", visible: true },
  ];

  $: visibleColumnIds = new Set(
    columns.filter((c) => c.visible).map((c) => c.id),
  );

  function toggleColumn(id) {
    columns = columns.map((c) =>
      c.id === id ? { ...c, visible: !c.visible } : c,
    );
  }

  // Compute unique values for filters
  $: uniqueTeilprojekte = [
    ...new Set(
      rooms
        .flatMap((r) => r.teilprojekt)
        .filter(Boolean)
        .map((t) => String(t)),
    ),
  ].sort();

  $: uniqueRaumtypen = [
    ...new Set(rooms.map((r) => r.raumtyp).filter(Boolean)),
  ].sort();

  $: uniqueNutzer = [
    ...new Set(
      rooms
        .flatMap((r) => r.nutzer)
        .filter(Boolean)
        .map((n) => String(n)),
    ),
  ].sort();

  $: filteredRooms = rooms
    .filter((room) => {
      // Search Query
      if (searchQuery) {
        const query = searchQuery.toLowerCase();
        const matchesSearch =
          String(room.nc_code_7_stellig || "")
            .toLowerCase()
            .includes(query) ||
          String(room.nc_bezeichnung || "")
            .toLowerCase()
            .includes(query) ||
          String(room.raumtyp || "")
            .toLowerCase()
            .includes(query) ||
          (Array.isArray(room.teilprojekt)
            ? String(room.teilprojekt[0] || "")
            : String(room.teilprojekt || "")
          )
            .toLowerCase()
            .includes(query);

        if (!matchesSearch) return false;
      }

      // Filter Teilprojekt
      if (filterTeilprojekt) {
        const tp = Array.isArray(room.teilprojekt)
          ? room.teilprojekt
          : [room.teilprojekt];
        if (!tp.includes(filterTeilprojekt)) return false;
      }

      // Filter Raumtyp
      if (filterRaumtyp) {
        if (room.raumtyp !== filterRaumtyp) return false;
      }

      // Filter Nutzer
      if (filterNutzer) {
        const user = Array.isArray(room.nutzer) ? room.nutzer : [room.nutzer];
        if (!user.includes(filterNutzer)) return false;
      }

      return true;
    })
    .sort((a, b) => {
      let fieldA = a[sortField];
      let fieldB = b[sortField];

      // Handle array fields
      if (["teilprojekt", "nutzer", "funktionsbereich"].includes(sortField)) {
        fieldA = Array.isArray(a[sortField])
          ? a[sortField][0] || ""
          : a[sortField] || "";
        fieldB = Array.isArray(b[sortField])
          ? b[sortField][0] || ""
          : b[sortField] || "";
      }
      // Handle nested properties if needed, e.g. status
      else if (sortField === "status") {
        fieldA = a.info?.status || "";
        fieldB = b.info?.status || "";
      }

      if (!fieldA) fieldA = "";
      if (!fieldB) fieldB = "";

      if (String(fieldA).toLowerCase() < String(fieldB).toLowerCase())
        return sortDirection === "asc" ? -1 : 1;
      if (String(fieldA).toLowerCase() > String(fieldB).toLowerCase())
        return sortDirection === "asc" ? 1 : -1;
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
  <div class="flex h-64 flex-col items-center justify-center gap-4">
    <div
      class="h-10 w-10 animate-spin rounded-full border-4 border-white/30 border-t-primary"
    ></div>
    <p class="text-text-muted">Lade Raumtypen...</p>
  </div>
{:else}
  <div class="flex flex-col gap-6">
    <div class="flex flex-wrap items-end justify-between gap-4">
      <div>
        <h2
          class="bg-gradient-to-r from-primary to-secondary bg-clip-text text-3xl font-bold text-transparent"
        >
          Raumtypen
        </h2>
        <p class="mt-2 text-sm text-text-muted">
          {filteredRooms.length} Räume gefunden
        </p>
      </div>

      <div class="flex flex-wrap items-center gap-4">
        <!-- Filters -->
        <div class="flex flex-wrap gap-2">
          <select
            bind:value={filterTeilprojekt}
            class="h-9 min-w-[150px] appearance-none rounded-md border border-glass-border bg-white/5 bg-[url('data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20fill%3D%22none%22%20viewBox%3D%220%200%2024%2024%22%20stroke%3D%22%2394a3b8%22%3E%3Cpath%20stroke-linecap%3D%22round%22%20stroke-linejoin%3D%22round%22%20stroke-width%3D%222%22%20d%3D%22M19%209l-7%207-7-7%22%2F%3E%3C%2Fsvg%3E')] bg-[length:1.25em] bg-[position:right_0.5rem_center] bg-no-repeat px-4 py-1 text-sm text-text-primary outline-none transition-all focus:border-primary focus:bg-white/10"
          >
            <option value="">Alle Teilprojekte</option>
            {#each uniqueTeilprojekte as tp}
              <option value={tp}>{tp}</option>
            {/each}
          </select>

          <select
            bind:value={filterRaumtyp}
            class="h-9 min-w-[150px] appearance-none rounded-md border border-glass-border bg-white/5 bg-[url('data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20fill%3D%22none%22%20viewBox%3D%220%200%2024%2024%22%20stroke%3D%22%2394a3b8%22%3E%3Cpath%20stroke-linecap%3D%22round%22%20stroke-linejoin%3D%22round%22%20stroke-width%3D%222%22%20d%3D%22M19%209l-7%207-7-7%22%2F%3E%3C%2Fsvg%3E')] bg-[length:1.25em] bg-[position:right_0.5rem_center] bg-no-repeat px-4 py-1 text-sm text-text-primary outline-none transition-all focus:border-primary focus:bg-white/10"
          >
            <option value="">Alle Raumtypen</option>
            {#each uniqueRaumtypen as rt}
              <option value={rt}>{rt}</option>
            {/each}
          </select>

          <select
            bind:value={filterNutzer}
            class="h-9 min-w-[150px] appearance-none rounded-md border border-glass-border bg-white/5 bg-[url('data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20fill%3D%22none%22%20viewBox%3D%220%200%2024%2024%22%20stroke%3D%22%2394a3b8%22%3E%3Cpath%20stroke-linecap%3D%22round%22%20stroke-linejoin%3D%22round%22%20stroke-width%3D%222%22%20d%3D%22M19%209l-7%207-7-7%22%2F%3E%3C%2Fsvg%3E')] bg-[length:1.25em] bg-[position:right_0.5rem_center] bg-no-repeat px-4 py-1 text-sm text-text-primary outline-none transition-all focus:border-primary focus:bg-white/10"
          >
            <option value="">Alle Nutzer</option>
            {#each uniqueNutzer as user}
              <option value={user}>{user}</option>
            {/each}
          </select>

          <!-- Column Toggle -->
          <div class="relative">
            <button
              class="flex h-9 items-center justify-center rounded-md border border-glass-border bg-transparent p-2 text-text-muted transition-all hover:bg-white/10 hover:text-primary hover:-translate-y-px"
              on:click={() => (showColumnDropdown = !showColumnDropdown)}
              title="Spalten anpassen"
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
                  d="M9 3H5a2 2 0 0 0-2 2v4a2 2 0 0 0 2 2h4a2 2 0 0 0 2-2V5a2 2 0 0 0-2-2z"
                ></path>
                <path
                  d="M19 3h-4a2 2 0 0 0-2 2v4a2 2 0 0 0 2 2h4a2 2 0 0 0 2-2V5a2 2 0 0 0-2-2z"
                ></path>
                <path
                  d="M9 13H5a2 2 0 0 0-2 2v4a2 2 0 0 0 2 2h4a2 2 0 0 0 2-2v-4a2 2 0 0 0-2-2z"
                ></path>
                <path
                  d="M19 13h-4a2 2 0 0 0-2 2v4a2 2 0 0 0 2 2h4a2 2 0 0 0 2-2v-4a2 2 0 0 0-2-2z"
                ></path>
              </svg>
            </button>
            {#if showColumnDropdown}
              <div
                class="absolute right-0 top-full mt-2 min-w-[200px] z-50 rounded-md border border-glass-border bg-[#1e293b] p-2 shadow-lg"
              >
                {#each columns as col}
                  <label
                    class="flex cursor-pointer select-none items-center gap-2 rounded-sm p-2 text-text-primary hover:bg-white/10"
                  >
                    <input
                      type="checkbox"
                      checked={col.visible}
                      on:change={() => toggleColumn(col.id)}
                      class="cursor-pointer"
                    />
                    {col.label}
                  </label>
                {/each}
              </div>
            {/if}
          </div>
        </div>

        <div class="relative w-[250px]">
          <svg
            class="absolute left-2.5 top-1/2 -translate-y-1/2 text-text-muted pointer-events-none"
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
          <input
            type="text"
            placeholder="Suchen..."
            bind:value={searchQuery}
            class="w-full rounded-md border border-glass-border bg-white/5 pl-9 pr-2 py-2 text-text-primary outline-none transition-all focus:bg-white/10 focus:border-primary"
          />
        </div>
      </div>
    </div>

    <div class="glass-panel overflow-x-auto p-0">
      <table class="w-full border-separate border-spacing-0">
        <thead class="sticky top-0 z-10 bg-white/5">
          <tr>
            <th
              class="cursor-pointer select-none whitespace-nowrap border-b border-glass-border p-4 text-left text-sm font-semibold uppercase tracking-wider text-text-secondary transition-colors hover:bg-white/5 hover:text-primary"
              on:click={() => handleSort("nc_code_7_stellig")}
            >
              NC Code
              {#if sortField === "nc_code_7_stellig"}
                <span class="ml-2 inline-block text-primary"
                  >{sortDirection === "asc" ? "↑" : "↓"}</span
                >
              {/if}
            </th>
            <th
              class="cursor-pointer select-none whitespace-nowrap border-b border-glass-border p-4 text-left text-sm font-semibold uppercase tracking-wider text-text-secondary transition-colors hover:bg-white/5 hover:text-primary"
              on:click={() => handleSort("nc_bezeichnung")}
            >
              Bezeichnung
              {#if sortField === "nc_bezeichnung"}
                <span class="ml-2 inline-block text-primary"
                  >{sortDirection === "asc" ? "↑" : "↓"}</span
                >
              {/if}
            </th>
            {#if visibleColumnIds.has("teilprojekt")}
              <th
                class="cursor-pointer select-none whitespace-nowrap border-b border-glass-border p-4 text-left text-sm font-semibold uppercase tracking-wider text-text-secondary transition-colors hover:bg-white/5 hover:text-primary"
                on:click={() => handleSort("teilprojekt")}
              >
                Teilprojekt
                {#if sortField === "teilprojekt"}
                  <span class="ml-2 inline-block text-primary"
                    >{sortDirection === "asc" ? "↑" : "↓"}</span
                  >
                {/if}
              </th>
            {/if}
            {#if visibleColumnIds.has("nutzer")}
              <th
                class="cursor-pointer select-none whitespace-nowrap border-b border-glass-border p-4 text-left text-sm font-semibold uppercase tracking-wider text-text-secondary transition-colors hover:bg-white/5 hover:text-primary"
                on:click={() => handleSort("nutzer")}
              >
                Nutzer
                {#if sortField === "nutzer"}
                  <span class="ml-2 inline-block text-primary"
                    >{sortDirection === "asc" ? "↑" : "↓"}</span
                  >
                {/if}
              </th>
            {/if}
            {#if visibleColumnIds.has("funktionsbereich")}
              <th
                class="cursor-pointer select-none whitespace-nowrap border-b border-glass-border p-4 text-left text-sm font-semibold uppercase tracking-wider text-text-secondary transition-colors hover:bg-white/5 hover:text-primary"
                on:click={() => handleSort("funktionsbereich")}
              >
                Funktionsbereich
                {#if sortField === "funktionsbereich"}
                  <span class="ml-2 inline-block text-primary"
                    >{sortDirection === "asc" ? "↑" : "↓"}</span
                  >
                {/if}
              </th>
            {/if}
            {#if visibleColumnIds.has("raumtyp")}
              <th
                class="cursor-pointer select-none whitespace-nowrap border-b border-glass-border p-4 text-left text-sm font-semibold uppercase tracking-wider text-text-secondary transition-colors hover:bg-white/5 hover:text-primary"
                on:click={() => handleSort("raumtyp")}
              >
                Raumtyp
                {#if sortField === "raumtyp"}
                  <span class="ml-2 inline-block text-primary"
                    >{sortDirection === "asc" ? "↑" : "↓"}</span
                  >
                {/if}
              </th>
            {/if}
            {#if visibleColumnIds.has("status")}
              <th
                class="cursor-pointer select-none whitespace-nowrap border-b border-glass-border p-4 text-left text-sm font-semibold uppercase tracking-wider text-text-secondary transition-colors hover:bg-white/5 hover:text-primary"
                on:click={() => handleSort("status")}
              >
                Status
                {#if sortField === "status"}
                  <span class="ml-2 inline-block text-primary"
                    >{sortDirection === "asc" ? "↑" : "↓"}</span
                  >
                {/if}
              </th>
            {/if}
            <th
              class="whitespace-nowrap border-b border-glass-border p-4 text-left text-sm font-semibold uppercase tracking-wider text-text-secondary"
              >Aktion</th
            >
          </tr>
        </thead>
        <tbody>
          {#each filteredRooms as room (room.id)}
            <tr class="group transition-colors hover:bg-white/5">
              <td
                class="whitespace-nowrap border-b border-white/5 p-4 font-mono font-medium text-primary max-sm:flex max-sm:justify-between max-sm:text-right max-sm:before:content-[attr(data-label)] max-sm:before:mr-4 max-sm:before:font-semibold max-sm:before:text-text-muted max-sm:before:uppercase max-sm:before:text-xs"
                data-label="NC Code"
              >
                {room.nc_code_7_stellig || room.id}
              </td>
              <td
                class="border-b border-white/5 p-4 font-medium text-text-primary max-sm:flex max-sm:justify-between max-sm:text-right max-sm:before:content-[attr(data-label)] max-sm:before:mr-4 max-sm:before:font-semibold max-sm:before:text-text-muted max-sm:before:uppercase max-sm:before:text-xs"
                data-label="Bezeichnung"
              >
                {room.nc_bezeichnung}
              </td>
              {#if visibleColumnIds.has("teilprojekt")}
                <td
                  class="border-b border-white/5 p-4 text-text-primary max-sm:flex max-sm:justify-between max-sm:text-right max-sm:before:content-[attr(data-label)] max-sm:before:mr-4 max-sm:before:font-semibold max-sm:before:text-text-muted max-sm:before:uppercase max-sm:before:text-xs"
                  data-label="Teilprojekt"
                >
                  {Array.isArray(room.teilprojekt)
                    ? room.teilprojekt[0] || "-"
                    : room.teilprojekt || "-"}
                </td>
              {/if}
              {#if visibleColumnIds.has("nutzer")}
                <td
                  class="border-b border-white/5 p-4 text-text-primary max-sm:flex max-sm:justify-between max-sm:text-right max-sm:before:content-[attr(data-label)] max-sm:before:mr-4 max-sm:before:font-semibold max-sm:before:text-text-muted max-sm:before:uppercase max-sm:before:text-xs"
                  data-label="Nutzer"
                >
                  {Array.isArray(room.nutzer)
                    ? room.nutzer[0] || "-"
                    : room.nutzer || "-"}
                </td>
              {/if}
              {#if visibleColumnIds.has("funktionsbereich")}
                <td
                  class="border-b border-white/5 p-4 text-text-primary max-sm:flex max-sm:justify-between max-sm:text-right max-sm:before:content-[attr(data-label)] max-sm:before:mr-4 max-sm:before:font-semibold max-sm:before:text-text-muted max-sm:before:uppercase max-sm:before:text-xs"
                  data-label="Funktionsbereich"
                >
                  {Array.isArray(room.funktionsbereich)
                    ? room.funktionsbereich[0] || "-"
                    : room.funktionsbereich || "-"}
                </td>
              {/if}
              {#if visibleColumnIds.has("raumtyp")}
                <td
                  class="border-b border-white/5 p-4 text-text-primary max-sm:flex max-sm:justify-between max-sm:text-right max-sm:before:content-[attr(data-label)] max-sm:before:mr-4 max-sm:before:font-semibold max-sm:before:text-text-muted max-sm:before:uppercase max-sm:before:text-xs"
                  data-label="Raumtyp"
                >
                  {room.raumtyp}
                </td>
              {/if}
              {#if visibleColumnIds.has("status")}
                <td
                  class="border-b border-white/5 p-4 max-sm:flex max-sm:justify-between max-sm:text-right max-sm:before:content-[attr(data-label)] max-sm:before:mr-4 max-sm:before:font-semibold max-sm:before:text-text-muted max-sm:before:uppercase max-sm:before:text-xs"
                  data-label="Status"
                >
                  <span
                    class="inline-block px-3 py-1 rounded-full text-xs font-bold uppercase tracking-wider
                    {room.info?.status === 'in_progress'
                      ? 'bg-blue-500/20 text-blue-400 border border-blue-500/30'
                      : room.info?.status === 'completed'
                        ? 'bg-emerald-500/20 text-emerald-400 border border-emerald-500/30'
                        : 'bg-slate-400/20 text-slate-400 border border-slate-400/30'}"
                  >
                    {getStatusLabel(room.info?.status)}
                  </span>
                </td>
              {/if}
              <td
                class="border-b border-white/5 p-4 max-sm:flex max-sm:justify-end max-sm:border-b-0"
                data-label="Aktion"
              >
                <button
                  class="flex h-8 w-8 items-center justify-center rounded-md text-text-muted transition-all hover:bg-white/10 hover:text-primary hover:-translate-y-px"
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
  /* Styles handled by Tailwind utilities */
  /* Responsive styles for mobile table view mimicking the original behavior */
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
      border-radius: 0.5rem;
      overflow: hidden;
      border: 1px solid rgba(255, 255, 255, 0.1);
    }
    /* td styles handled by utility classes now */
  }
</style>
