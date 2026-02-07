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

<header
  class="glass-panel sticky top-0 z-[100] m-4 flex items-center justify-between rounded-2xl border-b border-glass-border px-8 py-3 dark:bg-[#0f0c29]/60 bg-white/60 backdrop-blur-xl"
>
  <div class="text-gradient text-2xl font-extrabold -tracking-wide">
    Raumprogramm DB
  </div>
  <div class="flex items-center gap-4">
    <button
      class="flex h-10 w-10 items-center justify-center rounded-full border border-white/10 bg-white/5 text-text-primary transition-colors hover:bg-white/15 hover:text-primary"
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
      <div
        class="flex items-center gap-2 rounded-full border border-white/10 bg-white/5 p-1 pr-3"
      >
        <span
          class="flex h-8 w-8 items-center justify-center rounded-full bg-gradient-to-br from-primary to-secondary text-sm font-bold text-white"
          >{$user?.name?.[0] || "U"}</span
        >
        <span class="text-sm font-medium">{$user?.name || "User"}</span>
      </div>
      <button class="btn-secondary" on:click={logout}>Abmelden</button>
    {/if}
  </div>
</header>
