var process = require('process');

setTimeout(()=>{
    console.log('setTimeout 1')
},0)
process.nextTick(()=>{
    console.log('nextTick 1');
})
setImmediate(()=>{
    console.log('setImmediate 1')
})

setTimeout(()=>{
    console.log('setTimeout 2')
},0)