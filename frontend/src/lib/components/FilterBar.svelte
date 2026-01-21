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
		display: flex;
		flex-wrap: wrap;
		gap: 1rem;
		padding: 1rem;
		background-color: #f8f9fa;
		border-radius: 8px;
		margin-bottom: 1.5rem;
		align-items: center;
	}

	.search-box {
		flex: 1;
		min-width: 250px;
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
		gap: 0.75rem;
		flex-wrap: wrap;
	}

	.filter-select {
		padding: 0.625rem 1rem;
		border: 1px solid #dee2e6;
		border-radius: 4px;
		font-size: 0.9rem;
		background-color: white;
		cursor: pointer;
		min-width: 180px;
	}

	.filter-select:focus {
		outline: none;
		border-color: #0078d4;
	}

	.clear-btn {
		padding: 0.625rem 1rem;
		background-color: transparent;
		border: 1px solid #6c757d;
		border-radius: 4px;
		color: #6c757d;
		cursor: pointer;
		font-size: 0.9rem;
		transition: all 0.2s;
	}

	.clear-btn:hover {
		background-color: #6c757d;
		color: white;
	}
</style>
