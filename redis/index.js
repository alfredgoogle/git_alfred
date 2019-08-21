var redis = require('redis');
var client = redis.createClient(6379,'127.0.0.1');
client.on('error',function(err) {
    console.log('Error ' + err);
})


//键值对
// client.set( "color",'red', redis.print);
client.get( "color", function(err, data){
    if(err){
        throw err;
    }else{
        console.log('got ', data);
        // client.quit();
    }
})

//哈希表
client.hmset('kitty',{
    age:'123',
    sex:'famale'
},redis.print);
client.hget('kitty','age',function(err, data) {
    if(err){
        throw err;
    }else{
        console.log('kitty is ' + data);
    }
})
client.hkeys('kitty',function(err, keys) {
    if(err){
        throw err;
    }else{
        keys.map((v,i)=>{
            console.log(v,i)
        })
    }
})


//链表
client.lpush('tasks', 'Paint the house red.', redis.print);
client.lpush('tasks', 'Paint the house green.', redis.print);
client.lrange('tasks', 0, -1, function(err, items) {
  if (err) throw err;
  items.forEach(function(item, i) {
    console.log(' ' + item);
  });
  client.quit();
});


//集合
client.sadd('ip', '192.168.3.7', redis.print);
client.sadd('ip', '192.168.3.7', redis.print);
client.sadd('ip', '192.168.3.9', redis.print);
client.smembers('ip', function(err, members) {
  if (err) throw err;
  console.log(members);
  client.quit();
});

//信道
var clientA = redis.createClient(6379, '127.0.0.1')
var clientB = redis.createClient(6379, '127.0.0.1')

clientA.on('message', function(channel, message) {
  console.log('Client A got message from channel %s: %s', channel, message);
});
clientA.on('subscribe', function(channel, count) {
  clientB.publish('main_chat_room', 'Hello world!');
});
clientA.subscribe('main_chat_room');
