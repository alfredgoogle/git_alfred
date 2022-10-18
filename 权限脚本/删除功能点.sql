-- 删除选中
update uc_role_permission
set is_delete = 1
where all_permission_code in (
                              'CO-EmployeeTransactionMenu-Action-ViewListCompensationAdjustment',
                              'CO-EmployeeTransactionMenu-Action-ViewListJobAdjustment',
                              'CO-EmployeeTransactionMenu-ViewJobCompensationAdjustment-Action-JobDescription'
    );

-- 删除功能点
delete
from uc_permission
where code in (
               'CO-EmployeeTransactionMenu-Action-ViewListCompensationAdjustment',
               'CO-EmployeeTransactionMenu-Action-ViewListJobAdjustment',
               'CO-EmployeeTransactionMenu-ViewJobCompensationAdjustment-Action-JobDescription'
    );