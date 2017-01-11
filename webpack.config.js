var webpack = require("webpack");

module.exports = {
	entry: {
		"index": [ // page
			'./src/riot/parts_1_router.tag', // parts 1
			'./src/riot/parts_2_router.tag', // parts 2
			'./src/riot/index.js'            // Need to last.
		]
	},
	output: {
		path: __dirname + '/dist/riot',
		filename: '[name].bundle.js',
		publicPath: '/'
	},
	watchOptions: { // Vagrant内部で webpack --watchを有効にする
		poll: true
	},
	module: {
		preLoaders: [
			{
				test: /\.tag$/,
				exclude: /node_modules/,
				loader: 'riotjs-loader',
				query: {
					type: 'babel'
				}
			}
		],
		loaders: [
			{
				test: /\.js$|\.tag$/,
				exclude: /node_modules/,
				loader: 'babel-loader' // ES6 to ES5
			},
		]
	},
	resolve: {
			extensions: ['', '.js', '.tag']
	},
	plugins: [
		new webpack.optimize.CommonsChunkPlugin('index', 'index.bundle.js'), // Common function Storage.
		new webpack.optimize.UglifyJsPlugin({
			compress: {
				warnings: false
			}
		}),
	],
}
