
-- 先去测试站数据库里搜索数据
select * from uc_api_permission_relation where method_string = 'CoreHrOverView.virtualTableListCount';

-- 把数据插入上线脚本
begin;
drop table if exists a4_uc_api_permission_relation;
create table if not exists a4_uc_api_permission_relation
(
    id                  SERIAL NOT NULL,
    is_delete           integer,
    create_uid          integer,
    create_time         timestamp with time zone,
    update_uid          integer,
    update_time         timestamp with time zone,
    method_string       varchar(256),
    api_url             varchar(512),
    method_description  varchar(512),
    all_permission_code varchar(256),
    all_permission_name varchar(512),
    PRIMARY KEY (id)
);

INSERT INTO a4_uc_api_permission_relation (id, is_delete, create_uid, create_time, update_uid, update_time, method_string, api_url, method_description, all_permission_code, all_permission_name) VALUES (127872, 0, 1, '2022-08-17 06:15:15.903551', 1, '2022-08-17 06:15:15.903551', 'CoreHrEmployee.getChangeModelSelectionNew', 'CoreHrEmployee/maindata/oprationLog/changeModelNew', '新主数据操作日志筛选项列表(操作模型/操作页面)', 'CO-EmployeeManagementMenu-Display-ViewOperationlog', null);

delete
from uc_api_permission_relation
where method_string in (
    select distinct method_string
    from a4_uc_api_permission_relation
);

insert into uc_api_permission_relation (method_string,
--                                   api_url,
                                        method_description,
                                        all_permission_code,
                                        all_permission_name,
                                        is_delete,
                                        create_uid,
                                        create_time,
                                        update_uid,
                                        update_time)
select b.method_string,
       b.method_description,
       b.all_permission_code,
       b.all_permission_name,
       b.is_delete,
       1,
       now(),
       1,
       now()
from uc_api_permission_relation a
         right join a4_uc_api_permission_relation b on
        a.method_string = b.method_string
        and a.is_delete = b.is_delete
        and a.all_permission_code = b.all_permission_code
where a.method_string is null
  and b.method_string is not null;



update uc_api_permission_relation a
set method_description  = b.method_description,
    all_permission_name = b.all_permission_name,
    is_delete           = b.is_delete,
    update_time         = now()
from a4_uc_api_permission_relation b
where a.method_string = b.method_string
  and a.is_delete = b.is_delete
  and a.all_permission_code = b.all_permission_code;


drop table if exists a4_uc_api_permission_relation;

commit;


