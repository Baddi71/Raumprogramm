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
            <input
                bind:value
                class="block h-7 w-full rounded-sm border border-white/10 bg-white/5 px-2 py-1 text-sm text-text-primary transition-all hover:bg-white/10 focus:border-primary focus:bg-white/10 focus:outline-none focus:ring-1 focus:ring-primary/30"
            />
        </div>
    {/if}
</div>

<style>
</style>
