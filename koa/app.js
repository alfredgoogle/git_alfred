
const Koa = require('koa');

// 创建一个Koa对象表示web app本身:
const app = new Koa();

app.use(async (ctx, next) => {
    console.log(`${ctx.request.method} ${ctx.request.url}`); // 打印URL
    console.log(1);
    await next(); // 调用下一个middleware
    console.log(2);
});

app.use(async (ctx, next) => {
    const start = new Date().getTime(); // 当前时间
    console.log(3);
    await next(); // 调用下一个middleware
    console.log(4);
    const ms = new Date().getTime() - start; // 耗费时间
    console.log(`Time: ${ms}ms`); // 打印耗费时间
});

app.use(async (ctx, next) => {
    console.log(5);
    await next();
    console.log(6);
    ctx.response.type = 'text/html';
    ctx.response.body = '<h1>Hello, koa2!</h1>';
});

// 在端口8900监听:
app.listen(8900);
console.log('app started at port 8900...');