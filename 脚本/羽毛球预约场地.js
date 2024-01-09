
请求接口
POST /booking/guestorder HTTP/1.1
Host: www.koksoft.com
Connection: keep-alive
Content-Length: 110
xweb_xhr: 1
wxkey: B89C621820717848E98C985CE8AC662B1B701F5257159D0206158329660F0CF4F6C0460CDFFC3859450B94E712CAB2D065D824C809890EE43EC0439E61193D02561BAAC5693544B1393EC769AAE1DFE214B8385A09B3A347A9982B297B105F4006BD0C0773A29D878BA6DE29FB3351C4
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 MicroMessenger/6.8.0(0x16080000) NetType/WIFI MiniProgramEnv/Mac MacWechat/WMPF MacWechat/3.8.4(0x13080414)XWEB/31011
Content-Type: application/x-www-form-urlencoded
Accept: */*
Sec-Fetch-Site: cross-site
Sec-Fetch-Mode: cors
Sec-Fetch-Dest: empty
Referer: https://servicewechat.com/wx62ed5d02cd57f267/20/page-frame.html
Accept-Encoding: gzip, deflate, br
Accept-Language: zh-CN,zh;q=0.9
传参：
datestring=2023-11-23&cdstring=Y%3A2%2C07%3A00-08%3A00&phone=18621795782&guestname=%E8%82%96%E6%96%87%E7%AB%A0


结果：
{
	"success": true,
	"message": "操作成功",
	"code": 200,
	"result": {
		"data1": "W23112200028",
		"data2": "20",
		"data3": ""
	},
	"timestamp": 0
}


预定：

GET /common/getminipaystring?payje=20&paykey=guestorder&goodsshuoming=%E5%B0%8F%E7%A8%8B%E5%BA%8F%E8%AE%A2%E5%9C%BA&out_trade_no=W23112200028&qgbh=001 HTTP/1.1
Host: www.koksoft.com
Connection: keep-alive
xweb_xhr: 1
wxkey: B89C621820717848E98C985CE8AC662B1B701F5257159D0206158329660F0CF4F6C0460CDFFC3859450B94E712CAB2D065D824C809890EE43EC0439E61193D02561BAAC5693544B1393EC769AAE1DFE214B8385A09B3A347A9982B297B105F4006BD0C0773A29D878BA6DE29FB3351C4
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 MicroMessenger/6.8.0(0x16080000) NetType/WIFI MiniProgramEnv/Mac MacWechat/WMPF MacWechat/3.8.4(0x13080414)XWEB/31011
Content-Type: application/x-www-form-urlencoded
Accept: */*
Sec-Fetch-Site: cross-site
Sec-Fetch-Mode: cors
Sec-Fetch-Dest: empty
Referer: https://servicewechat.com/wx62ed5d02cd57f267/20/page-frame.html
Accept-Encoding: gzip, deflate, br
Accept-Language: zh-CN,zh;q=0.9

传参：
payje	20
paykey	guestorder
goodsshuoming	小程序订场
out_trade_no	W23112200028
qgbh	001


结果：
{
	"success": true,
	"message": "操作成功",
	"code": 200,
	"result": {
		"data0": true,
		"data1": "{\"appId\":\"wx62ed5d02cd57f267\",\"nonceStr\":\"eb4658b4735843a8bf741e2f17bbde38\",\"wxpackage\":\"prepay_id=wx22095813922423c2828a0511f177600000\",\"paySign\":\"732DAC52562C0EDCAE32D8A4EDFE43A8\",\"signType\":\"MD5\",\"timeStamp\":\"1700618294\"}"
	},
	"timestamp": 0
}




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

let date1 = '20220929';å
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



