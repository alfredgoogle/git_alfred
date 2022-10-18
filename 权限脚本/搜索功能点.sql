select * from uc_permission where code = 'CO-PreOnboardingMenu-Action-ViewDetail';


-- 更新功能点
update uc_permission
set has_goal_crowd =1
where code = 'HP-MyProfileMenu-Action-EmployeeCertification';