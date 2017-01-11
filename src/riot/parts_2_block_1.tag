<my_parts_2_block_1>

	<div class="parts_2_block_1">Parts 2 Block 1</div>

	<style type="scss" scoped>
		.parts_2_block_1 { color: green };
	</style>

	<script>
		var _self = this; // Class内からの参照用

		// Class
		let classMain = class Main extends opts.inherit { // Inherited class
			constructor() {
				super();
			}
			sayAnything() { // Overwrite
				console.log('Parts 1 Block 1')
			}
		}

		// Processing
		this.on('mount', () => {
			let instance = new classMain();
			instance.sayAnything();
		});
	</script>
</my_parts_2_block_1>
