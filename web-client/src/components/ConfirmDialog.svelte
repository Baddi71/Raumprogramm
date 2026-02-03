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

{#if isOpen}
    <div
        class="modal-backdrop"
        on:click={handleBackdropClick}
        on:keydown={handleKeydown}
        role="dialog"
        aria-modal="true"
        tabindex="-1"
    >
        <div class="modal-content glass-panel">
            <h3 class="modal-title">{title}</h3>
            <p class="modal-message">{message}</p>

            <div class="modal-actions">
                <button class="btn-cancel" on:click={handleCancel}>
                    {cancelText}
                </button>
                <button class="btn-confirm" on:click={handleConfirm}>
                    {confirmText}
                </button>
            </div>
        </div>
    </div>
{/if}

<style>
    .modal-backdrop {
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: rgba(0, 0, 0, 0.6);
        backdrop-filter: blur(8px);
        -webkit-backdrop-filter: blur(8px);
        display: flex;
        align-items: center;
        justify-content: center;
        z-index: 1000;
        animation: fadeIn 0.2s ease-out;
    }

    @keyframes fadeIn {
        from {
            opacity: 0;
        }
        to {
            opacity: 1;
        }
    }

    .modal-content {
        max-width: 420px;
        width: 90%;
        padding: 2rem;
        animation: slideUp 0.3s ease-out;
    }

    @keyframes slideUp {
        from {
            opacity: 0;
            transform: translateY(20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    .modal-title {
        margin: 0 0 1rem 0;
        font-size: 1.5rem;
        font-weight: 700;
        color: var(--text-primary);
    }

    .modal-message {
        margin: 0 0 2rem 0;
        font-size: 1rem;
        color: var(--text-secondary);
        line-height: 1.6;
    }

    .modal-actions {
        display: flex;
        gap: 0.75rem;
        justify-content: flex-end;
    }

    .btn-cancel,
    .btn-confirm {
        padding: 0.75rem 1.5rem;
        font-weight: 600;
        font-size: 0.95rem;
        border-radius: var(--radius-md);
        transition: all 0.2s ease;
        cursor: pointer;
        border: none;
    }

    .btn-cancel {
        background: rgba(255, 255, 255, 0.1);
        color: var(--text-primary);
        border: 1px solid var(--glass-border);
    }

    .btn-cancel:hover {
        background: rgba(255, 255, 255, 0.15);
        transform: translateY(-1px);
    }

    .btn-confirm {
        background: linear-gradient(135deg, #ef4444 0%, #dc2626 100%);
        color: white;
        box-shadow: 0 4px 12px rgba(239, 68, 68, 0.3);
    }

    .btn-confirm:hover {
        filter: brightness(1.1);
        transform: translateY(-1px);
        box-shadow: 0 6px 16px rgba(239, 68, 68, 0.4);
    }
</style>
