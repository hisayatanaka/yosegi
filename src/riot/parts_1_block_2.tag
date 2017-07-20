<my_parts_1_block_2>

	<div class="parts_1_block_2">Parts 1 Block 2</div>

	<style type="scss">
		.parts_1_block_2 { color: blue };
	</style>

	<script>
		let _self = this; // For reference from within Class.

		// Class
		let classMain = class Main extends opts.inherit { // Inherited class
			constructor() {
				super();
			}
			sayAnything() { // Overwrite
				console.log('Parts 1 Block 2')
			}
		}

		// Processing
		this.on('mount', () => {
			let instance = new classMain();
			instance.sayAnything();
		});
	</script>
</my_parts_1_block_2>
