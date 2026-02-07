<script>
    import { createEventDispatcher } from "svelte";
    import { clickOutside } from "../lib/actions.js";

    export let value;
    export let options = [];

    const dispatch = createEventDispatcher();
    let isOpen = false;

    $: selectedOption = options.find((o) => o.value === value) || options[0];

    function select(option) {
        value = option.value;
        isOpen = false;
        dispatch("change", value);
    }

    function toggle() {
        isOpen = !isOpen;
    }

    function handleOutClick() {
        isOpen = false;
    }
</script>

<div class="relative w-full" use:clickOutside on:outclick={handleOutClick}>
    <button
        class="flex h-7 w-full items-center justify-between rounded-sm border border-white/10 bg-white/40 px-2 text-sm text-text-primary transition-all hover:border-primary hover:bg-white/60 focus:border-primary focus:outline-none focus:ring-1 focus:ring-primary/30 {isOpen
            ? 'border-primary bg-white/60 ring-1 ring-primary/30'
            : ''}"
        on:click={toggle}
        type="button"
    >
        <div class="flex items-center">
            {#if selectedOption}
                <span
                    class="mr-3 block h-2 w-2 rounded-full shadow-[0_0_8px_currentColor]"
                    style="background-color: {selectedOption.color}"
                ></span>
                <span class="truncate">{selectedOption.label}</span>
            {:else}
                <span class="truncate">Auswählen...</span>
            {/if}
        </div>
        <span
            class="ml-2 text-[0.7rem] opacity-70 transition-transform duration-300 {isOpen
                ? 'rotate-180'
                : ''}">▼</span
        >
    </button>

    {#if isOpen}
        <div
            class="absolute left-0 top-[calc(100%+0.25rem)] z-50 w-full overflow-hidden rounded-md border border-white/10 bg-[#1e1e1e]/95 p-1 shadow-xl backdrop-blur-xl animate-in fade-in slide-in-from-top-1 duration-200"
        >
            {#each options as option}
                <button
                    class="flex w-full cursor-pointer items-center rounded-sm bg-transparent px-3 py-2 text-left text-[0.95rem] text-text-secondary transition-all hover:bg-white/10 hover:text-text-primary {value ===
                    option.value
                        ? 'bg-white/5 font-medium text-text-primary'
                        : ''}"
                    on:click={() => select(option)}
                    type="button"
                >
                    <span
                        class="mr-3 block h-2 w-2 rounded-full shadow-[0_0_8px_currentColor]"
                        style="background-color: {option.color}"
                    ></span>
                    {option.label}
                    {#if value === option.value}
                        <span class="ml-auto text-sm text-primary">✓</span>
                    {/if}
                </button>
            {/each}
        </div>
    {/if}
</div>

<style>
    /* Tailwind handles all styles */
</style>
