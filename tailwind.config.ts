import type { Config } from 'tailwindcss';

export default {
	content: ['./src/**/*.{html,js,svelte,ts}'],

	theme: {
		extend: {}
	},
	safelist: [
		{ pattern: /^bg-/, variants: ['hover', 'focus'] },
	],
	plugins: []
} satisfies Config;
