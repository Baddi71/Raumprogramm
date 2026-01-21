import type { AccountInfo, AuthenticationResult } from '@azure/msal-browser';
import { getMsalInstance, loginRequest, tokenRequest, isConfigured } from './msalConfig';
import { browser } from '$app/environment';

export interface AuthUser {
	id: string;
	email: string;
	name: string;
	account: AccountInfo;
}

export async function login(): Promise<AuthUser | null> {
	if (!browser) return null;
	if (!isConfigured()) {
		throw new Error('Azure AD ist nicht konfiguriert. Bitte VITE_AZURE_CLIENT_ID und VITE_AZURE_TENANT_ID setzen.');
	}

	try {
		const msalInstance = await getMsalInstance();
		const response: AuthenticationResult = await msalInstance.loginPopup(loginRequest);

		if (response.account) {
			return {
				id: response.account.localAccountId,
				email: response.account.username,
				name: response.account.name ?? response.account.username,
				account: response.account
			};
		}
		return null;
	} catch (error) {
		console.error('Login failed:', error);
		throw error;
	}
}

export async function logout(): Promise<void> {
	if (!browser) return;

	try {
		const msalInstance = await getMsalInstance();
		const accounts = msalInstance.getAllAccounts();

		if (accounts.length > 0) {
			await msalInstance.logoutPopup({
				account: accounts[0]
			});
		}
	} catch (error) {
		console.error('Logout failed:', error);
		throw error;
	}
}

export async function getAccessToken(): Promise<string | null> {
	if (!browser) return null;

	try {
		const msalInstance = await getMsalInstance();
		const accounts = msalInstance.getAllAccounts();

		if (accounts.length === 0) {
			return null;
		}

		const response = await msalInstance.acquireTokenSilent({
			...tokenRequest,
			account: accounts[0]
		});

		return response.accessToken;
	} catch (error) {
		console.error('Token acquisition failed:', error);
		// Try interactive token acquisition as fallback
		try {
			const msalInstance = await getMsalInstance();
			const response = await msalInstance.acquireTokenPopup(tokenRequest);
			return response.accessToken;
		} catch (popupError) {
			console.error('Interactive token acquisition failed:', popupError);
			return null;
		}
	}
}

export async function getIdToken(): Promise<string | null> {
	if (!browser) return null;

	try {
		const msalInstance = await getMsalInstance();
		const accounts = msalInstance.getAllAccounts();

		if (accounts.length === 0) {
			return null;
		}

		const response = await msalInstance.acquireTokenSilent({
			...loginRequest,
			account: accounts[0]
		});

		return response.idToken;
	} catch (error) {
		console.error('ID Token acquisition failed:', error);
		return null;
	}
}

export async function getCurrentUser(): Promise<AuthUser | null> {
	if (!browser) return null;
	if (!isConfigured()) return null;

	try {
		const msalInstance = await getMsalInstance();
		const accounts = msalInstance.getAllAccounts();

		if (accounts.length === 0) {
			return null;
		}

		const account = accounts[0];
		return {
			id: account.localAccountId,
			email: account.username,
			name: account.name ?? account.username,
			account
		};
	} catch (error) {
		console.error('Failed to get current user:', error);
		return null;
	}
}

export async function isAuthenticated(): Promise<boolean> {
	if (!browser) return false;

	try {
		const msalInstance = await getMsalInstance();
		const accounts = msalInstance.getAllAccounts();
		return accounts.length > 0;
	} catch {
		return false;
	}
}
