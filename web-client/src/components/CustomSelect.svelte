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

<div
    class="custom-select-container"
    use:clickOutside
    on:outclick={handleOutClick}
>
    <button
        class="select-trigger"
        class:active={isOpen}
        on:click={toggle}
        type="button"
    >
        <div class="trigger-content">
            {#if selectedOption}
                <span
                    class="status-dot"
                    style="background-color: {selectedOption.color}"
                ></span>
                <span class="label">{selectedOption.label}</span>
            {:else}
                <span class="label">Auswählen...</span>
            {/if}
        </div>
        <span class="arrow" class:open={isOpen}>▼</span>
    </button>

    {#if isOpen}
        <div class="options-dropdown glass-panel">
            {#each options as option}
                <button
                    class="option-item"
                    class:selected={value === option.value}
                    on:click={() => select(option)}
                    type="button"
                >
                    <span
                        class="status-dot"
                        style="background-color: {option.color}"
                    ></span>
                    {option.label}
                    {#if value === option.value}
                        <span class="check">✓</span>
                    {/if}
                </button>
            {/each}
        </div>
    {/if}
</div>

<style>
    /* Custom Select Styles */
    .custom-select-container {
        position: relative;
        width: 100%;
    }

    .select-trigger {
        width: 100%;
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 0 0.5rem;
        background: rgba(255, 255, 255, 0.4); /* Match input opacity */
        border: 1px solid var(--glass-border);
        border-radius: 2px; /* Sharpe corners */
        color: var(--text-primary);
        font-family: inherit;
        font-size: 0.85rem; /* Match input font size */
        cursor: pointer;
        transition: all 0.2s ease;
        height: 28px; /* Match input height */
    }

    .select-trigger:hover,
    .select-trigger.active {
        background: rgba(255, 255, 255, 0.6);
        border-color: var(--primary);
    }

    .trigger-content {
        display: flex;
        align-items: center;
    }

    .status-dot {
        width: 8px;
        height: 8px;
        border-radius: 50%;
        margin-right: 0.75rem;
        display: inline-block;
        box-shadow: 0 0 8px currentColor;
    }

    .arrow {
        font-size: 0.7rem;
        opacity: 0.7;
        transition: transform 0.3s ease;
        margin-left: 0.5rem;
    }

    .arrow.open {
        transform: rotate(180deg);
    }

    .options-dropdown {
        position: absolute;
        top: calc(100% + 0.25rem);
        left: 0;
        width: 100%;
        z-index: 50;
        overflow: hidden;
        padding: 0.25rem;
        animation: slideDown 0.2s ease;
        background: #1a1a1a;
        background: rgba(30, 30, 30, 0.95);
        backdrop-filter: blur(12px);
        border: 1px solid var(--glass-border);
        border-radius: var(--radius-md);
        box-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.3);
    }

    @keyframes slideDown {
        from {
            opacity: 0;
            transform: translateY(-5px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    .option-item {
        width: 100%;
        display: flex;
        align-items: center;
        padding: 0.5rem 0.75rem;
        background: transparent;
        border: none;
        border-radius: var(--radius-sm);
        color: var(--text-secondary);
        text-align: left;
        cursor: pointer;
        transition: all 0.2s;
        font-size: 0.95rem;
    }

    .option-item:hover {
        background: rgba(255, 255, 255, 0.1);
        color: var(--text-primary);
    }

    .option-item.selected {
        background: rgba(255, 255, 255, 0.05);
        color: var(--text-primary);
        font-weight: 500;
    }

    .check {
        margin-left: auto;
        color: var(--primary);
        font-size: 0.9rem;
    }
</style>
