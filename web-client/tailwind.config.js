/** @type {import('tailwindcss').Config} */
export default {
    content: ['./src/**/*.{html,js,svelte,ts}'],
    theme: {
        extend: {
            colors: {
                'bg-core': 'var(--bg-core)',
                'bg-gradient-1': 'var(--bg-gradient-1)',
                'bg-gradient-2': 'var(--bg-gradient-2)',
                'text-primary': 'var(--text-primary)',
                'text-secondary': 'var(--text-secondary)',
                'text-muted': 'var(--text-muted)',
                primary: {
                    DEFAULT: 'var(--primary)',
                    hover: 'var(--primary-hover)',
                },
                secondary: 'var(--secondary)',
                success: 'var(--success)',
                error: 'var(--error)',
            },
            borderRadius: {
                sm: 'var(--radius-sm)',
                md: 'var(--radius-md)',
                lg: 'var(--radius-lg)',
            },
            fontFamily: {
                main: 'var(--font-main)',
            },
        },
    },
    plugins: [],
}
