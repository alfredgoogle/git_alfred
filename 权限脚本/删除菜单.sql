-- 删除用户已选定的旧菜单
update uc_menu_role_mapping
set is_delete   = 1,
    update_uid  = 1,
    update_time = now()
where menu_code in ('CO-EmCountFormMenu');


-- 删除菜单
delete
from uc_ui_menu
where key in ('CO-EmCountFormMenu');