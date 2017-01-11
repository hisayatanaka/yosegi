<my_parts_1_block_2>

	<div class="parts_1_block_2">Parts 1 Block 2</div>

	<style type="scss" scoped>
		.parts_1_block_2 { color: blue };
	</style>

	<script>
		var _self = this; // Class内からの参照用

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
