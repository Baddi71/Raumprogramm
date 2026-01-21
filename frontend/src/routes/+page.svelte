<script lang="ts">
	import { base } from '$app/paths';
</script>

<div class="home-page">
	<div class="hero">
		<h1>Raum-Editor</h1>
		<p>Verwaltung von Räumen für die Universitäts-Facilities</p>

		<div class="hero-actions">
			<a href="{base}/rooms" class="btn btn-primary">Räume anzeigen</a>
		</div>
	</div>

</div>

<style>
	.home-page {
		padding: 2rem;
		max-width: 1000px;
		margin: 0 auto;
	}

	.hero {
		text-align: center;
		padding: 3rem 2rem;
		background-color: white;
		border-radius: 12px;
		box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08);
		margin-bottom: 2rem;
	}

	.hero h1 {
		font-size: 2.5rem;
		color: #1a1a2e;
		margin-bottom: 0.5rem;
	}

	.hero p {
		font-size: 1.1rem;
		color: #586069;
		margin-bottom: 2rem;
	}

	.hero-actions {
		display: flex;
		justify-content: center;
		gap: 1rem;
	}

	.btn {
		display: inline-block;
		padding: 0.75rem 1.5rem;
		border-radius: 6px;
		font-weight: 500;
		font-size: 1rem;
		text-decoration: none;
		transition: all 0.2s;
	}

	.btn-primary {
		background-color: #0078d4;
		color: white;
	}

	.btn-primary:hover {
		background-color: #006cbe;
		text-decoration: none;
	}

</style>
