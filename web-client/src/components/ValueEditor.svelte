<script>
    export let value;
    export let enforceType = null;

    // Strict mode determination:
    // If enforceType is 'bool', allow ONLY select.
    // Otherwise, default to input (text).
    // We strictly follow configuration, disregarding the current value's type
    // (though existing booleans will display as "true"/"false" strings in input mode).
    let mode = enforceType === "bool" ? "select" : "input";

    // React to prop changes
    $: mode = enforceType === "bool" ? "select" : "input";

    function handleSelectChange(e) {
        const val = e.target.value;
        if (val === "true") {
            value = true;
        } else if (val === "false") {
            value = false;
        } else if (val === "null") {
            value = null;
        }
    }
</script>

<div class="value-editor">
    {#if mode === "select"}
        <!-- svelte-ignore a11y-no-onchange -->
        <select
            value={value === null ? "null" : value.toString()}
            on:change={handleSelectChange}
        >
            <option value="null">Nicht ausgewählt</option>
            <option value="true">Ja</option>
            <option value="false">Nein</option>
        </select>
    {:else}
        <div class="input-wrapper">
            <input bind:value />
        </div>
    {/if}
</div>

<style>
    .value-editor {
        flex: 1;
        min-width: 0;
    }

    select,
    input {
        width: 100%;
        padding: 0.5rem 0.75rem;
        background: rgba(255, 255, 255, 0.05);
        border: 1px solid var(--glass-border);
        border-radius: var(--radius-md);
        color: var(--text-primary);
        font-family: inherit;
        transition: all 0.2s ease;
    }

    select:focus,
    input:focus {
        outline: none;
        border-color: var(--primary);
        background: rgba(255, 255, 255, 0.1);
    }

    select {
        cursor: pointer;
        appearance: none;
        background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 24 24' stroke='rgba(255,255,255,0.5)'%3E%3Cpath stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M19 9l-7 7-7-7'%3E%3C/path%3E%3C/svg%3E");
        background-repeat: no-repeat;
        background-position: right 0.75rem center;
        background-size: 1rem;
        padding-right: 2.5rem;
    }

    /* Dark theme adjustment for options */
    option {
        background-color: #1a1a1a;
        color: var(--text-primary);
    }

    .input-wrapper {
        display: flex;
        gap: 0.5rem;
    }

    .icon-btn {
        display: flex;
        align-items: center;
        justify-content: center;
        background: rgba(255, 255, 255, 0.1);
        border: 1px solid var(--glass-border);
        color: var(--text-muted);
        width: 36px;
        height: 36px; /* Match input height roughly */
        border-radius: var(--radius-md);
        cursor: pointer;
        transition: all 0.2s ease;
        flex-shrink: 0;
    }

    .icon-btn:hover {
        background: rgba(255, 255, 255, 0.2);
        color: var(--text-primary);
    }
</style>
