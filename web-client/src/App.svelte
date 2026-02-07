<script>
  import { onMount } from "svelte";
  import {
    initAuth,
    isAuthenticated,
    user,
    login,
    logout,
    accessToken,
  } from "./lib/auth";
  import { connectDB, db } from "./lib/surreal";
  import Header from "./components/Header.svelte";
  import RoomList from "./components/RoomList.svelte";
  import RoomDetail from "./components/RoomDetail.svelte";

  let currentView = "list";
  let selectedRoomId = null;
  let dbReady = false;
  let dbError = null;

  onMount(async () => {
    await initAuth();

    // Subscribe to token changes to connect to DB
    user.subscribe(async (user) => {
      if (user) {
        dbReady = false;
        dbError = null;
        try {
          await connectDB(user);
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

<main class="flex min-h-screen flex-col">
  <Header {user} {logout} {isAuthenticated} />

  {#if $isAuthenticated}
    {#if dbReady}
      <div class="mx-auto w-full max-w-[1400px] flex-1 p-8">
        {#if currentView === "list"}
          <RoomList on:select={(e) => handleNavigate("detail", e.detail)} />
        {:else if currentView === "detail"}
          <RoomDetail
            id={selectedRoomId}
            on:back={() => handleNavigate("list")}
          />
        {/if}
      </div>
    {:else if dbError}
      <div
        class="glass-panel mx-auto my-16 max-w-[400px] border-error/50 bg-error/10 p-8 text-center text-error"
      >
        <h2 class="mb-4 text-xl font-bold">Verbindungsfehler</h2>
        <p class="mb-4">{dbError}</p>
        <p>
          <small class="opacity-75"
            >Bitte prüfen Sie die Datenbankkonfiguration.</small
          >
        </p>
      </div>
    {:else}
      <div class="glass-panel mx-auto my-16 max-w-[400px] p-8 text-center">
        <div
          class="spinner mx-auto mb-4 h-10 w-10 rounded-full border-[3px] border-white/30 border-t-primary animate-spin"
        ></div>
        <p>Verbinde mit Raum-Datenbank...</p>
      </div>
    {/if}
  {:else}
    <div class="flex flex-1 items-center justify-center p-4">
      <div
        class="glass-panel w-full max-w-[480px] p-12 text-center flex flex-col gap-6"
      >
        <h1 class="text-gradient text-5xl font-extrabold leading-tight">
          Raumprogramm
        </h1>
        <p class="text-text-secondary">
          Bitte melden Sie sich an, um Zugriff auf die Raumdatenbank zu
          erhalten.
        </p>
        <button class="btn-primary" on:click={login}>
          Mit Microsoft anmelden
        </button>
      </div>
    </div>
  {/if}
</main>
