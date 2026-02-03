<script>
  import { onMount } from "svelte";

  export let user; // Store
  export let logout;
  export let isAuthenticated; // Store

  let theme = "light";

  onMount(() => {
    // Check local storage or system preference
    const savedTheme = localStorage.getItem("theme");
    if (savedTheme) {
      theme = savedTheme;
    } else if (window.matchMedia("(prefers-color-scheme: dark)").matches) {
      theme = "dark";
    }

    applyTheme(theme);
  });

  function toggleTheme() {
    theme = theme === "dark" ? "light" : "dark";
    applyTheme(theme);
    localStorage.setItem("theme", theme);
  }

  function applyTheme(newTheme) {
    if (newTheme === "dark") {
      document.documentElement.setAttribute("data-theme", "dark");
    } else {
      document.documentElement.removeAttribute("data-theme");
    }
  }
</script>

<header class="glass-panel">
  <div class="logo text-gradient">Raumprogramm DB</div>
  <div class="user-actions">
    <button
      class="theme-toggle"
      on:click={toggleTheme}
      aria-label="Toggle theme"
    >
      {#if theme === "dark"}
        <!-- Sun icon for dark mode -->
        <svg
          xmlns="http://www.w3.org/2000/svg"
          width="20"
          height="20"
          viewBox="0 0 24 24"
          fill="none"
          stroke="currentColor"
          stroke-width="2"
          stroke-linecap="round"
          stroke-linejoin="round"
        >
          <circle cx="12" cy="12" r="5"></circle>
          <line x1="12" y1="1" x2="12" y2="3"></line>
          <line x1="12" y1="21" x2="12" y2="23"></line>
          <line x1="4.22" y1="4.22" x2="5.64" y2="5.64"></line>
          <line x1="18.36" y1="18.36" x2="19.78" y2="19.78"></line>
          <line x1="1" y1="12" x2="3" y2="12"></line>
          <line x1="21" y1="12" x2="23" y2="12"></line>
          <line x1="4.22" y1="19.78" x2="5.64" y2="18.36"></line>
          <line x1="18.36" y1="5.64" x2="19.78" y2="4.22"></line>
        </svg>
      {:else}
        <!-- Moon icon for light mode -->
        <svg
          xmlns="http://www.w3.org/2000/svg"
          width="20"
          height="20"
          viewBox="0 0 24 24"
          fill="none"
          stroke="currentColor"
          stroke-width="2"
          stroke-linecap="round"
          stroke-linejoin="round"
        >
          <path d="M21 12.79A9 9 0 1 1 11.21 3 7 7 0 0 0 21 12.79z"></path>
        </svg>
      {/if}
    </button>

    {#if $isAuthenticated}
      <div class="user-pill">
        <span class="avatar">{$user?.name?.[0] || "U"}</span>
        <span class="username">{$user?.name || "User"}</span>
      </div>
      <button class="btn-secondary" on:click={logout}>Abmelden</button>
    {/if}
  </div>
</header>

<style>
  header {
    background: rgba(15, 12, 41, 0.6); /* Slightly darker glass for header */
    padding: 0.8rem 2rem;
    display: flex;
    justify-content: space-between;
    align-items: center;
    position: sticky;
    top: 0;
    z-index: 100;
    margin: 1rem;
    border-radius: 16px;
    border-bottom: 1px solid var(--glass-border);
  }

  .logo {
    font-weight: 800;
    font-size: 1.5rem;
    letter-spacing: -0.02em;
  }

  .user-actions {
    display: flex;
    gap: 1rem;
    align-items: center;
  }

  .user-pill {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    background: rgba(255, 255, 255, 0.05);
    padding: 0.25rem 0.75rem 0.25rem 0.25rem;
    border-radius: 50px;
    border: 1px solid rgba(255, 255, 255, 0.1);
  }

  .avatar {
    width: 32px;
    height: 32px;
    background: linear-gradient(135deg, var(--primary), var(--secondary));
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-weight: bold;
    font-size: 0.9rem;
  }

  .username {
    font-size: 0.9rem;
    font-weight: 500;
  }
  .theme-toggle {
    width: 40px;
    height: 40px;
    border-radius: 50%;
    background: rgba(255, 255, 255, 0.05);
    border: 1px solid rgba(255, 255, 255, 0.1);
    color: var(--text-primary);
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 0;
  }

  .theme-toggle:hover {
    background: rgba(255, 255, 255, 0.15);
    color: var(--primary);
  }
</style>
