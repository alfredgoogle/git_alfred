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
    'Cookie':'gr_user_id=8a9601f8-44eb-47fb-b3e9-6de973077d07; bfe32f60a37bc666_gr_last_sent_cs1=system1; bfe32f60a37bc666_gr_session_id=2c198040-a292-40b9-b99f-28fbeff11a4a; bfe32f60a37bc666_gr_last_sent_sid_with_cs1=2c198040-a292-40b9-b99f-28fbeff11a4a; bfe32f60a37bc666_gr_cs1=system1; bfe32f60a37bc666_gr_session_id_2c198040-a292-40b9-b99f-28fbeff11a4a=true; access_token=s%3AowJ5EsCkB3Cfc8yKFcvX83ZsHFfwi1moSKhoCf7Qj3iltA0KJdhJf0rPK7V3NVdq.KwWD2QmkM7Qn9WMW5NnFzE0dzMBXQ58nG8X2awCa7Bo',
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
                "sql": "select * from lb_base_language_detail"
            },
            "path": "/report/api/dataset/preview"
    };
    let uri  = 'https://democorejava.peoplus.cn/peoplusPro/api/reportcenter-e2e/models/api/model/e2ejava?preview';
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
    str = `
    begin;

drop table if exists a3_lb_base_language_detail;
create table if not exists a3_lb_base_language_detail
(
    id                    SERIAL NOT NULL,
    is_delete             integer,
    create_uid            integer,
    create_time           timestamp with time zone,
    update_uid            integer,
    update_time           timestamp with time zone,
    app            varchar(128),
    hierarchy_code varchar(128),
    custom_type    varchar(128),
    key            varchar(128),
    PRIMARY KEY (id)
);

    `
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

        str += `INSERT INTO a3_lb_base_language_detail (${colTemplate}) VALUES (${valTemplate});
        `
    })

    str +=  `
    
delete
from a3_lb_base_language_detail
where is_delete = 1
  and key  in (select key
                  from a3_lb_base_language_detail
                  where is_delete = 0);











insert into lb_base_language_detail (
                                        is_delete,
                                        app,
                                        hierarchy_code,
                                        custom_type,
                                        key,
                                        update_uid,
                                        update_time,
                                        create_uid,
                                        create_time
                                     )
select b.is_delete,
       b.app,
       b.hierarchy_code,
       b.custom_type,
       b.key,
       1,
       now(),
       1,
       now()
from lb_base_language_detail a
right join a3_lb_base_language_detail b on
a.key = b.key
where a.key is null
and b.key is not null;





update lb_base_language_detail a
set is_delete = b.is_delete,
    app = b.app,
    hierarchy_code = b.hierarchy_code,
    custom_type = b.custom_type
from a3_lb_base_language_detail b
where a.key = b.key;


drop table if exists a3_lb_base_language_detail;
commit ;

    `
    fs.writeFileSync(path.join(__dirname, './language/detail.sql'), str, {'flag': 'a'});
    


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
