const { CleanWebpackPlugin } = require('clean-webpack-plugin')

//'clean-webpack-plugin 会清空dist 目录
module.exports = {
    plugins: [
        new CleanWebpackPlugin()
    ]
}