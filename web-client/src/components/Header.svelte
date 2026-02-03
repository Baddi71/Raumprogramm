<script>
  export let user; // Store
  export let login;
  export let logout;
  export let isAuthenticated; // Store
</script>

<header class="glass-panel">
  <div class="logo text-gradient">Raumprogramm DB</div>
  <div class="user-actions">
    {#if $isAuthenticated}
      <div class="user-pill">
        <span class="avatar">{$user?.name?.[0] || "U"}</span>
        <span class="username">{$user?.name || "User"}</span>
      </div>
      <button class="btn-secondary" on:click={logout}>Abmelden</button>
    {/if}
  </div>
</header>

<header class="glass-panel">
  <div class="logo text-gradient">Raumprogramm DB</div>
  <div class="user-actions">
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
</style>
