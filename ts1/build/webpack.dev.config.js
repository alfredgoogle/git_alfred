module.exports = {
    //cheap 会忽略列信息
    //module 会定义到ts 源码，而不是编译后的代码
    //eval-source-map 重编译速度很快,不用担心性能问题
    devtool: 'cheap-module-eval-source-map'
}