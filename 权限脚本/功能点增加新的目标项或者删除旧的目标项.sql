-- 增加

-- 功能点: 'CO-BusinessUnitMenu-Action-ViewDetail', 目标项: 'hr.division'

DO
$$
    BEGIN
        IF NOT EXISTS(select id
                      from uc_permission_mdf_relation
                      where permission_code = 'CO-BusinessUnitMenu-Action-ViewDetail'
                        and goal_item_rule_define_code = 'hr.division')
        THEN
            insert into uc_permission_mdf_relation (permission_code, goal_item_rule_define_code, is_delete, create_uid,
                                                    create_time,
                                                    update_uid, update_time)
            values ('CO-BusinessUnitMenu-Action-ViewDetail', 'hr.division', 0, 1, now(), 1, now());

        END IF;
    END
$$;



-- 删除
-- 功能点: 'CO-JobMenu-Display-ViewList', 目标项: 'pay.level'

delete from uc_permission_mdf_relation where id in (
select id
        from uc_permission_mdf_relation
where permission_code = 'CO-JobMenu-Display-ViewList'
and goal_item_rule_define_code = 'pay.level'
                    );

                