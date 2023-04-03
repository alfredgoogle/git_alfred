--   新建接口
  DO
  $$
      BEGIN
          IF NOT EXISTS(select * from uc_custom_role where name ='position-getPosEmp')
          THEN
            INSERT INTO uc_custom_role (type, name, description, created, modified, roletypeid, javapath) VALUES ( 'Post', 'position-getPosEmp', '获取岗位主岗员工信息', '2020-12-31 09:12:47.516000', '2020-12-31 09:12:47.516000', '7a3a81f2-5f7f-4255-971c-5bfd168e585e', '/ersoft-core-hr/api/position/getPosEmp');
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
