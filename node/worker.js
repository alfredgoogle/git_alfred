const http = require('http');
const server = require('net').createServer((req,res)=>{
    res.writeHead(200,{
        'Content-Type':'text/plain'
    })
    res.end('I am worker, pid: ' + process.pid + ', ppid: ' + process.ppid);
});