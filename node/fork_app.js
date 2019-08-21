const http = require('http');
const fork = require('child_process').fork;
const path = require('path');

const server = http.createServer((req,res)=>{
    if(req.url == '/compute'){
        let compute = fork(path.resolve(__dirname, './fork_compute.js'));
        compute.send('子进程开始');
        compute.on('message',sum=>{
            res.end(`sum is ${sum}`);
            compute.kill();
        })

        compute.on('close',(code,signal)=>{
            console.log(`收到close事件，子进程收到信号 ${signal} 而终止，退出码 ${code}`);
            compute.kill();
            res.end(`compute is end`);
        })
    }else{
        res.end('ok');
    }
})

server.listen(3000,'127.0.0.1',()=>{
    console.log(`server started at http://127.0.0.1:${3000}`)
})