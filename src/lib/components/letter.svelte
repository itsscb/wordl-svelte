<script>
	let { letter, color, border_color = color } = $props();
</script>

<span
	style="background-color: {color}; border-color: {border_color}"
	class="rounded-lg border px-4 py-3 text-2xl font-bold">{letter.toUpperCase()}</span
>
