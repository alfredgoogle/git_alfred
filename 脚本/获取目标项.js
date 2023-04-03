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
    'Cookie':'gr_user_id=8a9601f8-44eb-47fb-b3e9-6de973077d07; access_token=s%3AoK7a54JG9q4tlHPkJmCcEfD10SR5SBFErskpAmRqwJQ3KhYylMMs3QM4pBj8obK6.LOyerktXE5AWLo4QrddsyZ169rV1AWN%2BY3yRDAoSXj0; bfe32f60a37bc666_gr_last_sent_sid_with_cs1=a3e8a189-9c45-4170-9f2c-9b496ac9127e; bfe32f60a37bc666_gr_last_sent_cs1=system1; bfe32f60a37bc666_gr_session_id=a3e8a189-9c45-4170-9f2c-9b496ac9127e; bfe32f60a37bc666_gr_session_id_a3e8a189-9c45-4170-9f2c-9b496ac9127e=true; bfe32f60a37bc666_gr_cs1=system1',
    // 'Referer': 'https://servicewechat.com/wxfafa99c1d1ea041d/65/page-frame.html',
    // 'Accept-Language': 'zh-cn',
};

let page = 0;


let requestPage = async (pageNo)=>{
    let size = 100;
    let obj ={"method":"POST","ip":null,"param":{"datasourceId":1,"paging":{"pageNo":pageNo,"pageSize":size},"sql":"RXJvYWQjMjAyMnNlbGVjdCAqIGZyb20gdWNfcm9sZV9hd2FyZF9nb2FsX2l0ZW1fcnVsZV9kZWZpbmU7"},"path":"/report/api/dataset/preview"};
    let uri  = 'https://javastandard.peoplus.cn:8888/peoplusPro/api/reportcenter-e2e/models/api/model/e2ejava?preview';
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

        str += `INSERT INTO uc_role_award_goal_item_rule_define (${colTemplate}) VALUES (${valTemplate});
        `
    })

    str +=  ``;

    fs.writeFileSync(path.join(__dirname, './uc_role_award_goal_item_rule_define/uc_role_award_goal_item_rule_define.sql'), str, {'flag': 'a'});
    


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
