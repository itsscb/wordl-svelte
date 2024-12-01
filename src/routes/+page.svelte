<script lang="ts">
	import Letter from '$lib/components/letter.svelte';
	import Input from '$lib/components/input.svelte';

	let letters = $state(['', '', '', '', '']);

	$inspect(letters).with(console.trace);
</script>

<div class="grid-container h-full w-full px-4 py-6">
	<h1 class="header text-5xl font-bold">wordl</h1>
	<div class="words">
		<Letter letter="w" color="red" />
		<Letter letter="o" color="red" />
		<Letter letter="r" color="red" />
		<Letter letter="l" color="red" />
		<Letter letter="d" color="red" />
	</div>
	<div class="input">
		<Input bind:letters on:update={(event) => (letters = event.detail)} />
	</div>
</div>

<style>
	.grid-container {
		display: grid;
		grid-template:
			'header' 1fr
			'words' 1fr
			'input' 1fr;
		gap: 1rem;
		justify-content: center;
	}

	.header {
		grid-area: header;
		text-align: center;
	}

	.input {
		grid-area: input;
	}

	.words {
		grid-area: words;
		text-align: center;
	}
</style>
