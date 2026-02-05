
import { PublicClientApplication } from '@azure/msal-browser';
import { writable } from 'svelte/store';

// Configuration - User needs to fill these
export const msalConfig = {
    auth: {
        clientId: import.meta.env.VITE_MSAL_CLIENT_ID,
        authority: import.meta.env.VITE_MSAL_AUTHORITY,
        redirectUri: import.meta.env.VITE_MSAL_REDIRECT_URI
    },
    cache: {
        cacheLocation: "sessionStorage",
        storeAuthStateInCookie: false,
    }
};

export const isAuthenticated = writable(false);
export const user = writable(null);
export const accessToken = writable(null);

let msalInstance = null;


export async function initAuth() {
    msalInstance = new PublicClientApplication(msalConfig);
    await msalInstance.initialize();

    // Handle direct redirect response (Redirect Flow)
    try {
        const response = await msalInstance.handleRedirectPromise();
        if (response) {
            msalInstance.setActiveAccount(response.account);
            user.set(response.account);
            isAuthenticated.set(true);
            accessToken.set(response.idToken);
            return;
        }
    } catch (e) {
        console.error("Redirect handling failed:", e);
    }

    // Check if user is already signed in (from cache)
    const accounts = msalInstance.getAllAccounts();
    if (accounts.length > 0) {
        msalInstance.setActiveAccount(accounts[0]);
        user.set(accounts[0]);
        isAuthenticated.set(true);
        await acquireToken();
    }
}


// Scopes for the application itself
// Note: You must use the same Client ID as defined in auth.clientId
const loginRequest = {
    scopes: [`${import.meta.env.VITE_MSAL_CLIENT_ID}/.default`]
};

export async function login() {
    try {
        // Using loginRedirect instead of loginPopup to avoid timeouts/pop-up blockers
        await msalInstance.loginRedirect(loginRequest);
    } catch (e) {
        console.error(e);
    }
}

export async function logout() {
    await msalInstance.logoutPopup();
    user.set(null);
    isAuthenticated.set(false);
    accessToken.set(null);
}

export async function acquireToken() {
    const account = msalInstance.getActiveAccount();
    if (!account) return null;

    try {
        const response = await msalInstance.acquireTokenSilent({
            ...loginRequest,
            account: account
        });
        accessToken.set(response.idToken);
        return response.idToken;
    } catch (e) {
        console.error(e);
        return null;
    }
}
