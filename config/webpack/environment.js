const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.pretend('provide',
	new webpack.ProvidePlugin({
		$: 'jquery/src/jquery', 
		jquery:'jquery/src/jquery'
	})
	)

module.exports = environment
