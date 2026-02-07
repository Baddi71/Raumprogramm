<script>
    export let isOpen = false;
    export let title = "Bestätigen";
    export let message = "Sind Sie sicher?";
    export let confirmText = "Bestätigen";
    export let cancelText = "Abbrechen";
    export let onConfirm = () => {};
    export let onCancel = () => {};

    function handleConfirm() {
        onConfirm();
        isOpen = false;
    }

    function handleCancel() {
        onCancel();
        isOpen = false;
    }

    function handleBackdropClick(e) {
        if (e.target === e.currentTarget) {
            handleCancel();
        }
    }

    function handleKeydown(e) {
        if (e.key === "Escape") {
            handleCancel();
        }
    }
</script>

<div
    class="fixed inset-0 z-[1000] flex items-center justify-center bg-black/60 backdrop-blur-sm animate-in fade-in duration-200"
    on:click={handleBackdropClick}
    on:keydown={handleKeydown}
    role="dialog"
    aria-modal="true"
    tabindex="-1"
>
    <div
        class="glass-panel w-[90%] max-w-[420px] p-8 animate-in slide-in-from-bottom-4 duration-300"
    >
        <h3 class="mb-4 text-2xl font-bold text-text-primary">{title}</h3>
        <p class="mb-8 text-base leading-relaxed text-text-secondary">
            {message}
        </p>

        <div class="flex justify-end gap-3">
            <button class="btn-secondary" on:click={handleCancel}>
                {cancelText}
            </button>
            <button
                class="rounded-md bg-gradient-to-br from-[#ef4444] to-[#dc2626] px-6 py-3 text-[0.95rem] font-semibold text-white shadow-lg transition-all hover:-translate-y-[1px] hover:brightness-110 hover:shadow-xl"
                on:click={handleConfirm}
            >
                {confirmText}
            </button>
        </div>
    </div>
</div>

<style>
    /* Tailwind handles all styles */
</style>
