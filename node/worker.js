const http = require('http');
const server = http.createServer((req,res)=>{
    res.writeHead(200,{
        'Content-Type':'text/plain'
    })
    res.end('I am worker, pid: ' + process.pid + ', ppid: ' + process.ppid);
});


let worker;

process.title = 'node-worker';
process.on('message',function(message,sendHandler){
    if(message == 'server'){
        worker = sendHandler;
        worker.on( "connection",(socket) => {
            console.log('socket',socket);
            server.emit('connection',socket);
        })
    }
})

process.on('uncaughtException',function(err) {
    console.log(err);
    process.send('suicide');
    worker.close(function() {
        process.exit(1);
    })
})