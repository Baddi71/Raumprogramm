import { PublicClientApplication, type Configuration, type PopupRequest, LogLevel } from '@azure/msal-browser';
import { browser } from '$app/environment';
import { base } from '$app/paths';

const clientId = import.meta.env.VITE_AZURE_CLIENT_ID ?? '';
const tenantId = import.meta.env.VITE_AZURE_TENANT_ID ?? '';

export function isConfigured(): boolean {
	return Boolean(clientId && tenantId);
}

const msalConfig: Configuration = {
	auth: {
		clientId,
		authority: `https://login.microsoftonline.com/${tenantId}`,
		redirectUri: browser ? `${window.location.origin}${base}/` : '',
		postLogoutRedirectUri: browser ? `${window.location.origin}${base}/` : '',
		navigateToLoginRequestUrl: true
	},
	cache: {
		cacheLocation: 'localStorage',
		storeAuthStateInCookie: false
	},
	system: {
		loggerOptions: {
			loggerCallback: (level, message, containsPii) => {
				if (containsPii) return;
				switch (level) {
					case LogLevel.Error:
						console.error(message);
						break;
					case LogLevel.Warning:
						console.warn(message);
						break;
					case LogLevel.Info:
						console.info(message);
						break;
					case LogLevel.Verbose:
						console.debug(message);
						break;
				}
			},
			logLevel: LogLevel.Warning
		}
	}
};

export const loginRequest: PopupRequest = {
	scopes: ['openid', 'profile', 'email', `api://${clientId}/Rooms.ReadWrite`]
};

export const tokenRequest: PopupRequest = {
	scopes: [`api://${clientId}/Rooms.ReadWrite`]
};

let msalInstance: PublicClientApplication | null = null;

export async function getMsalInstance(): Promise<PublicClientApplication> {
	if (!browser) {
		throw new Error('MSAL can only be used in the browser');
	}

	if (!msalInstance) {
		msalInstance = new PublicClientApplication(msalConfig);
		await msalInstance.initialize();
	}

	return msalInstance;
}

export function getClientId(): string {
	return clientId;
}

export function getTenantId(): string {
	return tenantId;
}
