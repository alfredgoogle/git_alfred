const rp = require('request-promise');
let fs = require('fs');
let path = require('path');

// 先查看日期是否有可选项，再进行抢号

// 查看日期接口和参数
// 抢号接口和参数

let headers = {
    // 'Host': 'lawyer.sss-xtm.com',
    // 'Content-Type':	'application/json',
    // 'Accept-Encoding': 'gzip, deflate, br',
    // 'Connection': 'keep-alive',
    // 'Accept':	'*/*',
    // 'User-Agent': 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E217 MicroMessenger/6.8.0(0x16080000) NetType/WIFI Language/en Branch/Br_trunk MiniProgramEnv/Mac',
    'Cookie':'gr_user_id=321da8d4-5042-4c71-a34a-e7e5f6f539cc; _dx_uzZo5y=607aa312b00892dfb70012d490b438b0c4d03db3c6c2547759643240d548f161013f5a8a; jenkins-timestamper-offset=-28800000; jenkins-timestamper=system; jenkins-timestamper-local=true; _dx_app_027cc6dc2fd33d5bcc8d234d74d36548=62173aabWAxwoYG0be8pJmnIhH0lvFPbu2N882V1; _dx_app_123ec22cbbb64845fc075d4e789ad593=62318a4dZ4gzGZLx7WeuJPHEphTGPkDA5pZ4c3h1; _dx_captcha_vid=87A5843DA09C8F7938F848157A9E8CE52CFCADA1FEE7B4E1D0A4830791C3AF95FF8DDF528CCF6FA235F63CE7D24742B343D69FF37F4FC282503B2F753E49C6B688E5FDF31E7ED143A8AAB36420B66CDB; _pk_id.1.cf97=e2031dfb2d2b20be.1660017171.; remember-me=eGlhb3d6OjE2ODAyMzIwMzA0Mjc6OGFhZjk4ZGI5OTg5MTU5ZTM1MjlkMWI4YmNkYmNlNTJhOTU4OTI4ZTQ2NzM1MmIxMTdjOTk0Y2U5YzdlNDNiNw; screenResolution=1920x1080; access_token=s%3ArZABDh7nNonVukHKTaGRPVmZwc0BeiyAAo5VGsUKLwApxyQZhik32ZiVjFw4IQqg.X%2BrH2vvNlQX8dVTGCPQMpJQKrcEV8kbB9OXFpLUDy0w; bfe32f60a37bc666_gr_last_sent_cs1=system1; bfe32f60a37bc666_gr_session_id=9c09d05e-d34e-4ef2-b03d-4312bf4bd5ba; bfe32f60a37bc666_gr_last_sent_sid_with_cs1=9c09d05e-d34e-4ef2-b03d-4312bf4bd5ba; bfe32f60a37bc666_gr_session_id_9c09d05e-d34e-4ef2-b03d-4312bf4bd5ba=true; JSESSIONID.d6b9bbe3=node08kt2c3snky971v5zfzyjbs2pf6182.node0; bfe32f60a37bc666_gr_cs1=system1',
    // 'Referer': 'https://servicewechat.com/wxfafa99c1d1ea041d/65/page-frame.html',
    // 'Accept-Language': 'zh-cn',
};

let page = 0;


let requestPage = async (pageNo)=>{
    let size = 100;
    let obj = {
            "method": "POST",
            "ip": null,
            "param": {
                "datasourceId": 1,
                "paging": {
                    "pageNo": pageNo,
                    "pageSize": size
                },
                "sql": "RXJvYWQjMjAyMnNlbGVjdCAqIGZyb20gbGJfZHltYW5pY19mb3JtIHdoZXJlIGNsYXNzaWZpY2F0aW9uIGluICgnS1JBVE9TJyk7"
            },
            "path": "/report/api/dataset/preview"
    };
    let uri  = 'http://192.168.10.210:10004/peoplusPro/api/reportcenter-e2e/models/api/model/e2ejava?preview';
    let options = {
        method: 'POST',
        uri: uri,
        headers: headers,
        json: true,
        body:obj
    };

    let result = await rp(options);
    return result;
};
let colTemplate = '';

let loop = async ()=>{
    let columns = [];
    let data = [];
    let str = ``;
    for(let i=1; i<= page;i++){
        console.log(i);
        let res = await requestPage(i);
        data.push(...res.data);
        if(i === 1){
            columns = res.column;
            colTemplate = columns.map(col=>col.name).join(', ');
        }
    }
    str = ` `;
    data.forEach(v=>{
        let valTemplate = '';
        v.forEach((item,index) => {
            if(columns[index].columnType === 'datetime' || columns[index].columnType === 'string'){
                if(item && item.includes(`'`)){
                    item = item.replace(/\'/g,`''`)
                }
             
            }
            if(columns[index].columnType === 'integer'){
                if(typeof item === 'string'){
                    item = Number.parseInt(item)
                }
            }
            if(typeof item === 'string'){
                item = `'${item}'`
            }else{
                item = `${item}`
            }


            v[index] = item;
          

        })
        valTemplate = v.join(', ');

        str += `INSERT INTO lb_dymanic_form (${colTemplate}) VALUES (${valTemplate})  ON CONFLICT (key) DO UPDATE SET content=${v[3]};
        `
    })

    str +=  ``;

    fs.writeFileSync(path.join(__dirname, './dynamicform/detail.sql'), str, {'flag': 'a'});
    


};

let script =  async ()=>{
    try {
        let page1 = await requestPage(1);
        page = Math.ceil(page1.pagingResult.rowTotal/100)

        await loop();
    } catch (error) {
        console.log(error);
        setTimeout(()=> { process.exit(1); }, 1000);
    }
};

script();
