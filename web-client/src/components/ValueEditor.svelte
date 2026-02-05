<script>
    import CustomSelect from "./CustomSelect.svelte";

    export let value;
    export let enforceType = null;

    let mode = enforceType === "bool" ? "select" : "input";

    // React to prop changes
    $: mode = enforceType === "bool" ? "select" : "input";

    const options = [
        { value: null, label: "Nicht ausgewählt", color: "var(--text-muted)" },
        { value: true, label: "Ja", color: "#34d399" }, // Emerald 400
        { value: false, label: "Nein", color: "#ef4444" }, // Red 500
    ];
</script>

<div class="value-editor">
    {#if mode === "select"}
        <CustomSelect bind:value {options} />
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

    .input-wrapper {
        display: flex;
        width: 100%;
    }

    input {
        width: 100%;
        padding: 0.5rem 0.75rem;
        background: rgba(255, 255, 255, 0.05);
        border: 1px solid var(--glass-border);
        border-radius: var(--radius-md);
        color: var(--text-primary);
        font-family: inherit;
        transition: all 0.2s ease;
        height: 42px;
    }

    input:focus {
        outline: none;
        border-color: var(--primary);
        background: rgba(255, 255, 255, 0.1);
    }
</style>
