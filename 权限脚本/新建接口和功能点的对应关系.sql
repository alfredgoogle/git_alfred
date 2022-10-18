  DO
  $$
      BEGIN
          IF NOT EXISTS(select *
                        from uc_ui_view_base_role_mapping
                        where uiviewid =
                              (select id from uc_ui_view where key = 'CO-OverViewMenu-Affair-Display-Follow-View')
                          and roleid = (select id from uc_custom_role where name = 'CoreHrApprove-getDocumentStatus'))
          THEN
              insert into uc_ui_view_base_role_mapping (uiviewid,
                                                        roleid)
              values ((select id from uc_ui_view where key = 'CO-OverViewMenu-Affair-Display-Follow-View'),
                      (select id from uc_custom_role where name = 'CoreHrApprove-getDocumentStatus'));
          END IF;
      END
  $$;

