<script lang="ts">
	import { onMount } from 'svelte';
	import { page } from '$app/stores';
	import { goto } from '$app/navigation';
	import { base } from '$app/paths';
	import { RoomEditor } from '$lib/components';
	import { getRoomWithRelations, getAllLookupData, type LookupData } from '$lib/db/queries';
	import type { RaumWithRelations } from '$lib/db/types';

	let room: RaumWithRelations | null = null;
	let lookupData: LookupData | null = null;
	let loading = true;
	let error: string | null = null;

	$: roomId = $page.params.id;

	onMount(async () => {
		await loadData();
	});

	async function loadData() {
		loading = true;
		error = null;

		try {
			const [roomData, lookup] = await Promise.all([
				getRoomWithRelations(roomId),
				getAllLookupData()
			]);

			if (!roomData) {
				error = `Raum ${roomId} nicht gefunden`;
			} else {
				room = roomData;
				lookupData = lookup;
			}
		} catch (err) {
			error = err instanceof Error ? err.message : 'Fehler beim Laden des Raums';
			console.error('Failed to load room:', err);
		} finally {
			loading = false;
		}
	}

	function handleSaved() {
		goto(`${base}/rooms`);
	}

	function handleCancel() {
		goto(`${base}/rooms`);
	}
</script>

<svelte:head>
	<title>{room ? `Raum ${room.nummer}` : 'Raum laden...'} | Raum-Editor</title>
</svelte:head>

<div class="room-edit-page">
	{#if loading}
		<div class="loading-state">
			<div class="spinner"></div>
			<p>Raum wird geladen...</p>
		</div>
	{:else if error}
		<div class="error-state">
			<h2>Fehler</h2>
			<p class="error-message">{error}</p>
			<a href="{base}/rooms" class="btn btn-secondary">Zurück zur Übersicht</a>
		</div>
	{:else if room && lookupData}
		<RoomEditor {room} {lookupData} on:saved={handleSaved} on:cancel={handleCancel} />
	{/if}
</div>

<style>
	.room-edit-page {
		min-height: calc(100vh - 60px);
		background-color: white;
	}

	.loading-state,
	.error-state {
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
		padding: 3rem;
		text-align: center;
		min-height: calc(100vh - 60px);
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

	.error-state h2 {
		color: #cb2431;
		margin-bottom: 0.5rem;
	}

	.error-message {
		color: #586069;
		margin-bottom: 1.5rem;
	}

	.btn {
		display: inline-block;
		padding: 0.625rem 1.25rem;
		border-radius: 4px;
		font-weight: 500;
		font-size: 0.9rem;
		text-decoration: none;
	}

	.btn-secondary {
		background-color: white;
		color: #24292e;
		border: 1px solid #e1e4e8;
	}

	.btn-secondary:hover {
		background-color: #f6f8fa;
		text-decoration: none;
	}
</style>
