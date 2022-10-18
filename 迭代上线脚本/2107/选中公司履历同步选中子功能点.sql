begin;
drop table if exists t13;
create table t13
(
    id                  serial not null,
    old_code            varchar(256),
    all_permission_code varchar(256),
    permission_code     varchar(128),
    permission_name     varchar(256),
    sub_permission_code varchar(128),
    sub_permission_name varchar(256),
    primary key (id)
);

insert into t13 (old_code, all_permission_code)
values ('CO-EmployeeManagementMenu-EmployeeJob-Action-View',	'CO-EmployeeManagementMenu-EmployeeJob-Display-Hire-View'),
	('CO-EmployeeManagementMenu-EmployeeJob-Action-View',	'CO-EmployeeManagementMenu-EmployeeJob-Display-Probation-View'),
    ('CO-EmployeeManagementMenu-EmployeeJob-Action-View',	'CO-EmployeeManagementMenu-EmployeeJob-Display-PartTimeJob-View'),
    ('CO-EmployeeManagementMenu-EmployeeJob-Action-View',	'CO-EmployeeManagementMenu-EmployeeJob-Display-JobSalaryAdjustment-View'),
    ('CO-EmployeeManagementMenu-EmployeeJob-Action-View',	'CO-EmployeeManagementMenu-EmployeeJob-Display-JobAdjustment-View'),
    ('CO-EmployeeManagementMenu-EmployeeJob-Action-View',	'CO-EmployeeManagementMenu-EmployeeJob-Display-SalaryAdjustment-View'),
    ('CO-EmployeeManagementMenu-EmployeeJob-Action-View',	'CO-EmployeeManagementMenu-EmployeeJob-Display-Resignation-View'),
    ('CO-EmployeeManagementMenu-EmployeeJob-Action-View',	'CO-EmployeeManagementMenu-EmployeeJob-Display-Rehire-View'),
    ('CO-EmployeeManagementMenu-EmployeeJob-Action-View',	'CO-EmployeeManagementMenu-EmployeeJob-Display-BatchEmployeeTransaction-View'),
    ('CO-EmployeeManagementMenu-EmployeeJob-Action-View',	'CO-EmployeeManagementMenu-EmployeeJob-Display-CustomEvent-View');

update t13 set
               permission_code = p.code,
               permission_name = p.name
from uc_permission p
where p.code = t13.all_permission_code
and p.code is not null
and t13.all_permission_code is not null ;

update t13 set
               sub_permission_code = s.code,
               sub_permission_name = s.name,
               permission_code = p.code,
               permission_name = p.name
from uc_permission_sub s
left join uc_permission p on s.permission_code = p.code
and p.is_delete = 0
and s.is_delete = 0
where s.code = t13.all_permission_code
and s.code is not null
and t13.all_permission_code is not null ;



insert into uc_role_permission (role_code,
                                all_permission_code,
                                permission_code,
                                permission_name,
                                sub_permission_code,
                                sub_permission_name,
                                is_delete,
                                create_uid,
                                create_time,
                                update_uid,
                                update_time)
select distinct t.role_code,
                t.all_permission_code,
                t.permission_code,
                t.permission_name,
                t.sub_permission_code,
                t.sub_permission_name,
                0,
                1,
                now(),
                1,
                now()
from uc_role_permission rm
         right join (select distinct b.role_code as role_code,
                a.old_code,
                a.all_permission_code,
                a.permission_code,
                a.permission_name,
                a.sub_permission_code,
                a.sub_permission_name
from t13 a
         left join uc_role_permission b on
        b.all_permission_code = a.old_code
        and b.is_delete = 0
where b.role_code is not null
  and a.all_permission_code is not null
    and a.permission_code is not null) t on
        t.all_permission_code = rm.all_permission_code
        and t.role_code = rm.role_code
        and rm.is_delete = 0
where rm.all_permission_code is null
    and rm.role_code is null
    and t.all_permission_code is not null
;


drop table if exists t13;

commit;

