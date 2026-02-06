<script>
  import ConfirmDialog from "./ConfirmDialog.svelte";
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
  let showDeleteConfirm = false;
  let keyToDelete = "";
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

  function promptDelete(key) {
    keyToDelete = key;
    showDeleteConfirm = true;
  }

  function confirmDelete() {
    if (keyToDelete) {
      delete categoryData[keyToDelete];
      categoryData = categoryData;
      keyToDelete = "";
    }
    showDeleteConfirm = false;
  }

  function cancelDelete() {
    keyToDelete = "";
    showDeleteConfirm = false;
  }
</script>

<div class="category-box glass-panel">
  <h4 class="category-title">{title === "moebel" ? "Möbel" : title}</h4>

  <div class="params-grid">
    {#each Object.entries(categoryData) as [key, val]}
      <div class="param-card">
        <label for={`param-${key}`}>{key.replace(/_/g, " ")}</label>
        <div class="input-group">
          <ValueEditor
            bind:value={categoryData[key]}
            enforceType={getFieldType(key)}
          />
          <!-- <button
            class="delete-btn"
            on:click={() => promptDelete(key)}
            title="Löschen"
          >
            ×
          </button> -->
        </div>
      </div>
    {/each}
  </div>

  <!-- <div class="add-param">
    <input
      placeholder="Neuer Parameter..."
      bind:value={newKey}
      on:keydown={(e) => e.key === "Enter" && !isAddingToAll && addParam()}
      disabled={isAddingToAll}
    />
    <button class="btn-secondary" on:click={addParam} disabled={isAddingToAll}>
      {isAddingToAll ? "Wird hinzugefügt..." : "Hinzufügen"}
    </button>
  </div> -->

  <!-- {#if currentRoomId && categoryName}
    <div class="bulk-option">
      <label class="checkbox-label">
        <input
          type="checkbox"
          bind:checked={addToAllRoomTypes}
          disabled={isAddingToAll}
        />
        <span>Zu allen Raumtypen hinzufügen</span>
      </label>
      {#if isAddingToAll}
        <div class="loading-indicator">
          <div class="mini-spinner"></div>
          <span>Wird zu allen Raumtypen hinzugefügt...</span>
        </div>
      {/if}
    </div>
  {/if} -->
</div>

<ConfirmDialog
  isOpen={showDeleteConfirm}
  title="Parameter löschen"
  message="Möchten Sie den Parameter '{keyToDelete.replace(
    /_/g,
    ' ',
  )}' wirklich löschen? Diese Aktion kann nicht rückgängig gemacht werden."
  confirmText="Löschen"
  cancelText="Abbrechen"
  onConfirm={confirmDelete}
  onCancel={cancelDelete}
/>

<style>
  .category-box {
    padding: 1rem;
    background: rgba(255, 255, 255, 0.02); /* Slight bg for contrast */
    border: 1px solid var(--glass-border);
    border-radius: 4px;
  }

  .category-title {
    margin: 0 0 0.75rem 0;
    font-size: 0.95rem;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 0.05em;
    color: var(--text-primary);
    border-bottom: 1px solid var(--glass-border);
    padding-bottom: 0.5rem;
    opacity: 0.9;
  }

  .params-grid {
    display: grid;
    grid-template-columns: 1fr; /* Stack vertically in the column */
    gap: 0; /* Remove gap, use borders */
    margin-bottom: 0.75rem;
    border-top: 1px solid rgba(255, 255, 255, 0.05);
  }

  .param-card {
    background: transparent;
    border: none;
    border-radius: 0;
    padding: 0.35rem 0;

    display: grid;
    grid-template-columns: 250px 1fr;
    align-items: center;
    gap: 0.75rem;
    border-bottom: 1px solid rgba(255, 255, 255, 0.05);
  }

  .param-card:hover {
    background: rgba(255, 255, 255, 0.02);
  }

  label {
    display: block;
    font-size: 0.75rem;
    font-weight: 500;
    color: var(--text-secondary);
    text-transform: none;
    letter-spacing: normal;
    margin-bottom: 0;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    text-align: right;
  }

  .input-group {
    display: flex;
    gap: 0.5rem;
    align-items: center;
    width: 100%;
  }

  .delete-btn {
    width: 20px;
    height: 20px;
    background: transparent;
    color: var(--text-muted);
    border: none;
    border-radius: 2px;
    font-size: 1rem;
    cursor: pointer;
    transition: all 0.2s ease;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 0;
    flex-shrink: 0;
    opacity: 0;
  }

  .param-card:hover .delete-btn {
    opacity: 1;
  }

  .delete-btn:hover {
    color: #ef4444;
    background: rgba(239, 68, 68, 0.1);
  }

  .add-param {
    padding-top: 0.75rem;
    border-top: none;
    display: flex;
    gap: 0.5rem;
    max-width: 100%;
  }

  .add-param input {
    flex: 1;
    padding: 0.25rem 0.5rem;
    background: rgba(255, 255, 255, 0.4);
    border: 1px solid var(--glass-border);
    border-radius: 2px;
    color: var(--text-primary);
    font-family: inherit;
    height: 28px;
    font-size: 0.85rem;
  }

  .add-param input:focus {
    outline: none;
    border-color: var(--primary);
  }

  .add-param button {
    height: 28px;
    padding: 0 0.75rem;
    font-size: 0.85rem;
    border-radius: 2px;
  }

  .add-param input:disabled,
  .add-param button:disabled {
    opacity: 0.5;
    cursor: not-allowed;
  }

  .bulk-option {
    margin-top: 0.5rem;
    padding-top: 0.5rem;
    border-top: 1px dashed rgba(255, 255, 255, 0.1);
  }

  .checkbox-label {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    cursor: pointer;
    font-size: 0.8rem;
    color: var(--text-secondary);
    user-select: none;
  }

  .checkbox-label input[type="checkbox"] {
    width: 14px;
    height: 14px;
    cursor: pointer;
    accent-color: var(--primary);
  }

  .checkbox-label input[type="checkbox"]:disabled {
    cursor: not-allowed;
    opacity: 0.5;
  }

  .checkbox-label span {
    transition: color 0.2s ease;
  }

  .checkbox-label:hover span {
    color: var(--text-primary);
  }

  .loading-indicator {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    margin-top: 0.5rem;
    padding: 0.5rem;
    background: rgba(168, 85, 247, 0.1);
    border: 1px solid rgba(168, 85, 247, 0.3);
    border-radius: var(--radius-md);
    font-size: 0.8rem;
    color: var(--primary);
  }

  .mini-spinner {
    width: 14px;
    height: 14px;
    border: 2px solid rgba(255, 255, 255, 0.3);
    border-radius: 50%;
    border-top-color: var(--primary);
    animation: spin 1s ease-in-out infinite;
  }

  @keyframes spin {
    to {
      transform: rotate(360deg);
    }
  }

  @media (max-width: 640px) {
    .params-grid {
      grid-template-columns: 1fr;
    }
    .param-card {
      grid-template-columns: 1fr;
      gap: 0;
      padding: 0.5rem 0;
    }
    label {
      text-align: left;
      margin-bottom: 0.25rem;
    }
  }
</style>
