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

<div class="flex-1 min-w-0">
    {#if mode === "select"}
        <CustomSelect bind:value {options} />
    {:else}
        <div class="flex w-full">
            <input bind:value class="input-field" />
        </div>
    {/if}
</div>

<style>
</style>
