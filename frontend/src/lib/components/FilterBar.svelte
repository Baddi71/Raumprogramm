<script lang="ts">
	import { createEventDispatcher } from 'svelte';
	import type { Teilprojekt, Funktionsbereich, Verortung, RoomFilter } from '$lib/db/types';

	export let teilprojekte: Teilprojekt[] = [];
	export let funktionsbereiche: Funktionsbereich[] = [];
	export let verortungen: Verortung[] = [];
	export let filter: RoomFilter = {};

	const dispatch = createEventDispatcher<{ filter: RoomFilter }>();

	let searchValue = filter.search ?? '';
	let selectedTeilprojekt = filter.teilprojekt ?? '';
	let selectedFunktionsbereich = filter.funktionsbereich ?? '';
	let selectedVerortung = filter.verortung ?? '';
	let debounceTimer: ReturnType<typeof setTimeout>;

	function handleSearchInput() {
		clearTimeout(debounceTimer);
		debounceTimer = setTimeout(() => {
			emitFilter();
		}, 300);
	}

	function emitFilter() {
		const newFilter: RoomFilter = {};

		if (searchValue.trim()) {
			newFilter.search = searchValue.trim();
		}
		if (selectedTeilprojekt) {
			newFilter.teilprojekt = selectedTeilprojekt as RoomFilter['teilprojekt'];
		}
		if (selectedFunktionsbereich) {
			newFilter.funktionsbereich = selectedFunktionsbereich as RoomFilter['funktionsbereich'];
		}
		if (selectedVerortung) {
			newFilter.verortung = selectedVerortung as RoomFilter['verortung'];
		}

		dispatch('filter', newFilter);
	}

	function clearFilters() {
		searchValue = '';
		selectedTeilprojekt = '';
		selectedFunktionsbereich = '';
		selectedVerortung = '';
		dispatch('filter', {});
	}

	$: hasFilters = searchValue || selectedTeilprojekt || selectedFunktionsbereich || selectedVerortung;
</script>

