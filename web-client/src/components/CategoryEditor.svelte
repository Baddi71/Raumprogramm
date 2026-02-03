<script>
  export let categoryData = {};
  export let title = "";

  let newKey = "";

  function addParam() {
    if (!newKey) return;
    const key = newKey.trim().toLowerCase().replace(/ /g, "_");
    if (Object.prototype.hasOwnProperty.call(categoryData, key)) {
      alert("Parameter existiert bereits");
      return;
    }
    categoryData[key] = 0;
    categoryData = categoryData;
    newKey = "";
  }

  function removeParam(key) {
    delete categoryData[key];
    categoryData = categoryData;
  }
</script>

<div class="category-box glass-panel">
  <h4 class="category-title">{title}</h4>

  <div class="params-grid">
    {#each Object.entries(categoryData) as [key, val]}
      <div class="param-card">
        <label>{key.replace(/_/g, " ")}</label>
        <div class="input-group">
          <input bind:value={categoryData[key]} />
          <button
            class="delete-btn"
            on:click={() => removeParam(key)}
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
      on:keydown={(e) => e.key === "Enter" && addParam()}
    />
    <button class="btn-secondary" on:click={addParam}>Hinzufügen</button>
  </div>
</div>

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
</style>
