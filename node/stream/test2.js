const http = require( "http");
const fs = require('fs');
const path = require('path');

const server = http.createServer((req, res) =>{
    const filename = path.resolve(__dirname,'test.txt');
    // fs.readFile(filename,(err,data)=>{
    //     res.end(data);
    // })

    let stream = fs.createReadStream(filename);
    stream.pipe(res);
})
server.listen(1113);