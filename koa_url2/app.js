
const Koa = require('koa');
const bodyParser = require('koa-bodyparser');
const controller = require('./controller');

// 创建一个Koa对象表示web app本身:
const app = new Koa();
app.use(bodyParser());

// add router middleware:
app.use(controller());

// 在端口8920监听:
app.listen(8920);
console.log('app started at port 8920...');