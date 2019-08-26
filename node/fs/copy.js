var fs = require('fs');
var path = require('path');

const path1 =  path.join(__dirname, 'koalaFile1.txt');
const path2 =  path.join(__dirname, 'koalaFile2.txt');
const path3 =  path.join(__dirname, 'koalaFile3.txt');

//通过 fs.open fs.read fs.write fs.close 来操作完成
function copy(src, dest, size = 16 * 1024, callback){
    //打开原文件
    fs.open(src, 'r', (err, readFd)=>{
        //打开目标文件
        fs.open(dest, 'w', (err, writeFd)=>{
            let buf = Buffer.alloc(size);
            let readed = 0;
            let writeed = 0;
            (function next(){

                //读取源文件
                fs.read(readFd, buf, 0, size, readed, (err, bytesRead)=>{
                    readed += bytesRead;
                    //找不到文件则退出
                    if(!bytesRead){
                        fs.close(readed, (err)=>{
                            console.log("关闭源文件");
                        })
                    }

                    //写入目标文件
                    fs.write(writeFd, buf, 0, bytesRead, writeed, (err, bytesWritten)=>{
                        if(!bytesWritten){
                            fs.fsync(writeFd, err=>{
                                fs.close(writeFd, err =>{
                                    callback();
                                })
                            })
                        }else{
                            writeed += bytesWritten;
                            next();
                        }
                    })
                } )
            })()
        })
    })
}

copy(path2, path3, 3, ()=>{
    var data = fs.readFileSync(path3);
    console.log('data',data);
})