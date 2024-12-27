const rp = require('request-promise');
let fs = require('fs');
let path = require('path');

// 先查看日期是否有可选项，再进行抢号

// 查看日期接口和参数
// 抢号接口和参数

let headers = {
    'Host': 'horibauat.peoplus.cn',
    'Content-Type':	'application/json',
    // 'Accept-Encoding': 'gzip, deflate, br',
    // 'Connection': 'keep-alive',
    'Accept':	'*/*',
    // 'User-Agent': 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E217 MicroMessenger/6.8.0(0x16080000) NetType/WIFI Language/en Branch/Br_trunk MiniProgramEnv/Mac',
    'Cookie':'gr_user_id=34e02d6c-4d1c-45c2-8fcd-da71c0a9f2d8; Hm_lvt_42372e8cea37f3ce99699d05a4e4ecfd=1732502886; Hm_lpvt_42372e8cea37f3ce99699d05a4e4ecfd=1732502886; HMACCOUNT=EE36F4D89B480DD0; bfe32f60a37bc666_gr_last_sent_cs1=%E5%A4%8F%E4%BE%AF%E6%B8%8A22059; bfe32f60a37bc666_gr_cs1=%E5%A4%8F%E4%BE%AF%E6%B8%8A22059; access_token=s%3A7J5wKNwFS2q04zfMvJUIDWd874E2KJ1lqCKmkE3hgBrq7OL7CmCBMQQobQgoSEKw.qL9EpJ%2BWKY8dHR2sX1tki%2BNdGcEsfXigFbBNZzuDBB0; localization=%7B%22LT%22%3A%22HH%3Amm%22%2C%22LTS%22%3A%22HH%3Amm%3Ass%22%2C%22L%22%3A%22YYYY-MM%22%2C%22LL%22%3A%22YYYY-MM-DD%22%2C%22LLL%22%3A%22YYYY-MM-DD%20HH%3Amm%22%2C%22LLLL%22%3A%22YYYY-MM-DD%20HH%3Amm%3Ass%22%7D',
    // 'Referer': 'https://horibauat.peoplus.cn/reportcenter/metadataManage/datasetDetails?selectRow=%7B%22datasourceId%22%3A1,%22datasetType%22%3A1%7D',
    'Accept-Language': 'zh-cn',
};

let page = 0;

let data = require('./data.json');


let requestPage = async (pageNo)=>{
    let size = 5000;
    let obj={"method":"POST","ip":null,"param":{"datasourceId":1,"paging":{"pageNo":pageNo,"pageSize":size},"sql":"RXJvYWQjMjAyMnNlbGVjdCAqCmZyb20gaW5mb3JtYXRpb25fc2NoZW1hLmNvbHVtbnMKd2hlcmUgdGFibGVfbmFtZSBsaWtlICdwbXVfJScgb3JkZXIgYnkgdGFibGVfbmFtZTs="},"path":"/report/api/dataset/preview"};
    let uri  = 'https://horibauat.peoplus.cn/peoplusPro/api/reportcenter-e2e/models/api/model/e2ejava?preview';
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
    for(let i=1; i< page;i++){
        let res = await requestPage(i);
        data.push(...res.data);
    }
    str = JSON.stringify(data);


    fs.writeFileSync(path.join(__dirname, './data/horiba.json'), str, {'flag': 'a'});
    


};

let script =  async ()=>{
    try {
        let page1 = await requestPage(1);
        // console.log('page1',page1)
        page = Math.ceil(page1.pagingResult.rowTotal/5000) + 1
        await loop();
    } catch (error) {
        console.log(error);
        setTimeout(()=> { process.exit(1); }, 1000);
    }
};

script();