<div class="filter-bar">
	<div class="search-box">
		<input
			type="text"
			placeholder="Suche nach Name oder Nummer..."
			bind:value={searchValue}
			on:input={handleSearchInput}
			class="search-input"
		/>
	</div>

	<div class="filter-selects">
		<select
			bind:value={selectedTeilprojekt}
			on:change={emitFilter}
			class="filter-select"
		>
			<option value="">Alle Teilprojekte</option>
			{#each teilprojekte as tp}
				<option value={tp.id}>{tp.name}</option>
			{/each}
		</select>

		<select
			bind:value={selectedFunktionsbereich}
			on:change={emitFilter}
			class="filter-select"
		>
			<option value="">Alle Funktionsbereiche</option>
			{#each funktionsbereiche as fb}
				<option value={fb.id}>{fb.name}</option>
			{/each}
		</select>

		<select
			bind:value={selectedVerortung}
			on:change={emitFilter}
			class="filter-select"
		>
			<option value="">Alle Verortungen</option>
			{#each verortungen as v}
				<option value={v.id}>{v.name}</option>
			{/each}
		</select>
	</div>

	{#if hasFilters}
		<button class="clear-btn" on:click={clearFilters}>
			Filter zurücksetzen
		</button>
	{/if}
</div>

<style>
	.filter-bar {
		display: grid;
		grid-template-columns: 1fr auto auto;
		gap: 1rem;
		padding: 1rem;
		background-color: #f8f9fa;
		border-radius: 8px;
		margin-bottom: 1.5rem;
		align-items: center;
	}

	.search-box {
		min-width: 0;
	}

	.search-input {
		width: 100%;
		padding: 0.625rem 1rem;
		border: 1px solid #dee2e6;
		border-radius: 4px;
		font-size: 0.95rem;
	}

	.search-input:focus {
		outline: none;
		border-color: #0078d4;
		box-shadow: 0 0 0 3px rgba(0, 120, 212, 0.15);
	}

	.filter-selects {
		display: flex;
		gap: 0.5rem;
		flex-wrap: wrap;
	}

	.filter-select {
		padding: 0.5rem 0.75rem;
		border: 1px solid #dee2e6;
		border-radius: 4px;
		font-size: 0.875rem;
		background-color: white;
		cursor: pointer;
		max-width: 200px;
		min-width: 0;
		flex: 1 1 auto;
	}

	.filter-select:focus {
		outline: none;
		border-color: #0078d4;
	}

	.clear-btn {
		padding: 0.5rem 0.75rem;
		background-color: transparent;
		border: 1px solid #6c757d;
		border-radius: 4px;
		color: #6c757d;
		cursor: pointer;
		font-size: 0.875rem;
		transition: all 0.2s;
		white-space: nowrap;
	}

	.clear-btn:hover {
		background-color: #6c757d;
		color: white;
	}

	/* Extra large desktop 1600px+ */
	@media (min-width: 1600px) {
		.filter-bar {
			padding: 1.25rem;
			gap: 1.5rem;
		}

		.search-input {
			font-size: 1rem;
			padding: 0.75rem 1rem;
		}

		.filter-select {
			font-size: 0.95rem;
			padding: 0.625rem 1rem;
			max-width: 220px;
		}

		.clear-btn {
			font-size: 0.95rem;
			padding: 0.625rem 1rem;
		}
	}

	/* Large desktop 1400px - 1600px */
	@media (max-width: 1600px) and (min-width: 1400px) {
		.filter-select {
			max-width: 180px;
		}
	}

	/* Medium desktop 1200px - 1400px */
	@media (max-width: 1400px) and (min-width: 1200px) {
		.filter-bar {
			gap: 0.75rem;
		}

		.filter-select {
			max-width: 160px;
			font-size: 0.8rem;
			padding: 0.45rem 0.6rem;
		}

		.clear-btn {
			font-size: 0.8rem;
			padding: 0.45rem 0.6rem;
		}
	}

	/* Small desktop 1024px - 1200px */
	@media (max-width: 1200px) and (min-width: 1024px) {
		.filter-bar {
			grid-template-columns: 1fr auto;
			grid-template-rows: auto auto;
			gap: 0.75rem;
		}

		.search-box {
			grid-column: 1 / 2;
		}

		.filter-selects {
			grid-column: 1 / 2;
			grid-row: 2;
		}

		.clear-btn {
			grid-column: 2;
			grid-row: 1 / 3;
			align-self: center;
		}

		.filter-select {
			flex: 1 1 30%;
			max-width: none;
			min-width: 120px;
		}
	}

	/* Large tablet 900px - 1024px */
	@media (max-width: 1024px) and (min-width: 900px) {
		.filter-bar {
			grid-template-columns: 1fr auto;
			grid-template-rows: auto auto;
			gap: 0.75rem;
		}

		.search-box {
			grid-column: 1 / -1;
		}

		.filter-selects {
			grid-column: 1;
			grid-row: 2;
		}

		.clear-btn {
			grid-column: 2;
			grid-row: 2;
		}

		.filter-select {
			flex: 1 1 30%;
			max-width: none;
			min-width: 100px;
		}
	}

	/* Tablet 768px - 900px */
	@media (max-width: 900px) and (min-width: 768px) {
		.filter-bar {
			grid-template-columns: 1fr;
			gap: 0.75rem;
		}

		.filter-selects {
			display: grid;
			grid-template-columns: repeat(3, 1fr);
			gap: 0.5rem;
		}

		.filter-select {
			max-width: none;
			width: 100%;
		}

		.clear-btn {
			justify-self: start;
		}
	}

	/* Small tablet / large mobile 600px - 768px */
	@media (max-width: 768px) and (min-width: 600px) {
		.filter-bar {
			grid-template-columns: 1fr;
			gap: 0.75rem;
			padding: 0.875rem;
		}

		.filter-selects {
			display: grid;
			grid-template-columns: repeat(3, 1fr);
			gap: 0.5rem;
		}

		.filter-select {
			max-width: none;
			font-size: 0.8rem;
			padding: 0.5rem;
		}

		.clear-btn {
			justify-self: start;
		}
	}

	/* Mobile 480px - 600px */
	@media (max-width: 600px) and (min-width: 480px) {
		.filter-bar {
			grid-template-columns: 1fr;
			gap: 0.625rem;
			padding: 0.75rem;
		}

		.filter-selects {
			display: grid;
			grid-template-columns: 1fr 1fr;
			gap: 0.5rem;
		}

		.filter-select {
			max-width: none;
			font-size: 0.85rem;
		}

		.filter-select:last-child {
			grid-column: 1 / -1;
		}

		.clear-btn {
			width: 100%;
		}
	}

	/* Small mobile < 480px */
	@media (max-width: 480px) {
		.filter-bar {
			grid-template-columns: 1fr;
			gap: 0.5rem;
			padding: 0.625rem;
		}

		.search-input {
			padding: 0.5rem 0.75rem;
			font-size: 0.9rem;
		}

		.filter-selects {
			display: flex;
			flex-direction: column;
			gap: 0.5rem;
		}

		.filter-select {
			width: 100%;
			max-width: none;
			font-size: 0.875rem;
			padding: 0.5rem 0.75rem;
		}

		.clear-btn {
			width: 100%;
			padding: 0.5rem 0.75rem;
		}
	}
</style>
