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
    // 'Cookie':'gr_user_id=d6fcf161-cf4e-4ba9-aca3-63e361da7ea9; bfe32f60a37bc666_gr_last_sent_cs1=system1; bfe32f60a37bc666_gr_session_id=702ae534-b719-4795-bc93-af75a92f058c; bfe32f60a37bc666_gr_last_sent_sid_with_cs1=702ae534-b719-4795-bc93-af75a92f058c; bfe32f60a37bc666_gr_session_id_702ae534-b719-4795-bc93-af75a92f058c=true; access_token=s%3AnYBwHxx7aWF7qAbwGBRzLblQypAGZE1WfApliMkvbUTOd1FZp24AvDy3aYrBbk5P.ili8iso1K1GCJaKaIQ3NtORlSkkANLdnWTPdOmGrmIw; bfe32f60a37bc666_gr_cs1=system1',
    // 'Cookie':'gr_user_id=8a9601f8-44eb-47fb-b3e9-6de973077d07; access_token=s%3AA60n6XtvwP1ytqy0qhfpr7lGYErzX7z9C8JJKYUUSPYr35mL3Jv7FmTohJwvr3dl.3ZVNIUW%2FhpVXSF0gBK8R%2FtZ9QCP5sAI8e0HZoL907dI; bfe32f60a37bc666_gr_last_sent_sid_with_cs1=49ccb454-a076-4978-8b7d-e180f7d7d733; bfe32f60a37bc666_gr_last_sent_cs1=system1; bfe32f60a37bc666_gr_session_id=49ccb454-a076-4978-8b7d-e180f7d7d733; bfe32f60a37bc666_gr_session_id_49ccb454-a076-4978-8b7d-e180f7d7d733=true; bfe32f60a37bc666_gr_cs1=system1',
    'Cookie':'gr_user_id=8a9601f8-44eb-47fb-b3e9-6de973077d07; access_token=s%3Aw3dPyaJSqnP5opNKhVDHDdvuOzjz53L3r7bJHZ3zZFs14RJGUNZ7qGZEVH8uTLAO.mhO7%2FQ6lpTbPk6Lo31%2BGwFt95uSqeYgtEF3v1YGC4m0; bfe32f60a37bc666_gr_last_sent_sid_with_cs1=75de93e8-4451-42cd-b28d-dccc08739aac; bfe32f60a37bc666_gr_last_sent_cs1=system1; bfe32f60a37bc666_gr_cs1=system1; bfe32f60a37bc666_gr_session_id=75de93e8-4451-42cd-b28d-dccc08739aac; bfe32f60a37bc666_gr_session_id_75de93e8-4451-42cd-b28d-dccc08739aac=true',

    // 'Referer': 'https://servicewechat.com/wxfafa99c1d1ea041d/65/page-frame.html',
    // 'Accept-Language': 'zh-cn',
};

page = 0;
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
                "sql": "select * from lb_base_languag_row"
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
    


        BEGIN;

        drop table if exists a3_lb_base_languag_row;
        create table if not exists a3_lb_base_languag_row
        (
            id                    SERIAL NOT NULL,
            is_delete             integer,
            create_uid            integer,
            create_time           timestamp with time zone,
            update_uid            integer,
            update_time           timestamp with time zone,
            language              varchar(32),
            default_translation   varchar(512),
            customize_translation varchar(512),
            field_key             varchar(128),
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

        str += `INSERT INTO a3_lb_base_languag_row (${colTemplate}) VALUES (${valTemplate});
        `
    })


    str += `
    



delete from a3_lb_base_languag_row where id in (
    select id from a3_lb_base_languag_row a
left join (select field_key,language from a3_lb_base_languag_row where is_delete = 1) b
on a.language = b.language and a.field_key = b.field_key
where a.is_delete = 0
and b.language is not null
and b.field_key is not null
    );







insert into lb_base_languag_row ( is_delete,
                                 create_uid,
                                 create_time,
                                 update_uid,
                                 update_time,
                                 language,
                                 default_translation,
                                 customize_translation,
                                 field_key)
select distinct b.is_delete,
                1,
                now(),
                1,
                now(),
                b.language,
                b.default_translation,
                b.customize_translation,
                b.field_key
from lb_base_languag_row a
         right join a3_lb_base_languag_row b on
        a.field_key = b.field_key
        and a.language = b.language
where a.field_key is null;


update lb_base_languag_row a
set default_translation = b.default_translation,
    update_time = now(),
    update_uid = 1,
    is_delete = b.is_delete
from a3_lb_base_languag_row b
where a.field_key = b.field_key
and a.language = b.language;

drop table if exists a3_lb_base_languag_row;

COMMIT;


    `
    fs.writeFileSync(path.join(__dirname, './language/row.sql'), str, {'flag': 'a'});
    


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
