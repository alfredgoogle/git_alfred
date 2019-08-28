const fork = require('child_process').fork;
const cpus = require('os').cpus();
const path = require('path');


const server = require('net').createServer();
server.listen(4000);

process.title = 'node-master';
const workers = {};




const creatWorker = ()=>{
    let worker = fork(path.resolve(__dirname,'./worker.js'));

    worker.on('message',(message)=>{
        if(message.act === 'suicide'){
            creatWorker();
        }
    })

    worker.on('exit',(code,signal)=>{
        console.log('worker process exited, code %s, signal &s',code, signal);
    })

    worker.send('server',server);

    workers[worker.pid] = worker;
    console.log('worker process created, pid: %s ppid: %s', worker.pid, process.pid);
}

for(let i=0;i<cpus.length;i++){
    creatWorker();
}


process.once('SIGINT', close.bind(this, 'SIGINT')); // kill(2) Ctrl-C
process.once('SIGQUIT', close.bind(this, 'SIGQUIT')); // kill(3) Ctrl-\
process.once('SIGTERM', close.bind(this, 'SIGTERM')); // kill(15) default
process.once('exit', close.bind(this));

function close(code){
    console.log('进程退出',code);

    if(code !== 0){
        for(let pid in workers){
            console.log('master process exited. kill worker pid %s',pid);
            workers[pid].kill('SIGNIT');
        }
    }

    process.exit(0);
}