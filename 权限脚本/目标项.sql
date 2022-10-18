-- 新增目标项
DO $$
BEGIN
    -- 定义班次
    IF NOT EXISTS(select id from uc_role_award_goal_item_rule_define where code='pt.classes.classes')
    THEN
        INSERT INTO uc_role_award_goal_item_rule_define(code, table_name, name, is_delete, create_time, update_time) VALUES ( 'pt.classes.classes', 'pt_classes', '定义班次',  0, NOW(),  NOW());
    END IF;

    -- 加班班次
    IF NOT EXISTS(select id from uc_role_award_goal_item_rule_define where code='pt.classes.overtime')
    THEN
        INSERT INTO uc_role_award_goal_item_rule_define(code, table_name, name, is_delete, create_time, update_time) VALUES ( 'pt.classes.overtime', 'pt_classes', '加班班次',  0, NOW(),  NOW());
    END IF;
END $$;


-- 新增目标项的属性（过滤字段）
DO $$
BEGIN
    IF NOT EXISTS (select id FROM uc_role_award_goal_item_property_define WHERE code='code' AND rule_define_code='pt.classes.classes')
    THEN
        INSERT INTO uc_role_award_goal_item_property_define (code, name, description, rule_define_code, data_type, input_type, operation_list, sort_index, column_name, is_delete, create_uid, create_time, update_uid, update_time, datasource_code, search_read) VALUES ( 'code', '班次编码', null, 'pt.classes.classes', 1, null, 'eq,neq,range,like,in', null, 'code', 0, null, NOW(), null, NOW(), null, null);
    END IF;

    IF NOT EXISTS (select id FROM uc_role_award_goal_item_property_define WHERE code='name' AND rule_define_code='pt.classes.classes')
    THEN
        INSERT INTO uc_role_award_goal_item_property_define (code, name, description, rule_define_code, data_type, input_type, operation_list, sort_index, column_name, is_delete, create_uid, create_time, update_uid, update_time, datasource_code, search_read) VALUES ( 'name', '班次名称', null, 'pt.classes.classes', 1, null, 'eq,neq,range,like,in', null, 'name', 0, null, NOW(), null, NOW(), null, null);
    END IF;

    IF NOT EXISTS (select id FROM uc_role_award_goal_item_property_define WHERE code='classes_category_id' AND rule_define_code='pt.classes.classes')
    THEN
        INSERT INTO uc_role_award_goal_item_property_define (code, name, description, rule_define_code, data_type, input_type, operation_list, sort_index, column_name, is_delete, create_uid, create_time, update_uid, update_time, datasource_code, search_read) VALUES ( 'classes_category_id', '班次分组', null, 'pt.classes.classes', 2, null, 'eq,neq,range,in', null, 'classes_category_id', 0, null, NOW(), null, NOW(), 'pt.classes.category', null);
    END IF;

    IF NOT EXISTS (select id FROM uc_role_award_goal_item_property_define WHERE code='code' AND rule_define_code='pt.classes.overtime')
    THEN
        INSERT INTO uc_role_award_goal_item_property_define (code, name, description, rule_define_code, data_type, input_type, operation_list, sort_index, column_name, is_delete, create_uid, create_time, update_uid, update_time, datasource_code, search_read) VALUES ( 'code', '班次编码', null, 'pt.classes.overtime', 1, null, 'eq,neq,range,like,in', null, 'code', 0, null, NOW(), null, NOW(), null, null);
    END IF;

    IF NOT EXISTS (select id FROM uc_role_award_goal_item_property_define WHERE code='name' AND rule_define_code='pt.classes.overtime')
    THEN
        INSERT INTO uc_role_award_goal_item_property_define (code, name, description, rule_define_code, data_type, input_type, operation_list, sort_index, column_name, is_delete, create_uid, create_time, update_uid, update_time, datasource_code, search_read) VALUES ( 'name', '班次名称', null, 'pt.classes.overtime', 1, null, 'eq,neq,range,like,in', null, 'name', 0, null, NOW(), null, NOW(), null, null);
    END IF;

    IF NOT EXISTS (select id FROM uc_role_award_goal_item_property_define WHERE code='classes_category_id' AND rule_define_code='pt.classes.overtime')
    THEN
        INSERT INTO uc_role_award_goal_item_property_define (code, name, description, rule_define_code, data_type, input_type, operation_list, sort_index, column_name, is_delete, create_uid, create_time, update_uid, update_time, datasource_code, search_read) VALUES ( 'classes_category_id', '班次分组', null, 'pt.classes.overtime', 2, null, 'eq,neq,range,in', null, 'classes_category_id', 0, null, NOW(), null, NOW(), 'pt.classes.category', null);
    END IF;

END $$;


