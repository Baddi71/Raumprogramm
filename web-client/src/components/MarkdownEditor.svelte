<script>
    import { marked } from "marked";
    import DOMPurify from "dompurify";

    export let value = "";
    export let placeholder = "Beschreibung hier eingeben...";

    let mode = "edit"; // 'edit' | 'preview'
    let renderedHtml = "";
    let textarea; // bind:this reference

    $: if (mode === "preview") {
        renderMarkdown();
    }

    async function renderMarkdown() {
        try {
            const rawHtml = await marked.parse(value || "");
            renderedHtml = DOMPurify.sanitize(rawHtml);
        } catch (e) {
            console.error("Markdown parsing error:", e);
            renderedHtml =
                "<p class='error'>Fehler beim Rendern der Vorschau.</p>";
        }
    }

    function insertText(before, after = "") {
        if (!textarea) return;

        const start = textarea.selectionStart;
        const end = textarea.selectionEnd;
        const text = value.substring(start, end);

        // If wrapping text (e.g., bold), check if already wrapped
        const newText = before + text + after;

        value = value.substring(0, start) + newText + value.substring(end);

        // Restore focus and selection
        setTimeout(() => {
            textarea.focus();
            textarea.setSelectionRange(
                start + before.length,
                end + before.length,
            );
        }, 0);
    }
</script>

<div class="md-editor glass-panel">
    <div class="toolbar">
        <div class="mode-switch">
            <button
                class:active={mode === "edit"}
                on:click={() => (mode = "edit")}
            >
                Bearbeiten
            </button>
            <button
                class:active={mode === "preview"}
                on:click={() => (mode = "preview")}
            >
                Vorschau
            </button>
        </div>

        {#if mode === "edit"}
            <div class="formatting-tools">
                <button on:click={() => insertText("**", "**")} title="Fett"
                    >B</button
                >
                <button on:click={() => insertText("*", "*")} title="Kursiv"
                    >I</button
                >
                <button on:click={() => insertText("- ")} title="Liste"
                    >•</button
                >
                <button on:click={() => insertText("### ")} title="Überschrift"
                    >H</button
                >
            </div>
        {/if}
    </div>

    <div class="editor-content">
        {#if mode === "edit"}
            <textarea
                bind:this={textarea}
                class="md-input"
                bind:value
                {placeholder}
            ></textarea>
        {:else}
            <div class="md-preview text-content">
                {@html renderedHtml}
                {#if !value}
                    <p class="empty-state">Keine Beschreibung vorhanden.</p>
                {/if}
            </div>
        {/if}
    </div>
</div>

<style>
    .md-editor {
        display: flex;
        flex-direction: column;
        overflow: hidden;
        background: rgba(255, 255, 255, 0.03);
    }

    .toolbar {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 0.5rem 1rem;
        border-bottom: 1px solid var(--glass-border);
        background: rgba(255, 255, 255, 0.02);
    }

    .mode-switch {
        display: flex;
        gap: 0.5rem;
        background: rgba(0, 0, 0, 0.2);
        padding: 0.25rem;
        border-radius: var(--radius-md);
    }

    /* Use :global to match root attribute from component style scope */
    :global(:root[data-theme="light"]) .mode-switch {
        background: rgba(0, 0, 0, 0.05);
    }

    .mode-switch button {
        padding: 0.25rem 0.75rem;
        font-size: 0.85rem;
        color: var(--text-secondary);
        background: transparent;
        border-radius: 6px;
    }

    .mode-switch button.active {
        background: var(--bg-core);
        color: var(--text-primary);
        box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
    }

    .formatting-tools button {
        background: transparent;
        color: var(--text-secondary);
        border: 1px solid transparent;
        border-radius: 4px;
        width: 28px;
        height: 28px;
        font-size: 0.9rem;
        font-weight: 600;
    }

    .formatting-tools button:hover {
        background: rgba(255, 255, 255, 0.1);
        color: var(--text-primary);
    }

    .editor-content {
        position: relative;
        min-height: 200px;
    }

    .md-input {
        width: 100%;
        min-height: 200px;
        padding: 1rem;
        background: transparent;
        border: none;
        color: var(--text-primary);
        font-family: "Courier New", monospace;
        font-size: 0.95rem;
        line-height: 1.6;
        resize: vertical;
    }

    .md-input:focus {
        outline: none;
        background: rgba(255, 255, 255, 0.02);
    }

    .md-preview {
        padding: 1rem;
        min-height: 200px;
        color: var(--text-primary);
        line-height: 1.6;
    }

    .empty-state {
        color: var(--text-muted);
        font-style: italic;
    }

    /* Preview Typography */
    .md-preview :global(h1),
    .md-preview :global(h2),
    .md-preview :global(h3) {
        margin-top: 1.5rem;
        margin-bottom: 0.75rem;
        color: var(--text-primary);
        font-weight: 700;
    }

    .md-preview :global(h1) {
        font-size: 1.5rem;
        border-bottom: 1px solid var(--glass-border);
        padding-bottom: 0.5rem;
    }
    .md-preview :global(h2) {
        font-size: 1.25rem;
    }
    .md-preview :global(h3) {
        font-size: 1.1rem;
    }

    .md-preview :global(p) {
        margin-bottom: 1rem;
    }

    .md-preview :global(ul),
    .md-preview :global(ol) {
        margin-bottom: 1rem;
        padding-left: 1.5rem;
    }

    .md-preview :global(li) {
        margin-bottom: 0.25rem;
    }

    .md-preview :global(strong) {
        color: var(--primary);
    }

    .md-preview :global(code) {
        background: rgba(125, 125, 125, 0.1);
        padding: 0.2rem 0.4rem;
        border-radius: 4px;
        font-family: monospace;
        font-size: 0.9em;
    }

    .md-preview :global(blockquote) {
        border-left: 4px solid var(--primary);
        margin: 1rem 0;
        padding-left: 1rem;
        color: var(--text-secondary);
        font-style: italic;
    }

    .md-preview :global(a) {
        color: var(--primary);
        text-decoration: underline;
    }
</style>
