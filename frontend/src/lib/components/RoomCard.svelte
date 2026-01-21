<script lang="ts">
	import { base } from '$app/paths';
	import type { RaumWithRelations, Raumtyp, Teilprojekt, Funktionsbereich, Verortung } from '$lib/db/types';

	export let room: RaumWithRelations;

	// Helper to unwrap arrays from SurrealDB graph traversal
	function unwrap<T>(value: T | T[] | undefined): T | undefined {
		if (Array.isArray(value)) return value[0];
		return value;
	}

	// Unwrap relations that may be arrays
	$: raumtyp = unwrap(room.raumtyp) as Raumtyp | undefined;
	$: teilprojekt = unwrap(room.teilprojekt) as Teilprojekt | undefined;
	$: funktionsbereich = unwrap(room.funktionsbereich) as Funktionsbereich | undefined;
	$: verortung = unwrap(room.verortung) as Verortung | undefined;

	function formatArea(value: number | undefined): string {
		if (value === undefined || value === null) return '-';
		return `${value.toFixed(2)} m²`;
	}
</script>

<a href="{base}/rooms/{room.nummer}" class="room-card">
	<div class="card-header">
		<span class="room-number">{room.nummer}</span>
		{#if verortung}
			<span class="room-badge badge-verortung">{verortung.name}</span>
		{/if}
	</div>

	<h3 class="room-title">{room.bezeichnung}</h3>

	{#if raumtyp}
		<p class="room-type">{raumtyp.bezeichnung} ({raumtyp.code})</p>
	{/if}

	<div class="room-details">
		{#if teilprojekt}
			<div class="detail-item">
				<span class="detail-label">Teilprojekt</span>
				<span class="detail-value">{teilprojekt.name}</span>
			</div>
		{/if}

		{#if funktionsbereich}
			<div class="detail-item">
				<span class="detail-label">Funktionsbereich</span>
				<span class="detail-value">{funktionsbereich.name}</span>
			</div>
		{/if}

		<div class="detail-item">
			<span class="detail-label">Fläche NUF 1-6</span>
			<span class="detail-value">{formatArea(room.flaeche_nuf_1_6)}</span>
		</div>

		{#if room.personen_max}
			<div class="detail-item">
				<span class="detail-label">Max. Personen</span>
				<span class="detail-value">{room.personen_max}</span>
			</div>
		{/if}
	</div>

	{#if !room.teil_der_beauftragung}
		<div class="not-commissioned">Nicht beauftragt</div>
	{/if}
</a>

<style>
	.room-card {
		display: block;
		background-color: white;
		border: 1px solid #e1e4e8;
		border-radius: 8px;
		padding: 1.25rem;
		text-decoration: none;
		color: inherit;
		transition: box-shadow 0.2s, transform 0.2s;
	}

	.room-card:hover {
		box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
		transform: translateY(-2px);
	}

	.card-header {
		display: flex;
		justify-content: space-between;
		align-items: center;
		margin-bottom: 0.75rem;
	}

	.room-number {
		font-size: 0.9rem;
		font-weight: 600;
		color: #586069;
		background-color: #f1f3f5;
		padding: 0.25rem 0.5rem;
		border-radius: 4px;
	}

	.room-badge {
		font-size: 0.75rem;
		padding: 0.2rem 0.5rem;
		border-radius: 12px;
		font-weight: 500;
	}

	.badge-verortung {
		background-color: #e3f2fd;
		color: #1565c0;
	}

	.room-title {
		font-size: 1.1rem;
		font-weight: 600;
		margin: 0 0 0.5rem 0;
		color: #24292e;
	}

	.room-type {
		font-size: 0.9rem;
		color: #586069;
		margin: 0 0 1rem 0;
	}

	.room-details {
		display: grid;
		grid-template-columns: repeat(2, 1fr);
		gap: 0.75rem;
		font-size: 0.85rem;
	}

	.detail-item {
		display: flex;
		flex-direction: column;
		gap: 0.125rem;
	}

	.detail-label {
		color: #6a737d;
		font-size: 0.75rem;
		text-transform: uppercase;
		letter-spacing: 0.5px;
	}

	.detail-value {
		color: #24292e;
		font-weight: 500;
	}

	.not-commissioned {
		margin-top: 1rem;
		padding: 0.5rem;
		background-color: #fff3cd;
		color: #856404;
		border-radius: 4px;
		font-size: 0.8rem;
		text-align: center;
	}

	/* Large desktop */
	@media (min-width: 1400px) {
		.room-card {
			padding: 1.5rem;
		}

		.room-title {
			font-size: 1.2rem;
		}

		.room-type {
			font-size: 0.95rem;
		}

		.room-details {
			gap: 1rem;
		}
	}

	/* Small desktop / tablet landscape */
	@media (max-width: 1100px) {
		.room-card {
			padding: 1rem;
		}

		.room-title {
			font-size: 1.05rem;
		}

		.room-details {
			font-size: 0.8rem;
		}

		.detail-label {
			font-size: 0.7rem;
		}
	}

	/* Tablet */
	@media (max-width: 768px) {
		.card-header {
			flex-wrap: wrap;
			gap: 0.5rem;
		}

		.room-badge {
			font-size: 0.7rem;
		}
	}

	/* Mobile */
	@media (max-width: 600px) {
		.room-card {
			padding: 1rem;
		}

		.room-title {
			font-size: 1rem;
		}

		.room-details {
			grid-template-columns: repeat(2, 1fr);
			gap: 0.5rem;
		}
	}

	/* Small mobile */
	@media (max-width: 400px) {
		.room-details {
			grid-template-columns: 1fr;
		}

		.detail-label {
			font-size: 0.7rem;
		}

		.detail-value {
			font-size: 0.85rem;
		}
	}
</style>
