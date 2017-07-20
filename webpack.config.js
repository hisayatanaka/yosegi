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
	watchOptions: { // Enabeling "webpack --watch" on Vagrant.
		poll: true
	},
	module: {
		rules: [
			{
				test: /\.tag$/,
				exclude: /node_modules/,
				enforce: 'pre',
				use: [
					{
						loader: 'riotjs-loader',
						options: {
							type: 'none' // Required 'none' for use Babel.
						}
					}
				]
			},
			{
				test: /\.js|\.tag$/,
				exclude: /node_modules/,
				enforce: 'post',
				use: [
					{
						loader: 'babel-loader',
						options: {}
					}
			 	]
			}
		]
	},
	resolve: {
			extensions: ['.js', '.tag']
	},
	plugins: [
		new webpack.optimize.CommonsChunkPlugin({ // Common function Storage.
			name:   'index',
			chunks: [ 'index', 'index.bundle.js' ],
		}),
		new webpack.optimize.UglifyJsPlugin({
			compress: {
				warnings: false
			}
		}),
		new webpack.ProvidePlugin({ riot: 'riot' })
	],
}
