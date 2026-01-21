<script lang="ts">
	import { createEventDispatcher } from 'svelte';

	export let currentPage: number;
	export let totalPages: number;

	const dispatch = createEventDispatcher<{ pageChange: number }>();

	function goToPage(page: number) {
		if (page >= 1 && page <= totalPages && page !== currentPage) {
			dispatch('pageChange', page);
		}
	}

	function getVisiblePages(current: number, total: number): (number | string)[] {
		const pages: (number | string)[] = [];
		const delta = 2;

		const rangeStart = Math.max(2, current - delta);
		const rangeEnd = Math.min(total - 1, current + delta);

		pages.push(1);

		if (rangeStart > 2) {
			pages.push('...');
		}

		for (let i = rangeStart; i <= rangeEnd; i++) {
			pages.push(i);
		}

		if (rangeEnd < total - 1) {
			pages.push('...');
		}

		if (total > 1) {
			pages.push(total);
		}

		return pages;
	}

	$: visiblePages = getVisiblePages(currentPage, totalPages);
</script>

<nav class="pagination" aria-label="Seitennavigation">
	<button
		class="page-btn"
		disabled={currentPage === 1}
		on:click={() => goToPage(currentPage - 1)}
		aria-label="Vorherige Seite"
	>
		&laquo;
	</button>

	{#each visiblePages as page}
		{#if page === '...'}
			<span class="page-ellipsis">...</span>
		{:else}
			<button
				class="page-btn"
				class:active={page === currentPage}
				on:click={() => goToPage(+page)}
				aria-label="Seite {page}"
				aria-current={page === currentPage ? 'page' : undefined}
			>
				{page}
			</button>
		{/if}
	{/each}

	<button
		class="page-btn"
		disabled={currentPage === totalPages}
		on:click={() => goToPage(currentPage + 1)}
		aria-label="Nächste Seite"
	>
		&raquo;
	</button>
</nav>

<style>
	.pagination {
		display: flex;
		justify-content: center;
		align-items: center;
		gap: 0.25rem;
		margin: 1.5rem 0;
	}

	.page-btn {
		min-width: 40px;
		height: 40px;
		padding: 0.5rem;
		border: 1px solid #dee2e6;
		background-color: white;
		color: #495057;
		cursor: pointer;
		font-size: 0.9rem;
		border-radius: 4px;
		transition: all 0.2s;
	}

	.page-btn:hover:not(:disabled):not(.active) {
		background-color: #e9ecef;
		border-color: #adb5bd;
	}

	.page-btn:disabled {
		cursor: not-allowed;
		color: #adb5bd;
		background-color: #f8f9fa;
	}

	.page-btn.active {
		background-color: #0078d4;
		border-color: #0078d4;
		color: white;
	}

	.page-ellipsis {
		padding: 0.5rem;
		color: #6c757d;
	}

	/* Mobile styles */
	@media (max-width: 480px) {
		.pagination {
			gap: 0.125rem;
		}

		.page-btn {
			min-width: 36px;
			height: 36px;
			padding: 0.375rem;
			font-size: 0.85rem;
		}

		.page-ellipsis {
			padding: 0.25rem;
		}
	}
</style>
