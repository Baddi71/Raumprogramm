<script lang="ts">
	import { authStore, user, isLoading } from '$lib/auth';
	import { base } from '$app/paths';

	let mobileMenuOpen = false;

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

	function toggleMenu() {
		mobileMenuOpen = !mobileMenuOpen;
	}

	function closeMenu() {
		mobileMenuOpen = false;
	}
</script>

<nav class="navbar">
	<div class="navbar-brand">
		<a href="{base}/" class="navbar-logo">Raum-Editor</a>
	</div>

	<button class="hamburger" class:open={mobileMenuOpen} on:click={toggleMenu} aria-label="Menu">
		<span></span>
		<span></span>
		<span></span>
	</button>

	<div class="navbar-content" class:open={mobileMenuOpen}>
		<div class="navbar-menu">
			<a href="{base}/rooms" class="navbar-link" on:click={closeMenu}>Räume</a>
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

	/* Hamburger menu */
	.hamburger {
		display: none;
		flex-direction: column;
		justify-content: space-around;
		width: 24px;
		height: 20px;
		background: transparent;
		border: none;
		cursor: pointer;
		padding: 0;
		z-index: 10;
	}

	.hamburger span {
		width: 100%;
		height: 2px;
		background-color: white;
		transition: all 0.3s ease;
		transform-origin: center;
	}

	.hamburger.open span:nth-child(1) {
		transform: rotate(45deg) translate(5px, 5px);
	}

	.hamburger.open span:nth-child(2) {
		opacity: 0;
	}

	.hamburger.open span:nth-child(3) {
		transform: rotate(-45deg) translate(6px, -6px);
	}

	/* Large desktop */
	@media (min-width: 1400px) {
		.navbar {
			padding: 0.75rem 3rem;
		}

		.navbar-logo {
			font-size: 1.4rem;
		}

		.navbar-menu {
			gap: 2rem;
		}

		.navbar-link {
			font-size: 1rem;
		}
	}

	/* Small desktop / large tablet */
	@media (max-width: 1024px) {
		.navbar {
			padding: 0.75rem 1rem;
		}

		.navbar-menu {
			gap: 1rem;
		}

		.navbar-auth {
			gap: 0.75rem;
		}

		.btn {
			padding: 0.4rem 0.75rem;
			font-size: 0.85rem;
		}
	}

	/* Tablet and mobile */
	@media (max-width: 768px) {
		.hamburger {
			display: flex;
		}

		.navbar-content {
			position: fixed;
			top: 0;
			right: -100%;
			width: 70%;
			max-width: 300px;
			height: 100vh;
			background-color: #1a1a2e;
			flex-direction: column;
			padding: 4rem 1.5rem 1.5rem;
			transition: right 0.3s ease;
			box-shadow: -2px 0 10px rgba(0, 0, 0, 0.3);
			z-index: 5;
		}

		.navbar-content.open {
			right: 0;
		}

		.navbar-menu {
			flex-direction: column;
			gap: 1rem;
			margin-bottom: 2rem;
		}

		.navbar-link {
			font-size: 1.1rem;
			padding: 0.5rem 0;
		}

		.navbar-auth {
			flex-direction: column;
			gap: 0.75rem;
		}

		.user-name {
			text-align: center;
		}

		.btn {
			width: 100%;
			text-align: center;
			padding: 0.5rem 1rem;
			font-size: 0.9rem;
		}
	}

	/* Small mobile */
	@media (max-width: 480px) {
		.navbar {
			padding: 0.5rem 0.75rem;
		}

		.navbar-logo {
			font-size: 1.1rem;
		}

		.navbar-content {
			width: 85%;
		}
	}
</style>
