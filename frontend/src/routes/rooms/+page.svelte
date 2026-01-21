<script lang="ts">
	import { RoomList } from '$lib/components';
</script>

<svelte:head>
	<title>Räume | Raum-Editor</title>
</svelte:head>

<div class="rooms-page">
	<header class="page-header">
		<h1>Räume</h1>
	</header>

	<RoomList />
</div>

<style>
	.rooms-page {
		min-height: 100%;
	}

	.page-header {
		background-color: white;
		padding: 1.5rem;
		border-bottom: 1px solid #e1e4e8;
	}

	.page-header h1 {
		margin: 0;
		font-size: 1.75rem;
		color: #24292e;
		max-width: 1400px;
		margin: 0 auto;
	}

	/* Large desktop */
	@media (min-width: 1600px) {
		.page-header {
			padding: 2rem;
		}

		.page-header h1 {
			font-size: 2rem;
			max-width: 1600px;
		}
	}

	/* Medium desktop */
	@media (max-width: 1200px) {
		.page-header {
			padding: 1.25rem;
		}

		.page-header h1 {
			font-size: 1.5rem;
		}
	}

	/* Tablet */
	@media (max-width: 768px) {
		.page-header {
			padding: 1rem;
		}

		.page-header h1 {
			font-size: 1.35rem;
		}
	}

	/* Mobile */
	@media (max-width: 480px) {
		.page-header {
			padding: 0.875rem;
		}

		.page-header h1 {
			font-size: 1.25rem;
		}
	}
</style>
