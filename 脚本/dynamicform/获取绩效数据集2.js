const rp = require('request-promise');
let fs = require('fs');
let path = require('path');

// 先查看日期是否有可选项，再进行抢号

// 查看日期接口和参数
// 抢号接口和参数

let headers = {
    'Host': '192.168.10.210:10004',
    'Content-Type':	'application/json',
    // 'Accept-Encoding': 'gzip, deflate, br',
    // 'Connection': 'keep-alive',
    'Accept':	'*/*',
    // 'User-Agent': 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E217 MicroMessenger/6.8.0(0x16080000) NetType/WIFI Language/en Branch/Br_trunk MiniProgramEnv/Mac',
    'Cookie':'jenkins-timestamper=system; jenkins-timestamper-local=true; gr_user_id=5cde419a-3507-4738-820b-c3044468039e; _ga=GA1.1.1151927103.1713949439; _ga_TWD3SKTWW4=GS1.1.1713949440.1.0.1713949440.0.0.0; jenkins-timestamper-offset=-28800000; bfe32f60a37bc666_gr_last_sent_cs1=%E5%A4%8F%E4%BE%AF%E6%B8%8A22059; localization=%7B%22LT%22%3A%22HH%3Amm%22%2C%22LTS%22%3A%22HH%3Amm%3Ass%22%2C%22L%22%3A%22YYYY-MM%22%2C%22LL%22%3A%22YYYY-MM-DD%22%2C%22LLL%22%3A%22YYYY-MM-DD%20HH%3Amm%22%2C%22LLLL%22%3A%22YYYY-MM-DD%20HH%3Amm%3Ass%22%2C%22firstDayOfWeek%22%3A1%7D; JSESSIONID.8b226180=node05dn9bf9aek2shhv2gi1opakt328.node0; remember-me=eGlhb3d6OjE3MzM5MTI4MzY2ODA6MGI1ZGU4YmMwZWQzODMyNzJhYzZmMzY1ZjQ3ZmNhOWM0MTliN2NlZWU0MDI3ZDg1YTg4MzZlNzRlYWU4NGQ5Yw; JSESSIONID.be86144b=node0lswx58sx1ei17bt9vykp9tab30.node0; bfe32f60a37bc666_gr_cs1=%E5%A4%8F%E4%BE%AF%E6%B8%8A22059; JSESSIONID.49e49aca=node01k0e2t28xb0txx2eor2esi59d99.node0; access_token=s%3AA5sLp7PAr1aTJccjSJ2YKBfbMJ6OimxDLjcaeKTy7K28XZZrF0AV0MDhByHQcKhv.w9KttAsMJEcZPsxAKEoGUmCNj2LmjjQ7YEPsdgCSD3o',
    // 'Referer': 'http://192.168.10.210:10004/reportcenter/metadataManage/datasetDetails?selectRow=%7B%22datasourceId%22%3A1,%22datasetType%22%3A1%7D',
    'Accept-Language': 'zh-cn',
};

let page = 0;

let data = require('./data.json');


let requestPage = async (pageNo)=>{
    let size = 5000;
    let obj={"method":"POST","ip":null,"param":{"datasourceId":1,"paging":{"pageNo":pageNo,"pageSize":size},"sql":"RXJvYWQjMjAyMnNlbGVjdCAqCmZyb20gaW5mb3JtYXRpb25fc2NoZW1hLmNvbHVtbnMKd2hlcmUgdGFibGVfbmFtZSBsaWtlICdwbXVfJScgb3JkZXIgYnkgdGFibGVfbmFtZTs="},"path":"/report/api/dataset/preview"};
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
    for(let i=1; i< page;i++){
        let res = await requestPage(i);
        data.push(...res.data);
    }
    str = JSON.stringify(data);


    fs.writeFileSync(path.join(__dirname, './data/10004.json'), str, {'flag': 'a'});
    


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
