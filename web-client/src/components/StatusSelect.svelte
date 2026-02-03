<script>
    import { createEventDispatcher } from "svelte";

    export let value = "pending";

    const dispatch = createEventDispatcher();
    let isOpen = false;

    const options = [
        {
            value: "pending",
            label: "Nicht begonnen",
            color: "var(--text-muted)",
        },
        { value: "in_progress", label: "In Bearbeitung", color: "#60a5fa" },
        { value: "completed", label: "Abgeschlossen", color: "#34d399" },
    ];

    function select(option) {
        value = option.value;
        isOpen = false;
        dispatch("change", value);
    }

    function toggle() {
        isOpen = !isOpen;
    }

    function clickOutside(node) {
        function handleClick(event) {
            if (
                node &&
                !node.contains(event.target) &&
                !event.defaultPrevented
            ) {
                isOpen = false;
            }
        }

        document.addEventListener("click", handleClick, true);
        return {
            destroy() {
                document.removeEventListener("click", handleClick, true);
            },
        };
    }

    $: selectedOption = options.find((o) => o.value === value) || options[0];
</script>

<div class="custom-select-container" use:clickOutside>
    <button
        class="select-trigger status-{value}"
        on:click={toggle}
        type="button"
    >
        <span
            class="status-dot"
            style="background-color: {selectedOption.color}"
        ></span>
        <span class="label">{selectedOption.label}</span>
        <span class="arrow {isOpen ? 'open' : ''}">▼</span>
    </button>

    {#if isOpen}
        <div class="options-dropdown glass-panel">
            {#each options as option}
                <button
                    class="option-item {value === option.value
                        ? 'selected'
                        : ''}"
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
    .custom-select-container {
        position: relative;
        width: 100%;
    }

    .select-trigger {
        width: 100%;
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 0.75rem 1rem;
        background: rgba(255, 255, 255, 0.05);
        border: 1px solid var(--glass-border);
        border-radius: var(--radius-md);
        color: var(--text-primary);
        font-size: 1rem;
        cursor: pointer;
        transition: all 0.2s ease;
    }

    /* Status variants for the trigger */
    .select-trigger.status-pending {
        border-color: rgba(148, 163, 184, 0.3);
    }

    .select-trigger.status-in_progress {
        border-color: rgba(96, 165, 250, 0.5);
        background: rgba(59, 130, 246, 0.1);
    }

    .select-trigger.status-completed {
        border-color: rgba(52, 211, 153, 0.5);
        background: rgba(16, 185, 129, 0.1);
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
    }

    .arrow.open {
        transform: rotate(180deg);
    }

    .options-dropdown {
        position: absolute;
        top: calc(100% + 0.5rem);
        left: 0;
        width: 100%;
        z-index: 50;
        overflow: hidden;
        padding: 0.5rem;
        animation: slideDown 0.2s ease;
    }

    @keyframes slideDown {
        from {
            opacity: 0;
            transform: translateY(-10px);
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
        padding: 0.75rem 1rem;
        background: transparent;
        border: none;
        border-radius: var(--radius-md);
        color: var(--text-secondary);
        text-align: left;
        transition: all 0.2s;
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
    }
</style>
