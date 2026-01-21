<script lang="ts">
	import { onMount } from 'svelte';
	import { Navbar } from '$lib/components';
	import { authStore, isAuthenticated, isLoading, isConfigured } from '$lib/auth';
	import '../app.css';

	const authConfigured = isConfigured();

	onMount(async () => {
		await authStore.initialize();
	});
</script>

<div class="app-layout">
	<Navbar />

	<main class="main-content">
		{#if !authConfigured}
			<div class="config-warning">
				<h2>Konfiguration erforderlich</h2>
				<p>Azure AD ist nicht konfiguriert. Bitte erstellen Sie eine <code>.env</code> Datei mit:</p>
				<pre>VITE_AZURE_CLIENT_ID=your-client-id
VITE_AZURE_TENANT_ID=your-tenant-id
VITE_SURREAL_ENDPOINT=wss://your-instance.surreal.io/rpc</pre>
				<p>Siehe <code>frontend/README.md</code> für Details zur Einrichtung.</p>
			</div>
		{:else if $isLoading}
			<div class="loading-state">
				<div class="spinner"></div>
				<p>Wird geladen...</p>
			</div>
		{:else if $isAuthenticated}
			<slot />
		{:else}
			<div class="auth-required">
				<h2>Anmeldung erforderlich</h2>
				<p>Bitte melden Sie sich an, um auf die Raumverwaltung zugreifen zu können.</p>
			</div>
		{/if}
	</main>
</div>

<style>
	.app-layout {
		display: flex;
		flex-direction: column;
		min-height: 100vh;
	}

	.main-content {
		flex: 1;
		background-color: #f5f5f5;
	}

	.auth-required {
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
		padding: 3rem;
		text-align: center;
		min-height: calc(100vh - 60px);
	}

	.auth-required h2 {
		color: #24292e;
		margin-bottom: 1rem;
	}

	.auth-required p {
		color: #586069;
		max-width: 400px;
	}

	.loading-state {
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
		padding: 3rem;
		min-height: calc(100vh - 60px);
	}

	.loading-state p {
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

	.config-warning {
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
		padding: 3rem;
		text-align: center;
		min-height: calc(100vh - 60px);
	}

	.config-warning h2 {
		color: #856404;
		margin-bottom: 1rem;
	}

	.config-warning p {
		color: #586069;
		max-width: 500px;
		margin-bottom: 0.5rem;
	}

	.config-warning code {
		background-color: #f1f3f5;
		padding: 0.125rem 0.375rem;
		border-radius: 3px;
		font-size: 0.9em;
	}

	.config-warning pre {
		background-color: #f6f8fa;
		border: 1px solid #e1e4e8;
		border-radius: 6px;
		padding: 1rem;
		text-align: left;
		font-size: 0.85rem;
		margin: 1rem 0;
		overflow-x: auto;
	}

	/* Mobile styles */
	@media (max-width: 768px) {
		.auth-required,
		.loading-state,
		.config-warning {
			padding: 2rem 1rem;
		}

		.auth-required h2,
		.config-warning h2 {
			font-size: 1.25rem;
		}

		.config-warning pre {
			font-size: 0.75rem;
			padding: 0.75rem;
		}
	}
</style>
