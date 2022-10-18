select * from uc_api_permission_relation where method_string = 'CoreHrUnusualAction.getResignationListCount';


-- 批量模糊搜索
select * from uc_api_permission_relation where method_string ilike any(array['%CoreHrApprove.periodHireCounts%','%CoreHrApprove.newEmployeeListCount%','%CoreHrApprove.newEmployeeListHead%','%CoreHrApprove.newEmployeeList%','%CoreHrApprove.periodProbationData%','%CoreHrApprove.periodProbationCounts%','%CoreHrSalarySystem.getSalaryInfoForSalaryAdjustment%','%CoreHrSalarySystem.getSalaryInfoForTransfer%','%CoreHrApprove.periodTransterData%','%CoreHrApprove.periodTransterCounts%','%CoreHrApprove.periodParttimeData%','%CoreHrApprove.periodParttimeCounts%','%CoreHrApprove.periodResignationData%','%CoreHrApprove.periodResignationCounts%']);

