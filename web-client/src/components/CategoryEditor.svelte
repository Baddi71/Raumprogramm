<script>
  import ConfirmDialog from "./ConfirmDialog.svelte";
  import { db } from "../lib/surreal";

  export let categoryData = {};
  export let title = "";
  export let currentRoomId = null;
  export let categoryName = "";

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
    categoryData[key] = 0;
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
            room.categories[categoryName][key] = 0;

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
  <h4 class="category-title">{title}</h4>

  <div class="params-grid">
    {#each Object.entries(categoryData) as [key, val]}
      <div class="param-card">
        <label for={`param-${key}`}>{key.replace(/_/g, " ")}</label>
        <div class="input-group">
          <input id={`param-${key}`} bind:value={categoryData[key]} />
          <button
            class="delete-btn"
            on:click={() => promptDelete(key)}
            title="Löschen"
          >
            ×
          </button>
        </div>
      </div>
    {/each}
  </div>

  <div class="add-param">
    <input
      placeholder="Neuer Parameter..."
      bind:value={newKey}
      on:keydown={(e) => e.key === "Enter" && !isAddingToAll && addParam()}
      disabled={isAddingToAll}
    />
    <button class="btn-secondary" on:click={addParam} disabled={isAddingToAll}>
      {isAddingToAll ? "Wird hinzugefügt..." : "Hinzufügen"}
    </button>
  </div>

  {#if currentRoomId && categoryName}
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
  {/if}
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
    padding: 1.5rem;
  }

  .category-title {
    margin: 0 0 1.25rem 0;
    font-size: 1.1rem;
    font-weight: 600;
    text-transform: capitalize;
    color: var(--text-primary);
  }

  .params-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
    gap: 1rem;
    margin-bottom: 1.25rem;
  }

  .param-card {
    background: rgba(255, 255, 255, 0.03);
    border: 1px solid var(--glass-border);
    border-radius: var(--radius-md);
    padding: 0.875rem;
    transition: all 0.2s ease;
  }

  .param-card:hover {
    background: rgba(255, 255, 255, 0.05);
  }

  label {
    display: block;
    font-size: 0.75rem;
    font-weight: 500;
    color: var(--text-muted);
    text-transform: uppercase;
    letter-spacing: 0.05em;
    margin-bottom: 0.5rem;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
  }

  .input-group {
    display: flex;
    gap: 0.5rem;
  }

  .input-group input {
    flex: 1;
    padding: 0.5rem 0.75rem;
    background: rgba(0, 0, 0, 0.2);
    border: 1px solid rgba(255, 255, 255, 0.1);
    border-radius: var(--radius-md);
    color: var(--text-primary);
    font-family: inherit;
    transition: all 0.2s ease;
  }

  .input-group input:focus {
    outline: none;
    border-color: var(--primary);
    background: rgba(0, 0, 0, 0.3);
  }

  .delete-btn {
    width: 32px;
    height: 32px;
    background: rgba(239, 68, 68, 0.15);
    color: #ef4444;
    border: 1px solid rgba(239, 68, 68, 0.3);
    border-radius: var(--radius-md);
    font-size: 1.25rem;
    font-weight: bold;
    cursor: pointer;
    transition: all 0.2s ease;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 0;
  }

  .delete-btn:hover {
    background: rgba(239, 68, 68, 0.25);
    border-color: rgba(239, 68, 68, 0.5);
  }

  .add-param {
    padding-top: 1rem;
    border-top: 1px dashed var(--glass-border);
    display: flex;
    gap: 0.75rem;
  }

  .add-param input {
    flex: 1;
    padding: 0.65rem 1rem;
    background: rgba(255, 255, 255, 0.05);
    border: 1px solid var(--glass-border);
    border-radius: var(--radius-md);
    color: var(--text-primary);
    font-family: inherit;
  }

  .add-param input:focus {
    outline: none;
    border-color: var(--primary);
  }

  .add-param input:disabled,
  .add-param button:disabled {
    opacity: 0.5;
    cursor: not-allowed;
  }

  .bulk-option {
    margin-top: 0.75rem;
    padding-top: 0.75rem;
    border-top: 1px dashed rgba(255, 255, 255, 0.1);
  }

  .checkbox-label {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    cursor: pointer;
    font-size: 0.875rem;
    color: var(--text-secondary);
    user-select: none;
  }

  .checkbox-label input[type="checkbox"] {
    width: 18px;
    height: 18px;
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
    width: 16px;
    height: 16px;
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
</style>
