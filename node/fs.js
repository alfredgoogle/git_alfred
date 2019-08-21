let fs = require('fs');
fs.readFile('./node.js',function(err,data){
    console.log('err',err);
    console.log('data',data);
})