var fs = require('fs');
var path = require('path');

const path1 =  path.join(__dirname, 'koalaFile1.txt');
const path2 =  path.join(__dirname, 'koalaFile2.txt');
const path3 =  path.join(__dirname, 'koalaFile3.txt');

// //异步读取
// fs.readFile(path1,'utf8',function(err, data) {
//     if(err){
//         console.error(err);
//     }else{
//         console.log('data1',data);
//     }
// })

// //同步读取
// var result = fs.readFileSync(path1,'utf8');
// console.log('data2',result);

// //利用flag 属性 追加文件
// fs.writeFile(path2, '程序员成长指北追加的数据', {'flag':'a'},function(err) {
//     if(err){
//         console.error(err);
//     }
//     console.log('successs');
//     var data =  fs.readFileSync(path2,'utf-8');
//     console.log('write data',data);
// })

// //没有文件会创建文件
// fs.appendFile(path3,'新数据程序员成长指北456',function(err){
//     if(err){
//         console.error(err);
//     }
//     console.log('successs');
//     var data =  fs.readFileSync(path3,'utf-8');
//     console.log('write data',data);
// })


// //拷贝文件
// fs.copyFile(path2,path3,function(err){
//     if(err){
//         console.error(err);
//     }
//     console.log('copy successs');
//     var data =  fs.readFileSync(path3,'utf-8');
//     console.log('copy data',data);
// })


//删除文件
// fs.unlinkSync(path3,function(err){
//     if(err){
//         console.error(err);
//     }else {
//         console.log( "unlink success")
//     }
// })

//大文件操作
//先 open, 再read/write, 最后close, 将 读取的数据存储在Buffer 中，避免使用大量内存影响服务器性能
//fd 是 文件标识符
// let buf = Buffer.alloc(6);  // 创建6字节长度的buf缓存对象
// fs.open(path2,'r',function(err, fd){
//     console.log('fd',fd);

//     fs.read(fd,buf,0,3,0, (err, bytesread, buffer)=>{
//         if(err){
//             console.error(err);
//         }else{
//             console.log('bytesread',bytesread);
//             console.log('buffer',buffer);
//             console.log('buffer.tostring',buffer.toString());

//             fs.read(fd,buf,3,3,3, (err, bytesread, buffer)=>{
//                 if(err){
//                     console.error(err);
//                 }else{
//                     console.log('bytesread',bytesread);
//                     console.log('buffer',buffer);
//                     console.log('buffer.tostring',buffer.toString());
//                 }
//                 fs.close(fd,function(){
//                     console.log( "close success");
//                 })
//             })
//         }
//     })
// })


//创建目录
fs.mkdir(path.join(__dirname, './mkdir'), function(err){
    if(err){
        console.error(err);
    }else{
        console.log( "mkdir susscess");
    }
})

//读取目录
fs.readdir(path.join(__dirname, './mkdir'),function(err,data){
    if(err){
        console.error(err);
    }else{
        console.log( "dir data",data);
    }
})