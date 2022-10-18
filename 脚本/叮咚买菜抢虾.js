const rp = require('request-promise');
// 首先引入fs模块
const fs = require("fs")
// let path = "./music/14337.wav"

// let rs = fs.createReadStream(path, {
//     flags: "r",
//     encoding: null,
//     fd: null,
//     autoClose: true,
//     start: 0,
// })

// let chunks = []  // 创建存放数据块的数组，用以存放读取到的数据块，在后续进行消费
// // 每当流将数据块的所有权移交给消费者时，则会触发 'data' 事件。
// ws.on("data", (chunk) => chunks.push(chunks))
// // 当所有的数据块读完后，触发end事件
// ws.on("end", () => {
// 	// 在这里处理读取到的媒体流
// 	// 将收集到的数据块进行base64处理
// 	// 这就是媒体的数据，将其放至在audio/video标签的src属性即可播放
// 	let bs = Buffer.concat(chunks).toString("base64") 

//     // 将获取到的base64媒体数据进行播放
//     // 这里演示音频的播放
//     let src= 'data:audio/mp3;base64,' + bs;
//     let audio = new Audio();

//     audio.src = src;
//     audio.load();
//     audio.play();

// })



let headers = {
    'ddmc-city-number':' 0101',
    'cookie':' DDXQSESSID=4v276hd7yh4dd2h4ugv1dh0d0u7956ud8sf2wv61h4443dxpxd2p82gmop3hth7u',
    'user-agent':' Mozilla/5.0 (iPhone; CPU iPhone OS 11_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E217 MicroMessenger/6.8.0(0x16080000) NetType/WIFI Language/en Branch/Br_trunk MiniProgramEnv/Mac',
    'ddmc-build-version':' 2.96.1',
    'ddmc-longitude':' 121.591815',
    'ddmc-latitude':' 31.273908',
    'ddmc-app-client-id':' 4',
    'ddmc-uid':' 5b9662384fc5156a15ade70f',
    'ddmc-channel':' applet',
    'ddmc-device-id':' osP8I0fMKJsS7QzLshB9hzY6Ylww',
    'content-type':' application/x-www-form-urlencoded',
    'ddmc-station-id':' 5b5ae26cc0a1eaef368b7833',
};

let requestDate =  async ()=>{
    let uri = 'https://maicai.api.ddxq.mobi/guide-service/productApi/productDetail/info';
    let dateOptions = {
        method: 'GET',
        uri: uri,
        qs: {
            uid:'5b9662384fc5156a15ade70f',
            longitude:121.591815,
            latitude:31.273908,
            station_id:'5b5ae26cc0a1eaef368b7833',
            city_number:'0101',
            api_version:'9.61.0',
            channel:'applet',
            app_client_id:4,
            app_version:'2.96.1',
            s_id:'4v276hd7yh4dd2h4ugv1dh0d0u7956ud8sf2wv61h4443dxpxd2p82gmop3hth7u',
            openid:'osP8I0fMKJsS7QzLshB9hzY6Ylww',
            device_token:'WHJMrwNw1k%2FFKPjcOOgRd%2BPLtSQfBp6tqp20aKPzwfdr3QJrK0y1oPipltIKg%2BSZSc7lQsklSh0Y2%2FS06pyYoYchTqtmVNc3UdCW1tldyDzmauSxIJm5Txg%3D%3D1487582755342',
            id:'5fa3c5850b7d8427c17939dc',
            nars:'67fc61e6ca991a01a2f9eb1b85817277',
            sesi:'%7B%22sesiT%22%3A%22x7Yvoe2bc0e8622ad60e0c1a8abd61ce8b4337b%22%2C%22sdkV%22%3A%222.0.0%22%7D'
        },
        headers: headers,
        json: true,
    };

    let result = await rp(dateOptions);
    return result;
};


let loop = async ()=>{
    let data = await requestDate();
    let price = parseFloat(data.data.detail.price);
    if(price < 15){
        console.error(1111);
        console.error(`${new Date()} 价格`, price);
        setTimeout(()=> { process.exit(1); }, 1000);
    }else{
        console.log(`${new Date()} 价格`, price);
        setTimeout(loop,1000);
    }
};

let script =  async ()=>{
    try {
        await loop();
    } catch (error) {
        console.log(error);
        setTimeout(()=> { process.exit(1); }, 1000);
    }
};

script();
