<script>
    import { createEventDispatcher } from "svelte";
    import CustomSelect from "./CustomSelect.svelte";

    export let value = "pending";

    const dispatch = createEventDispatcher();

    const options = [
        {
            value: "pending",
            label: "Nicht begonnen",
            color: "var(--text-muted)",
        },
        { value: "in_progress", label: "In Bearbeitung", color: "#60a5fa" },
        { value: "completed", label: "Abgeschlossen", color: "#34d399" },
    ];

    function handleChange(e) {
        dispatch("change", e.detail);
    }
</script>

<CustomSelect bind:value {options} on:change={handleChange} />