-- 添加功能点与目标项的关联关系
DO $$
BEGIN
    IF NOT EXISTS (select id FROM uc_permission_mdf_relation WHERE permission_code='TM-ScheduleSettingMenu-Display-ViewList' AND goal_item_rule_define_code='pt.classes.classes')
    THEN
        INSERT INTO uc_permission_mdf_relation (permission_code,goal_item_rule_define_code,is_delete,create_time,update_time) VALUES ('TM-ScheduleSettingMenu-Display-ViewList','pt.classes.classes',0,NOW(),NOW());
    END IF;

    IF NOT EXISTS (select id FROM uc_permission_mdf_relation WHERE permission_code='TM-ScheduleSettingMenu-Display-ViewDetail' AND goal_item_rule_define_code='pt.classes.classes')
    THEN
        INSERT INTO uc_permission_mdf_relation (permission_code,goal_item_rule_define_code,is_delete,create_time,update_time) VALUES ('TM-ScheduleSettingMenu-Display-ViewDetail','pt.classes.classes',0,NOW(),NOW());
    END IF;

    IF NOT EXISTS (select id FROM uc_permission_mdf_relation WHERE permission_code='TM-ScheduleSettingMenu-Display-Create' AND goal_item_rule_define_code='pt.classes.classes')
    THEN
        INSERT INTO uc_permission_mdf_relation (permission_code,goal_item_rule_define_code,is_delete,create_time,update_time) VALUES ('TM-ScheduleSettingMenu-Display-Create','pt.classes.classes',0,NOW(),NOW());
    END IF;

    IF NOT EXISTS (select id FROM uc_permission_mdf_relation WHERE permission_code='TM-ScheduleSettingMenu-Display-Edit' AND goal_item_rule_define_code='pt.classes.classes')
    THEN
        INSERT INTO uc_permission_mdf_relation (permission_code,goal_item_rule_define_code,is_delete,create_time,update_time) VALUES ('TM-ScheduleSettingMenu-Display-Edit','pt.classes.classes',0,NOW(),NOW());
    END IF;

    IF NOT EXISTS (select id FROM uc_permission_mdf_relation WHERE permission_code='TM-ScheduleSettingMenu-Display-Delete' AND goal_item_rule_define_code='pt.classes.classes')
    THEN
        INSERT INTO uc_permission_mdf_relation (permission_code,goal_item_rule_define_code,is_delete,create_time,update_time) VALUES ('TM-ScheduleSettingMenu-Display-Delete','pt.classes.classes',0,NOW(),NOW());
    END IF;


    IF NOT EXISTS (select id FROM uc_permission_mdf_relation WHERE permission_code='TM-OvertimeScheduleMenu-Display-ViewList' AND goal_item_rule_define_code='pt.classes.overtime')
    THEN
        INSERT INTO uc_permission_mdf_relation (permission_code,goal_item_rule_define_code,is_delete,create_time,update_time) VALUES ('TM-OvertimeScheduleMenu-Display-ViewList','pt.classes.overtime',0,NOW(),NOW());
    END IF;

    IF NOT EXISTS (select id FROM uc_permission_mdf_relation WHERE permission_code='TM-OvertimeScheduleMenu-Display-ViewDetail' AND goal_item_rule_define_code='pt.classes.overtime')
    THEN
        INSERT INTO uc_permission_mdf_relation (permission_code,goal_item_rule_define_code,is_delete,create_time,update_time) VALUES ('TM-OvertimeScheduleMenu-Display-ViewDetail','pt.classes.overtime',0,NOW(),NOW());
    END IF;

    IF NOT EXISTS (select id FROM uc_permission_mdf_relation WHERE permission_code='TM-OvertimeScheduleMenu-Display-Create' AND goal_item_rule_define_code='pt.classes.overtime')
    THEN
        INSERT INTO uc_permission_mdf_relation (permission_code,goal_item_rule_define_code,is_delete,create_time,update_time) VALUES ('TM-OvertimeScheduleMenu-Display-Create','pt.classes.overtime',0,NOW(),NOW());
    END IF;

    IF NOT EXISTS (select id FROM uc_permission_mdf_relation WHERE permission_code='TM-OvertimeScheduleMenu-Display-Edit' AND goal_item_rule_define_code='pt.classes.overtime')
    THEN
        INSERT INTO uc_permission_mdf_relation (permission_code,goal_item_rule_define_code,is_delete,create_time,update_time) VALUES ('TM-OvertimeScheduleMenu-Display-Edit','pt.classes.overtime',0,NOW(),NOW());
    END IF;

    IF NOT EXISTS (select id FROM uc_permission_mdf_relation WHERE permission_code='TM-OvertimeScheduleMenu-Display-Delete' AND goal_item_rule_define_code='pt.classes.overtime')
    THEN
        INSERT INTO uc_permission_mdf_relation (permission_code,goal_item_rule_define_code,is_delete,create_time,update_time) VALUES ('TM-OvertimeScheduleMenu-Display-Delete','pt.classes.overtime',0,NOW(),NOW());
    END IF;
END $$;