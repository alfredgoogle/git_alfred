- system权限更新

insert into uc_custom_role_mapping (resourcetype,
                                    principaltype,
                                    principalid,
                                    roleid)
select 'system',
       'CustomUser',
       1,
       r.id
from uc_custom_role r
         left join uc_custom_role_mapping rm on
        r.id = rm.roleid
        and rm.principalid = 1
        and rm.resourcetype = 'system'
        and rm.principaltype = 'CustomUser'
where r.id is not null
  and rm.roleid is null;