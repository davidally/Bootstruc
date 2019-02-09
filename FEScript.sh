mkdir -p src/{assets/{images,videos},scripts/vendors,styles/{0-plugins,1-helpers,2-base,3-layout,4-components,5-pages}} && cd src && touch index.html index.js webpack.config.js .gitignore && echo "const path = require('path');
const webpack = require('webpack');
const HtmlWebpackPlugin = require('html-webpack-plugin');

module.exports = {
    mode: 'development',
    entry: './src/js/index.js',
    output: {
        path: path.resolve(__dirname, './dist/app'),
        filename: 'app.js',
        publicPath: '/'
    },
    plugins: [
        new webpack.HotModuleReplacementPlugin(),
        new HtmlWebpackPlugin({
            title: 'App',
            filename: 'index.html',
            template: path.resolve(__dirname, './src/index.html'),
            inject: 'body'
        })
    ],
    devServer: {
        contentBase: path.resolve(__dirname, './dist/app'),
        port: 3000,
        hot: true
    },
    watch: false
}
" >> webpack.config.js && cd styles && touch 0-plugins/_0-plugins.scss 1-helpers/{_1-helpers,_functions,_mixins,_variables}.scss 2-base/{_2-base,_global,_reset,_typography}.scss 3-layout/{_3-layout,_content,_footer,_grid,_navigation}.scss 4-components/{_4-components,_buttons,_image,_scrollbar,_video}.scss 5-pages/{_5-pages,_caseStudy,_contact,_home}.scss main.scss && cd ../scripts && touch main.js && cd ../..