
<script>
  import { onMount } from 'svelte';
  import { initAuth, isAuthenticated, user, login, logout, accessToken } from './lib/auth';
  import { connectDB, db } from './lib/surreal';
  import Header from './components/Header.svelte';
  import RoomList from './components/RoomList.svelte';
  import RoomDetail from './components/RoomDetail.svelte';


  let currentView = 'list';
  let selectedRoomId = null;
  let dbReady = false;
  let dbError = null;

  onMount(async () => {
    await initAuth();
    
    // Subscribe to token changes to connect to DB
    accessToken.subscribe(async (token) => {
        if (token) {
            dbReady = false;
            dbError = null;
            try {
                await connectDB(token);
                dbReady = true;
            } catch (e) {
                console.error("DB Connection failed", e);
                dbError = e.message;
            }
        }
    });
  });

  function handleNavigate(view, id = null) {
    currentView = view;
    selectedRoomId = id;
  }
</script>

<main>
  <Header {user} {login} {logout} {isAuthenticated} />

  {#if $isAuthenticated}
    {#if dbReady}
        <div class="content">
        {#if currentView === 'list'}
            <RoomList on:select={(e) => handleNavigate('detail', e.detail)} />
        {:else if currentView === 'detail'}
            <RoomDetail id={selectedRoomId} on:back={() => handleNavigate('list')} />
        {/if}
        </div>
    {:else if dbError}
        <div class="status-container glass-panel error">
            <h2>Verbindungsfehler</h2>
            <p class="error-detail">{dbError}</p>
            <p><small>Bitte prüfen Sie die Datenbankkonfiguration.</small></p>
        </div>
    {:else}
        <div class="status-container glass-panel">
            <div class="spinner"></div>
            <p>Verbinde mit Raum-Datenbank...</p>
        </div>
    {/if}
  {:else}
    <div class="login-container">
        <div class="login-card glass-panel">
            <h1 class="text-gradient">Raumprogramm</h1>
            <p>Bitte melden Sie sich an, um Zugriff auf die Raumdatenbank zu erhalten.</p>
            <button class="btn-primary" on:click={login}>
                Mit Microsoft anmelden
            </button>
        </div>
    </div>
  {/if}
</main>

<style>
  main {
    min-height: 100vh;
    display: flex;
    flex-direction: column;
  }
  
  .content {
    padding: 2rem;
    max-width: 1400px;
    margin: 0 auto;
    width: 100%;
    flex: 1;
  }

  /* Login & Status Styles */
  .login-container {
    flex: 1;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 1rem;
  }

  .login-card {
    padding: 3rem;
    text-align: center;
    max-width: 480px;
    width: 100%;
    display: flex;
    flex-direction: column;
    gap: 1.5rem;
  }

  h1 {
    font-size: 3rem;
    font-weight: 800;
    margin: 0;
    line-height: 1.2;
  }

  .status-container {
    margin: 4rem auto;
    padding: 2rem;
    max-width: 400px;
    text-align: center;
  }
  
  .status-container.error {
    border-color: rgba(239, 68, 68, 0.5);
    background: rgba(239, 68, 68, 0.1);
  }

  .spinner {
    width: 40px;
    height: 40px;
    border: 3px solid rgba(255,255,255,0.3);
    border-radius: 50%;
    border-top-color: var(--primary);
    animation: spin 1s ease-in-out infinite;
    margin: 0 auto 1rem;
  }

  @keyframes spin {
    to { transform: rotate(360deg); }
  }
</style>
