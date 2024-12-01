<script lang="ts">
	export let letters: string[];

	function oninput(event: Event, index: number) {
		if (event.target instanceof HTMLInputElement) {
			let value = event.target.value;
			if (value.length >= 1) {
				value = value[0];
			}
			const newLetters = [...letters];
			newLetters[index] = value;
			if (value.length > 0 && index < letters.length - 1) {
				const nextInput = event.target.nextElementSibling as HTMLInputElement;
				nextInput.focus();
			} else if (value.length === 0 && index > 0) {
				const prevInput = event.target.previousElementSibling as HTMLInputElement;
				prevInput.focus();
			}
		}
	}
	function onkeydown(event: KeyboardEvent, index: number) {
		if (event.key === 'Backspace' && (event.target as HTMLInputElement).value === '' && index > 0) {
			const prevInput = (event.target as HTMLInputElement)
				.previousElementSibling as HTMLInputElement;
			console.log(event.target);
			prevInput.focus();
		}
	}
</script>

<div class="flex w-full flex-row gap-1">
	{#each letters as l, i}
		<input
			bind:value={l}
			maxlength="1"
			class="w-6 flex-grow rounded-lg border border-white px-4 py-3 text-center text-2xl"
			oninput={(event: Event) => oninput(event, i)}
			onkeydown={(event: KeyboardEvent) => onkeydown(event, i)}
		/>
	{/each}
</div>
