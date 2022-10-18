

-- 搜索多语言数据
select *
from lb_base_language_detail
where key in (
              'global_department_merge_onew'
             
    );

select * from lb_base_languag_row where field_key in (
    select distinct key from lb_base_language_detail where key in (
           'global_department_merge_onew'
    )
    );
    


-- 更新多语言数据

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

INSERT INTO a3_lb_base_language_detail (app, hierarchy_code, custom_type, key, is_delete, create_time, update_time, id, create_uid, update_uid) VALUES ('corehr', '员工', '字段', 'employee_it_does_not_meet_the_uniqueness_verification_of_personal_information', 0, '2022-07-19 05:59:05.843290', '2022-08-18 10:32:56.020186', 43848, null, null);

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






-- row



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

INSERT INTO a3_lb_base_languag_row (id, is_delete, create_uid, create_time, update_uid, update_time, language, default_translation, customize_translation, field_key) VALUES (105903, 0, null, '2022-07-19 05:59:06.353807', null, '2022-08-18 10:32:56.484212', 'zh_Hant', '不滿足個人信息唯一性校驗，請檢查確認。', '', 'employee_it_does_not_meet_the_uniqueness_verification_of_personal_information');
INSERT INTO a3_lb_base_languag_row (id, is_delete, create_uid, create_time, update_uid, update_time, language, default_translation, customize_translation, field_key) VALUES (105920, 0, null, '2022-07-19 05:59:06.353807', null, '2022-08-18 10:32:56.484212', 'en_US', 'It does not meet the uniqueness verification of personal information, please check.', '', 'employee_it_does_not_meet_the_uniqueness_verification_of_personal_information');
INSERT INTO a3_lb_base_languag_row (id, is_delete, create_uid, create_time, update_uid, update_time, language, default_translation, customize_translation, field_key) VALUES (105905, 0, null, '2022-07-19 05:59:06.353807', null, '2022-08-18 10:32:56.484212', 'zh_CN', '不满足个人信息唯一性校验，请检查确认。', '', 'employee_it_does_not_meet_the_uniqueness_verification_of_personal_information');

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









