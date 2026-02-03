
import { PublicClientApplication } from '@azure/msal-browser';
import { writable } from 'svelte/store';

// Configuration - User needs to fill these
export const msalConfig = {
    auth: {
        clientId: "f4e6ee3d-cd12-4dca-b884-a9b4bdda8b10", // Replace with your ID
        authority: "https://login.microsoftonline.com/55b4a26c-3686-4d33-b09c-cbc23b7d396c", // Replace with your ID
        redirectUri: import.meta.env.DEV
            ? "http://localhost:5173"
            : "http://raumprogramm.u2projektagentur.de/" // Update this in Azure Portal if needed
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
            accessToken.set(response.accessToken);
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
    scopes: ["f4e6ee3d-cd12-4dca-b884-a9b4bdda8b10/.default"]
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
        accessToken.set(response.accessToken);
        return response.accessToken;
    } catch (e) {
        console.error(e);
        return null;
    }
}
