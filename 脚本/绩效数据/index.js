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
    'Cookie':'gr_user_id=34e02d6c-4d1c-45c2-8fcd-da71c0a9f2d8; Hm_lvt_42372e8cea37f3ce99699d05a4e4ecfd=1732502886; Hm_lpvt_42372e8cea37f3ce99699d05a4e4ecfd=1732502886; HMACCOUNT=EE36F4D89B480DD0; bfe32f60a37bc666_gr_last_sent_cs1=system1; bfe32f60a37bc666_gr_session_id=92709b83-3868-4d1e-92ed-0e6adf3e2771; bfe32f60a37bc666_gr_last_sent_sid_with_cs1=92709b83-3868-4d1e-92ed-0e6adf3e2771; bfe32f60a37bc666_gr_session_id_sent_vst=92709b83-3868-4d1e-92ed-0e6adf3e2771; access_token=s%3AXGwiFIZcPUlytzQKsdrLnRHY2xzwN0rJHF6BQf6AOeiEqKpg14fjkLS7PNlIikj4.MLL20G9uDRWBR8eNFyXwoeAHdSL%2BVMw6MAkwsrLfI1Q; bfe32f60a37bc666_gr_cs1=system1',
    // 'Referer': 'https://servicewechat.com/wxfafa99c1d1ea041d/65/page-frame.html',
    // 'Accept-Language': 'zh-cn',
};

let page = 0;
let arr = []


let requestPage = async (pageNo)=>{
    let size = 50;
    let obj = {
            "sceneCode": "pmu_list",
            "subScene": 1,
            "conditions": [
                []
            ],
            "specParams": {
                "planId": 77,
                "endStepId": 6869,
                "actionId": 3241,
                "currentState": 1
            },
            "page": pageNo,
            "pageSize": size,
            "groupby": []
        };
    let uri  = 'https://heytea.peoplus.cn/peoplusPro/api/performance/model/scene/pmu/details/query';
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
        data.push(...res.pageData);
    }
    str = ` `;
    data.forEach(v=>{
        arr.push({
            id:v.id,
            employeeNo:v.hrEmployee$employeeNumber,
            name:v.hrEmployee$name,
        })
    });
    fs.writeFileSync(path.join(__dirname, './上级评分Arr.json'), JSON.stringify(arr), {'flag': 'a'});

}
let script =  async ()=>{
    try {
        let page1 = await requestPage(1);
        page = Math.ceil(page1.total/50)

        await loop();
    } catch (error) {
        console.log(error);
        setTimeout(()=> { process.exit(1); }, 1000);
    }
};

script();
