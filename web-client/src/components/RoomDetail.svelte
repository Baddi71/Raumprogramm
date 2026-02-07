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
  <div class="flex flex-col items-center justify-center gap-4 p-16">
    <div
      class="h-10 w-10 animate-spin rounded-full border-[3px] border-white/30 border-t-primary"
    ></div>
    <p>Lade Details...</p>
  </div>
{:else if room}
  <div class="flex flex-col gap-6">
    <div class="flex items-center justify-between">
      <button class="btn-secondary" on:click={goBack}> ← Zurück </button>
      <button class="btn-primary" on:click={save} disabled={saving}>
        {saving ? "Speichert..." : "Speichern"}
      </button>
    </div>

    <div class="rounded bg-white/5 border border-white/10 px-4 py-3">
      <h1
        class="m-0 bg-gradient-to-r from-primary to-secondary bg-clip-text text-2xl font-bold text-transparent"
      >
        {room.nc_bezeichnung}
      </h1>
      <p class="mt-0.5 font-mono text-sm text-text-muted">
        Code: {room.nc_code_7_stellig}
      </p>
    </div>

    <div class="grid grid-cols-1 gap-6 items-start xl:grid-cols-2">
      <div class="relative z-10 rounded bg-white/5 border border-white/10 p-4">
        <h3
          class="mb-3 text-base font-semibold uppercase tracking-wider text-text-primary opacity-80"
        >
          Stammdaten
        </h3>
        <div class="grid grid-cols-1 gap-2">
          <div
            class="grid grid-cols-[250px_1fr] items-center gap-3 max-sm:grid-cols-1 max-sm:gap-1"
          >
            <label
              for="room-name"
              class="overflow-hidden text-ellipsis whitespace-nowrap text-right text-xs font-medium text-text-secondary transition-colors max-sm:text-left"
              >Raumbezeichnung</label
            >
            <input
              id="room-name"
              bind:value={room.raum_bezeichnung}
              class="input-field"
            />
          </div>
          <div
            class="grid grid-cols-[250px_1fr] items-center gap-3 max-sm:grid-cols-1 max-sm:gap-1"
          >
            <label
              for="room-type"
              class="overflow-hidden text-ellipsis whitespace-nowrap text-right text-xs font-medium text-text-secondary transition-colors max-sm:text-left"
              >Raumtyp</label
            >
            <input
              id="room-type"
              bind:value={room.raumtyp}
              class="input-field"
            />
          </div>
          <div
            class="grid grid-cols-[250px_1fr] items-center gap-3 max-sm:grid-cols-1 max-sm:gap-1"
          >
            <label
              for="room-count"
              class="overflow-hidden text-ellipsis whitespace-nowrap text-right text-xs font-medium text-text-secondary transition-colors max-sm:text-left"
              >Anzahl Räume</label
            >
            <input
              id="room-count"
              type="number"
              bind:value={room.anzahl_räume_summe}
              class="input-field"
            />
          </div>
          <div
            class="grid grid-cols-[250px_1fr] items-center gap-3 max-sm:grid-cols-1 max-sm:gap-1"
          >
            <label
              for="status-select"
              class="overflow-hidden text-ellipsis whitespace-nowrap text-right text-xs font-medium text-text-secondary transition-colors max-sm:text-left"
              >Status</label
            >
            <!-- Using a wrapper div to avoid A11y label issues since custom component handles its own ID internally or via prop -->
            <div class="w-full">
              <StatusSelect bind:value={room.info.status} />
            </div>
          </div>
          <div
            class="grid grid-cols-[250px_1fr] items-center gap-3 max-sm:grid-cols-1 max-sm:gap-1"
          >
            <label
              for="teilprojekt"
              class="overflow-hidden text-ellipsis whitespace-nowrap text-right text-xs font-medium text-text-secondary transition-colors max-sm:text-left"
              >Teilprojekt</label
            >
            <input
              id="teilprojekt"
              value={room.teilprojekt?.[0] || ""}
              readonly
              disabled
              class="input-field opacity-75"
            />
          </div>
          <div
            class="grid grid-cols-[250px_1fr] items-center gap-3 max-sm:grid-cols-1 max-sm:gap-1"
          >
            <label
              for="nutzer1"
              class="overflow-hidden text-ellipsis whitespace-nowrap text-right text-xs font-medium text-text-secondary transition-colors max-sm:text-left"
              >Nutzer Ebene 1</label
            >
            <input
              id="nutzer1"
              value={room.nutzer_ebene_1?.[0] || ""}
              readonly
              disabled
              class="input-field opacity-75"
            />
          </div>
          <div
            class="grid grid-cols-[250px_1fr] items-center gap-3 max-sm:grid-cols-1 max-sm:gap-1"
          >
            <label
              for="nutzer2"
              class="overflow-hidden text-ellipsis whitespace-nowrap text-right text-xs font-medium text-text-secondary transition-colors max-sm:text-left"
              >Nutzer Ebene 2</label
            >
            <input
              id="nutzer2"
              value={room.nutzer_ebene_2?.[0] || ""}
              readonly
              disabled
              class="input-field opacity-75"
            />
          </div>
          <div
            class="grid grid-cols-[250px_1fr] items-center gap-3 max-sm:grid-cols-1 max-sm:gap-1"
          >
            <label
              for="funktionsbereich"
              class="overflow-hidden text-ellipsis whitespace-nowrap text-right text-xs font-medium text-text-secondary transition-colors max-sm:text-left"
              >Funktionsbereich</label
            >
            <input
              id="funktionsbereich"
              value={room.funktions_bereich?.[0] || ""}
              readonly
              disabled
              class="input-field opacity-75"
            />
          </div>
        </div>
      </div>
      <div class="rounded bg-white/5 border border-white/10 p-4">
        <h3
          class="mb-3 text-base font-semibold uppercase tracking-wider text-text-primary opacity-80"
        >
          Beschreibung
        </h3>
        <MarkdownEditor bind:value={room.description} />
      </div>
    </div>

    <div class="mt-4">
      <h3
        class="mb-2 pl-4 text-base font-semibold uppercase tracking-wider text-text-primary opacity-80"
      >
        Kategorien
      </h3>
      <div
        class="grid grid-cols-1 gap-4 p-4 pb-4 lg:grid-cols-2 max-lg:grid-cols-1"
      >
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
  <div class="glass-panel p-8 text-center">
    <p class="mb-4">Raum nicht gefunden.</p>
    <button class="btn-secondary" on:click={goBack}>Zurück</button>
  </div>
{/if}
