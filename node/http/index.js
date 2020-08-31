var http = require('http');
http.createServer((req,res)=>{
    console.log('res',res);
    res.writeHead(200);
    res.end('hello')
})
.listen(3000)