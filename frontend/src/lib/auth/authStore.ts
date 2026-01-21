import { writable, derived, type Readable } from 'svelte/store';
import type { AuthUser } from './authService';
import { login as msalLogin, logout as msalLogout, getCurrentUser, getAccessToken } from './authService';
import { browser } from '$app/environment';

interface AuthState {
	user: AuthUser | null;
	loading: boolean;
	error: string | null;
}

function createAuthStore() {
	const { subscribe, set, update } = writable<AuthState>({
		user: null,
		loading: true,
		error: null
	});

	return {
		subscribe,

		async initialize() {
			if (!browser) {
				set({ user: null, loading: false, error: null });
				return;
			}

			try {
				const user = await getCurrentUser();
				set({ user, loading: false, error: null });
			} catch (error) {
				set({
					user: null,
					loading: false,
					error: error instanceof Error ? error.message : 'Failed to initialize auth'
				});
			}
		},

		async login() {
			update((state) => ({ ...state, loading: true, error: null }));

			try {
				const user = await msalLogin();
				set({ user, loading: false, error: null });
				return user;
			} catch (error) {
				const errorMessage = error instanceof Error ? error.message : 'Login failed';
				update((state) => ({ ...state, loading: false, error: errorMessage }));
				throw error;
			}
		},

		async logout() {
			update((state) => ({ ...state, loading: true, error: null }));

			try {
				await msalLogout();
				set({ user: null, loading: false, error: null });
			} catch (error) {
				const errorMessage = error instanceof Error ? error.message : 'Logout failed';
				update((state) => ({ ...state, loading: false, error: errorMessage }));
				throw error;
			}
		},

		async getToken(): Promise<string | null> {
			return await getAccessToken();
		},

		clearError() {
			update((state) => ({ ...state, error: null }));
		}
	};
}

export const authStore = createAuthStore();

export const user: Readable<AuthUser | null> = derived(authStore, ($auth) => $auth.user);
export const isAuthenticated: Readable<boolean> = derived(authStore, ($auth) => $auth.user !== null);
export const isLoading: Readable<boolean> = derived(authStore, ($auth) => $auth.loading);
export const authError: Readable<string | null> = derived(authStore, ($auth) => $auth.error);
