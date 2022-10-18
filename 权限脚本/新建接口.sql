--   新建接口
  DO
  $$
      BEGIN
          IF NOT EXISTS(select * from uc_custom_role where name ='CoreHrUnusualAction-legalEntityChangeUpdateContract')
          THEN
            INSERT INTO uc_custom_role (type, name, description, created, modified) VALUES (null, 'CoreHrUnusualAction-legalEntityChangeUpdateContract', '法人实体变更，是否变更合同信息', now(), now());
          END IF;
      END
  $$;


-- 新建接口和功能点的映射关系
  DO
  $$
      BEGIN
          IF NOT EXISTS(select *
                        from uc_ui_view_base_role_mapping
                        where uiviewid =
                              (select id from uc_ui_view where key = 'CO-EmCertificationMenu-Display-ViewList')
                          and roleid = (select id from uc_custom_role where name = 'CoreHrCertification-getCertificationListMobile'))
          THEN
              insert into uc_ui_view_base_role_mapping (uiviewid,
                                                        roleid)
              values ((select id from uc_ui_view where key = 'CO-EmCertificationMenu-Display-ViewList'),
                      (select id from uc_custom_role where name = 'CoreHrCertification-getCertificationListMobile'));
          END IF;
      END
  $$;




-- 删除接口和功能点的映射关系


  DO
  $$
      BEGIN
          IF EXISTS(select *
                        from uc_ui_view_base_role_mapping
                        where uiviewid =
                              (select id from uc_ui_view where key = 'CO-EmployeeTransactionMenu-Action-CreateJobCompensationAdjustment')
                          and roleid = (select id from uc_custom_role where name = 'CoreHrUnusualAction-legalEntityChangeUpdateContract'))
          THEN
            DELETE FROM uc_ui_view_base_role_mapping where uiviewid =
                              (select id from uc_ui_view where key = 'CO-EmployeeTransactionMenu-Action-CreateJobCompensationAdjustment')
                          and roleid = (select id from uc_custom_role where name = 'CoreHrUnusualAction-legalEntityChangeUpdateContract'))
          END IF;
      END
  $$;
