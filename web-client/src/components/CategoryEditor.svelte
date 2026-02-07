<script>
  import ValueEditor from "./ValueEditor.svelte";
  import { db } from "../lib/surreal";

  export let categoryData = {};
  export let title = "";
  export let currentRoomId = null;
  export let categoryName = "";
  export let fieldTypes = {};

  function getFieldType(key) {
    // Construct the full path, e.g., "categories.finance.cost"
    const fullPath = `categories.${categoryName}.${key}`;
    const fieldDef = fieldTypes[fullPath];

    if (fieldDef) {
      // Check if it's explicitly a bool or option<bool>
      if (fieldDef.includes("bool")) return "bool";
    }
    return null;
  }

  let newKey = "";

  let addToAllRoomTypes = false;
  let isAddingToAll = false;

  async function addParam() {
    if (!newKey) return;
    const key = newKey.trim().toLowerCase().replace(/ /g, "_");

    if (Object.prototype.hasOwnProperty.call(categoryData, key)) {
      alert("Parameter existiert bereits");
      return;
    }

    // Add to current room
    categoryData[key] = null;
    categoryData = categoryData;

    // If "add to all" is checked, add to all other room types
    if (addToAllRoomTypes && currentRoomId && categoryName) {
      isAddingToAll = true;
      try {
        // Fetch all room types
        const allRooms = await db.select("raumtypen");

        let successCount = 0;
        let errorCount = 0;
        const errors = [];

        // Update each room type (except the current one)
        for (const room of allRooms) {
          if (room.id === currentRoomId) continue;

          try {
            // Ensure the room has the categories structure
            if (!room.categories) room.categories = {};
            if (!room.categories[categoryName])
              room.categories[categoryName] = {};

            // Skip if property already exists in this room
            if (
              Object.prototype.hasOwnProperty.call(
                room.categories[categoryName],
                key,
              )
            ) {
              continue;
            }

            // Add the property
            room.categories[categoryName][key] = null;

            // Update the room in the database
            await db.update(room.id, room);
            successCount++;
          } catch (err) {
            errorCount++;
            errors.push(`${room.nc_bezeichnung || room.id}: ${err.message}`);
          }
        }

        // Show result message
        if (errorCount === 0) {
          alert(
            `Parameter "${key}" wurde erfolgreich zu ${successCount + 1} Raumtypen hinzugefügt!`,
          );
        } else {
          alert(
            `Parameter "${key}" wurde zu ${successCount + 1} Raumtypen hinzugefügt.\n` +
              `${errorCount} Fehler aufgetreten:\n${errors.slice(0, 3).join("\n")}` +
              (errors.length > 3
                ? `\n... und ${errors.length - 3} weitere`
                : ""),
          );
        }
      } catch (err) {
        console.error("Error adding parameter to all room types:", err);
        alert(`Fehler beim Hinzufügen zu allen Raumtypen: ${err.message}`);
      } finally {
        isAddingToAll = false;
      }
    }

    newKey = "";
    addToAllRoomTypes = false;
  }
</script>

<div
  class="rounded border p-4"
  style="background-color: var(--panel-bg); border-color: var(--panel-border);"
>
  <h4
    class="mb-3 border-b border-white/10 pb-2 text-sm font-semibold uppercase tracking-wider text-text-primary opacity-90"
  >
    {title === "moebel" ? "Möbel" : title}
  </h4>

  <div class="mb-3 grid grid-cols-1 gap-0 border-t border-white/5">
    {#each Object.entries(categoryData) as [key, val]}
      <div
        class="grid grid-cols-[250px_1fr] items-center gap-3 border-b border-white/5 py-1.5 transition-colors hover:bg-white/5 max-sm:grid-cols-1 max-sm:gap-0 max-sm:py-2 group"
      >
        <label
          for={`param-${key}`}
          class="block overflow-hidden text-ellipsis whitespace-nowrap text-right text-xs font-medium text-text-secondary max-sm:mb-1 max-sm:text-left"
          >{key.replace(/_/g, " ")}</label
        >
        <div class="flex w-full items-center gap-2">
          <ValueEditor
            bind:value={categoryData[key]}
            enforceType={getFieldType(key)}
          />
        </div>
      </div>
    {/each}
  </div>

  <!-- Remove commented out add-param section or keep it commented but without styles -->
</div>

<style>
</style>
