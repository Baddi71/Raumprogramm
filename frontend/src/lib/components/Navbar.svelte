<script lang="ts">
	import { authStore, user, isLoading } from '$lib/auth';
	import { base } from '$app/paths';

	async function handleLogin() {
		try {
			await authStore.login();
		} catch (error) {
			console.error('Login failed:', error);
		}
	}

	async function handleLogout() {
		try {
			await authStore.logout();
		} catch (error) {
			console.error('Logout failed:', error);
		}
	}
</script>

<nav class="navbar">
	<div class="navbar-brand">
		<a href="{base}/" class="navbar-logo">Raum-Editor</a>
	</div>

	<div class="navbar-menu">
		<a href="{base}/rooms" class="navbar-link">Räume</a>
	</div>

	<div class="navbar-auth">
		{#if $isLoading}
			<span class="loading">Laden...</span>
		{:else if $user}
			<span class="user-name">{$user.name}</span>
			<button class="btn btn-secondary" on:click={handleLogout}>Abmelden</button>
		{:else}
			<button class="btn btn-primary" on:click={handleLogin}>Anmelden</button>
		{/if}
	</div>
</nav>

<style>
	.navbar {
		display: flex;
		align-items: center;
		justify-content: space-between;
		padding: 0.75rem 1.5rem;
		background-color: #1a1a2e;
		color: white;
		box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	}

	.navbar-brand {
		font-weight: 600;
	}

	.navbar-logo {
		color: white;
		text-decoration: none;
		font-size: 1.25rem;
	}

	.navbar-logo:hover {
		color: #8892b0;
	}

	.navbar-menu {
		display: flex;
		gap: 1.5rem;
	}

	.navbar-link {
		color: #ccd6f6;
		text-decoration: none;
		font-weight: 500;
		transition: color 0.2s;
	}

	.navbar-link:hover {
		color: white;
	}

	.navbar-auth {
		display: flex;
		align-items: center;
		gap: 1rem;
	}

	.user-name {
		color: #8892b0;
		font-size: 0.9rem;
	}

	.loading {
		color: #8892b0;
		font-size: 0.9rem;
	}

	.btn {
		padding: 0.5rem 1rem;
		border: none;
		border-radius: 4px;
		cursor: pointer;
		font-weight: 500;
		font-size: 0.9rem;
		transition: background-color 0.2s;
	}

	.btn-primary {
		background-color: #0078d4;
		color: white;
	}

	.btn-primary:hover {
		background-color: #006cbe;
	}

	.btn-secondary {
		background-color: transparent;
		color: #ccd6f6;
		border: 1px solid #8892b0;
	}

	.btn-secondary:hover {
		background-color: rgba(255, 255, 255, 0.1);
	}
</style>
