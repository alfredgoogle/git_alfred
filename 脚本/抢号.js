const e = require('cors');



const {reset} = require('nodemon');
const rp = require('request-promise');

// 先查看日期是否有可选项，再进行抢号

// 查看日期接口和参数
// 抢号接口和参数

let headers = {
    // 'Host': 'lawyer.sss-xtm.com',
    // 'Content-Type':	'application/json',
    'Access-Control-Expose-Headers': 'Authorization',
    // 'Accept-Encoding': 'gzip, deflate, br',
    // 'Connection': 'keep-alive',
    // 'Accept':	'*/*',
    // 'User-Agent': 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E217 MicroMessenger/6.8.0(0x16080000) NetType/WIFI Language/en Branch/Br_trunk MiniProgramEnv/Mac',
    'Authorization': '4329085ac4ec45dd9f6de1136ea023ab',
    // 'Referer': 'https://servicewechat.com/wxfafa99c1d1ea041d/65/page-frame.html',
    // 'Accept-Language': 'zh-cn',
};

let date1 = '20220929';
let date2 = '20220930';

let requestDate =  async (date)=>{
    let uri = 'https://lawyer.sss-xtm.com/lawsys/v2/lawyerex/sup/selectOnlyRoom';
    let dateOptions = {
        method: 'GET',
        uri: uri,
        qs: {
            supId: 28,
            dt: date,
            meetType: 0,
        },
        headers: headers,
        json: true,
    };

    let result = await rp(dateOptions);
    return result;
};

let requestRegister = async (data)=>{
    let obj = {
        'lawyerName': '肖杰',
        'lawyerId': '340322197508080166',
        'lawyerPort': '13101201811043287',
        'lawyerTel': 13524402294,
        'lawyerOrg': '上海衡铭律师事务所',
        'takedName': '师磊',
        'takedId': '340104198407220538',
        'supId': 28,
        'supAreaName': '宝山区',
        'lawyerType': 0,
        'caseId': '',
        'meetDate': data.date,
        'meetTime': data.time,
        'meetEndTime': data.endTime,
    };
    let uri  = 'https://lawyer.sss-xtm.com/lawsys/v2/lawyerex/sup/selectRoom';
    let dateOptions = {
        method: 'GET',
        uri: uri,
        qs: {
            laywerMeetStr: JSON.stringify(obj),
        },
        headers: headers,
        json: true,
    };

    let result = await rp(dateOptions);
    return result;
};
let loop = async (date)=>{
    let dateData = await requestDate(date);
    if (dateData.data && dateData.data.length) {
        let countsObj = dateData.data;
        let meetTime = '';
        countsObj.forEach(element => {
            if (element.count && element.count > 0) {
                meetTime = element.meet_time;
            }
        });
        if (meetTime) {
            let timeArr = meetTime.split('-');
            let obj = {
                date: date,
                time: timeArr[0],
                endTime: timeArr[1],
            };
            let regRes = await requestRegister(obj);
            if (regRes.data) {
                console.log('抢号成功');
                setTimeout(()=> { process.exit(1); }, 1000);
            } else {
                console.error('抢票失败');
                setTimeout(()=> { process.exit(1); }, 1000);
            }
        } else {
            console.log(new Date(), `当前日期 ${date} 暂时无号，继续抢号`);
            setTimeout(async()=>{ await loop(date); }, 3000);
        }
    } else {
        console.log(`当前日期 ${date} 请求参数错误`);
        return;
    }
};

let script =  async ()=>{
    try {
        await Promise.all([loop(date1), loop(date2)]);
    } catch (error) {
        console.log(error);
        setTimeout(()=> { process.exit(1); }, 1000);
    }
};

script();
