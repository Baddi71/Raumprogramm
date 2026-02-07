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

<div
    class="flex flex-col overflow-hidden rounded-[2px] border border-glass-border bg-white/25"
>
    <div
        class="flex items-center justify-between border-b border-glass-border bg-white/10 px-2 py-1"
    >
        <div
            class="flex gap-2 rounded bg-black/20 p-1 dark:bg-black/20 light:bg-black/5"
        >
            <button
                class="rounded px-3 py-1 text-sm text-text-secondary transition-all hover:bg-white/10 {mode ===
                'edit'
                    ? 'bg-bg-core text-text-primary shadow-sm'
                    : ''}"
                on:click={() => (mode = "edit")}
            >
                Bearbeiten
            </button>
            <button
                class="rounded px-3 py-1 text-sm text-text-secondary transition-all hover:bg-white/10 {mode ===
                'preview'
                    ? 'bg-bg-core text-text-primary shadow-sm'
                    : ''}"
                on:click={() => (mode = "preview")}
            >
                Vorschau
            </button>
        </div>

        {#if mode === "edit"}
            <div class="flex gap-1">
                <button
                    class="flex h-7 w-7 items-center justify-center rounded border border-transparent text-sm font-semibold text-text-secondary transition-colors hover:bg-white/10 hover:text-text-primary"
                    on:click={() => insertText("**", "**")}
                    title="Fett">B</button
                >
                <button
                    class="flex h-7 w-7 items-center justify-center rounded border border-transparent text-sm font-semibold text-text-secondary transition-colors hover:bg-white/10 hover:text-text-primary"
                    on:click={() => insertText("*", "*")}
                    title="Kursiv">I</button
                >
                <button
                    class="flex h-7 w-7 items-center justify-center rounded border border-transparent text-sm font-semibold text-text-secondary transition-colors hover:bg-white/10 hover:text-text-primary"
                    on:click={() => insertText("- ")}
                    title="Liste">•</button
                >
                <button
                    class="flex h-7 w-7 items-center justify-center rounded border border-transparent text-sm font-semibold text-text-secondary transition-colors hover:bg-white/10 hover:text-text-primary"
                    on:click={() => insertText("### ")}
                    title="Überschrift">H</button
                >
            </div>
        {/if}
    </div>

    <div class="relative min-h-[200px]">
        {#if mode === "edit"}
            <textarea
                bind:this={textarea}
                class="h-full min-h-[200px] w-full resize-y bg-transparent p-4 font-mono text-[0.95rem] leading-relaxed text-text-primary outline-none focus:bg-white/2"
                bind:value
                {placeholder}
            ></textarea>
        {:else}
            <div
                class="md-preview min-h-[200px] p-4 text-text-primary leading-relaxed"
            >
                {@html renderedHtml}
                {#if !value}
                    <p class="italic text-text-muted">
                        Keine Beschreibung vorhanden.
                    </p>
                {/if}
            </div>
        {/if}
    </div>
</div>

<style>
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
