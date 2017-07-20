<my_parts_1_master>

	<div class="parts_1_master">Parts 1 Master</div>

	<div id="my_parts_1_block_1" class="box"></div>
	<div id="my_parts_1_block_2" class="box"></div>

	<style type="scss">
		@import 'src/sass/_box.scss';
		.parts_1_master {
			color: orange;
			padding: 7px 0 7px 0;
			background-color: #000;
		}
		.box { background-color: white };
	</style>

	<script>
		let _self = this; // For reference from within Class.

		// Class
		let classMain = class Main extends opts.inherit { // Inherited class
			constructor() {
				super();
			}
			sayAnything() { // Overwrite
				console.log('Parts 1 Master');
			}
		}

		// Processing
		this.on('mount', () => {
			let instance = new classMain();
			instance.sayAnything();

			// Mount
			require('./parts_1_block_1.tag');
			riot.mount('#my_parts_1_block_1', 'my_parts_1_block_1', { inherit: classMain });
			require('./parts_1_block_2.tag');
			riot.mount('#my_parts_1_block_2', 'my_parts_1_block_2', { inherit: classMain });
		});
	</script>
</my_parts_1_master>
