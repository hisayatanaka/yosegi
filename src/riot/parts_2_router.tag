<my_parts_2_router>

	<div id="my_parts_2_master" class="box"></div>

	<style type="scss" scoped>
		@import 'src/sass/_box.scss';
		.box{ overflow: hidden };
	</style>

	<script>
		var _self = this; // Class内からの参照用

		// Class
		let classMain = class Main {
			constructor() {
				this.modCommon = require('./module/common.js'); // 共通モジュール
			}
			sayAnything() {
				this.modCommon.moduleSample('Parts 2 Router');
				console.log('Parts 2 Router');
			}
		}

		// Processing
		this.on('mount', () => {
			let instance = new classMain();
			instance.sayAnything();

			// Mount
			require('./parts_2_master.tag');
			riot.mount('#my_parts_2_master', 'my_parts_2_master', { inherit: classMain });
		});
	</script>
</my_parts_2_router>

