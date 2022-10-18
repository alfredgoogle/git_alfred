update  uc_ui_menu set parent_id = (select id from uc_ui_menu where key = 'CO-ComsoleMenu') where key = 'CO-CustomTabMenu';
update  uc_ui_menu set parent_id = (select id from uc_ui_menu where key = 'CO-NewEmpConfigsMenu') where key = 'CO-EmployeeCenterMenu';
update  uc_ui_menu set enabled = 0 where key = 'CO-TechnicalSettingMenu';