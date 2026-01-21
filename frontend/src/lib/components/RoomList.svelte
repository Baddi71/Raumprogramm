<script lang="ts">
	import { onMount } from 'svelte';
	import FilterBar from './FilterBar.svelte';
	import RoomCard from './RoomCard.svelte';
	import Pagination from './Pagination.svelte';
	import { getPaginatedRooms, getAllLookupData, type LookupData } from '$lib/db/queries';
	import type { RaumWithRelations, RoomFilter, PaginatedResult } from '$lib/db/types';

	let loading = true;
	let error: string | null = null;
	let rooms: PaginatedResult<RaumWithRelations> | null = null;
	let lookupData: LookupData | null = null;
	let filter: RoomFilter = {};
	let currentPage = 1;
	const pageSize = 12;

	onMount(async () => {
		await loadLookupData();
		await loadRooms();
	});

	async function loadLookupData() {
		try {
			lookupData = await getAllLookupData();
		} catch (err) {
			console.error('Failed to load lookup data:', err);
		}
	}

	async function loadRooms() {
		loading = true;
		error = null;

		try {
			rooms = await getPaginatedRooms(filter, { page: currentPage, pageSize });
		} catch (err) {
			error = err instanceof Error ? err.message : 'Fehler beim Laden der Räume';
			console.error('Failed to load rooms:', err);
		} finally {
			loading = false;
		}
	}

	function handleFilter(event: CustomEvent<RoomFilter>) {
		filter = event.detail;
		currentPage = 1;
		loadRooms();
	}

	function handlePageChange(event: CustomEvent<number>) {
		currentPage = event.detail;
		loadRooms();
	}
</script>

<div class="room-list-container">
	{#if lookupData}
		<FilterBar
			teilprojekte={lookupData.teilprojekte}
			funktionsbereiche={lookupData.funktionsbereiche}
			verortungen={lookupData.verortungen}
			{filter}
			on:filter={handleFilter}
		/>
	{/if}

	{#if loading}
		<div class="loading-state">
			<div class="spinner"></div>
			<p>Räume werden geladen...</p>
		</div>
	{:else if error}
		<div class="error-state">
			<p class="error-message">{error}</p>
			<button class="retry-btn" on:click={loadRooms}>Erneut versuchen</button>
		</div>
	{:else if rooms && rooms.data.length > 0}
		<div class="room-grid">
			{#each rooms.data as room (room.id)}
				<RoomCard {room} />
			{/each}
		</div>

		{#if rooms.totalPages > 1}
			<Pagination
				currentPage={rooms.page}
				totalPages={rooms.totalPages}
				on:pageChange={handlePageChange}
			/>
		{/if}

		<div class="result-info">
			Zeige {(rooms.page - 1) * rooms.pageSize + 1} - {Math.min(rooms.page * rooms.pageSize, rooms.total)} von {rooms.total} Räumen
		</div>
	{:else}
		<div class="empty-state">
			<p>Keine Räume gefunden.</p>
			{#if Object.keys(filter).length > 0}
				<p class="empty-hint">Versuchen Sie, die Filter anzupassen.</p>
			{/if}
		</div>
	{/if}
</div>

<style>
	.room-list-container {
		padding: 1.5rem;
		max-width: 1400px;
		margin: 0 auto;
	}

	.room-grid {
		display: grid;
		grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
		gap: 1.25rem;
		margin-bottom: 1.5rem;
	}

	.loading-state,
	.error-state,
	.empty-state {
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
		padding: 3rem;
		text-align: center;
		color: #586069;
	}

	.spinner {
		width: 40px;
		height: 40px;
		border: 3px solid #e1e4e8;
		border-top-color: #0078d4;
		border-radius: 50%;
		animation: spin 1s linear infinite;
		margin-bottom: 1rem;
	}

	@keyframes spin {
		to {
			transform: rotate(360deg);
		}
	}

	.error-state {
		color: #cb2431;
	}

	.error-message {
		margin-bottom: 1rem;
	}

	.retry-btn {
		padding: 0.5rem 1rem;
		background-color: #0078d4;
		color: white;
		border: none;
		border-radius: 4px;
		cursor: pointer;
		font-size: 0.9rem;
	}

	.retry-btn:hover {
		background-color: #006cbe;
	}

	.empty-hint {
		font-size: 0.9rem;
		color: #6a737d;
	}

	.result-info {
		text-align: center;
		color: #586069;
		font-size: 0.9rem;
		padding: 1rem;
	}
</style>
