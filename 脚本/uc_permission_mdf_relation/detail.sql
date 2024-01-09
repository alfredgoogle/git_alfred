 
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListJobAdjustment' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListJobAdjustment', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListJobAdjustment' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListJobAdjustment', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListJobAdjustment' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListJobAdjustment', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListJobAdjustment' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListJobAdjustment', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-AllOrgChartsMenu-Org-Action-Merge' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-AllOrgChartsMenu-Org-Action-Merge', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListJobAdjustment' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListJobAdjustment', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListJobAdjustment' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListJobAdjustment', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Action-EditBatchPartTimeJob' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Action-EditBatchPartTimeJob', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-CreateRehire' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-CreateRehire', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-CreateRehire' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-CreateRehire', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-EditRehire' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-EditRehire', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-EditRehire' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-EditRehire', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ExportRhire' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ExportRhire', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='PMU-Goal-Display-DepartmentList' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('PMU-Goal-Display-DepartmentList', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-ExportJobAdjustment' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-ExportJobAdjustment', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-ExportJobAdjustment' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-ExportJobAdjustment', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-ExportSalaryAdjustment' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-ExportSalaryAdjustment', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-BatchSendTodo' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-BatchSendTodo', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BatchEmployeeTransactionMenu-Action-Create' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BatchEmployeeTransactionMenu-Action-Create', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-ViewListApproving' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-ViewListApproving', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-ViewListExpired' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-ViewListExpired', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-ViewListExpired' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-ViewListExpired', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-ViewListExpired' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-ViewListExpired', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Action-ViewDetailBatchPartTimeJob' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Action-ViewDetailBatchPartTimeJob', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Action-ViewDetailBatchPartTimeJob' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Action-ViewDetailBatchPartTimeJob', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-EditResignation' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-EditResignation', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-CreateResignation' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-CreateResignation', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-ViewListJobAdjustment-Display-InApproval' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-ViewListJobAdjustment-Display-InApproval', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-ViewListJobAdjustment-Display-InApproval' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-ViewListJobAdjustment-Display-InApproval', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewHireInfo' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewHireInfo', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-ExportSalaryAdjustment' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-ExportSalaryAdjustment', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditEntry' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditEntry', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Action-SubmitBatchPartTimeJob' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Action-SubmitBatchPartTimeJob', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Action-ViewDetailBatchPartTimeJob' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Action-ViewDetailBatchPartTimeJob', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Action-ViewDetailBatchPartTimeJob' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Action-ViewDetailBatchPartTimeJob', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Action-ViewDetailBatchPartTimeJob' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Action-ViewDetailBatchPartTimeJob', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewSalaryPlan' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewSalaryPlan', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewSalaryPlan' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewSalaryPlan', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-NewPreparationAnalysis-Action-Overview' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-NewPreparationAnalysis-Action-Overview', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-NewPreparationAnalysis-Action-Control' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-NewPreparationAnalysis-Action-Control', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-NewPreparationAnalysis-Display-ViewDetail-SnapshotData' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-NewPreparationAnalysis-Display-ViewDetail-SnapshotData', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-NewPreparationQuantity-Display-ViewDetail-History' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-NewPreparationQuantity-Display-ViewDetail-History', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-NewsContent-Action-Create' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-NewsContent-Action-Create', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-NewsContent-Action-Create' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-NewsContent-Action-Create', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-Assign' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-Assign', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-SubmitSalaryAdjustment' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-SubmitSalaryAdjustment', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-SubmitSalaryAdjustment' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-SubmitSalaryAdjustment', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-SubmitSalaryAdjustment' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-SubmitSalaryAdjustment', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-SubmitSalaryAdjustment' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-SubmitSalaryAdjustment', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Action-CreateBatchProbation' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Action-CreateBatchProbation', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ImportRhire' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ImportRhire', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BlackListNameMenu-Action-Export' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BlackListNameMenu-Action-Export', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Action-EditBatchProbation' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Action-EditBatchProbation', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Action-EditBatchProbation' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Action-EditBatchProbation', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Action-EditBatchProbation' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Action-EditBatchProbation', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Action-EditBatchProbation' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Action-EditBatchProbation', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Action-EditBatchProbation' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Action-EditBatchProbation', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Display-ViewListJobCompensationAdjustment' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Display-ViewListJobCompensationAdjustment', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Action-SubmitBatchProbation' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Action-SubmitBatchProbation', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Action-SubmitBatchProbation' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Action-SubmitBatchProbation', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Action-SubmitBatchProbation' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Action-SubmitBatchProbation', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Action-SubmitBatchProbation' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Action-SubmitBatchProbation', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Action-SubmitBatchProbation' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Action-SubmitBatchProbation', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-Import' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-Import', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Display-ViewList' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Display-ViewList', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-CreateTodo' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-CreateTodo', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingSettingsQuick-Action-Edit' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingSettingsQuick-Action-Edit', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewEmployeeInfo' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewEmployeeInfo', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewEmployeeInfo' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewEmployeeInfo', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewBasicInfo' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewBasicInfo', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Cancel-Action-Delete' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Cancel-Action-Delete', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-CreateRehire' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-CreateRehire', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-Edit' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-Edit', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DivisionMenu-Action-Update' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DivisionMenu-Action-Update', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BusinessUnitMenu-Action-Create' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BusinessUnitMenu-Action-Create', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewContract' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewContract', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-BatchUpdate' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-BatchUpdate', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-BatchUpdate' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-BatchUpdate', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-EditPartTimeJob' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-EditPartTimeJob', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditHireInfo' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditHireInfo', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-RemindAgain' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-RemindAgain', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-RemindAgain' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-RemindAgain', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-BatchConfirmEntry' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-BatchConfirmEntry', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Action-ExportBatchPartTimeJob' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Action-ExportBatchPartTimeJob', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Action-ExportBatchPartTimeJob' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Action-ExportBatchPartTimeJob', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-LegalEntityMenu-Action-Export' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-LegalEntityMenu-Action-Export', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewDetail' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewDetail', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewDetail' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewDetail', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Display-Cancel-ViewList' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Display-Cancel-ViewList', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Display-Cancel-ViewList' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Display-Cancel-ViewList', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ConfirmEntry' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ConfirmEntry', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-SendData' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-SendData', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-SendData' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-SendData', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-SendData' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-SendData', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ImportResignation' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ImportResignation', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-Merge' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-Merge', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-BatchSendData' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-BatchSendData', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-MSMBatchSendData' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-MSMBatchSendData', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-Merge' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-Merge', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewPersonalInfo' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewPersonalInfo', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditEntry' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditEntry', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-SubmitContract' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-SubmitContract', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewRehire' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewRehire', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewRehire' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewRehire', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewRehire' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewRehire', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-CreateSalaryScale' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-CreateSalaryScale', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-DeleteSalaryScale' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-DeleteSalaryScale', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditContract' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditContract', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Display-ViewList' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Display-ViewList', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DivisionMenu-Action-BatchUpdate' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DivisionMenu-Action-BatchUpdate', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-BatchUpdate' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-BatchUpdate', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Action-ExportBatchProbation' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Action-ExportBatchProbation', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-AllOrgChartsMenu-Display-ViewPosition' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-AllOrgChartsMenu-Display-ViewPosition', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Action-ExportBatchProbation' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Action-ExportBatchProbation', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Action-ExportBatchProbation' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Action-ExportBatchProbation', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Action-ExportBatchProbation' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Action-ExportBatchProbation', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-Export' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-Export', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-NewsContent-Action-Edit' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-NewsContent-Action-Edit', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-NewsContent-Action-Edit' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-NewsContent-Action-Edit', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmCertificationMenu-Display-ViewList' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmCertificationMenu-Display-ViewList', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmCertificationMenu-Display-ViewList' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmCertificationMenu-Display-ViewList', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmCertificationMenu-Display-ViewList' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmCertificationMenu-Display-ViewList', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-ImportSalaryAdjustment' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-ImportSalaryAdjustment', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-CreatePartTimeJob' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-CreatePartTimeJob', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-CreatePartTimeJob' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-CreatePartTimeJob', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-Update' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-Update', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-LegalEntityMenu-Action-Import' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-LegalEntityMenu-Action-Import', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-LocationMenu-Action-Import' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-LocationMenu-Action-Import', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-EditRehire' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-EditRehire', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagement-Display-ViewReporting' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagement-Display-ViewReporting', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DivisionMenu-Action-Stop' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DivisionMenu-Action-Stop', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-CreateTodo' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-CreateTodo', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditPersonalInfo' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditPersonalInfo', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditPersonalInfo' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditPersonalInfo', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewTodo' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewTodo', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-CreateJobCompensationAdjustment' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-CreateJobCompensationAdjustment', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-CreateJobCompensationAdjustment' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-CreateJobCompensationAdjustment', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewTodo' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewTodo', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DivisionMenu-Action-Edit' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DivisionMenu-Action-Edit', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-Export' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-Export', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-Export' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-Export', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingSettingsQuick-Action-ViewDetail' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingSettingsQuick-Action-ViewDetail', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-Assign' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-Assign', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-BatchCancelEntry' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-BatchCancelEntry', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-BatchCancelEntry' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-BatchCancelEntry', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-BatchSendTodo' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-BatchSendTodo', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-BatchSendTodo' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-BatchSendTodo', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-NewPreparationQuantity-Display-ViewDetail-CurrentData' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-NewPreparationQuantity-Display-ViewDetail-CurrentData', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-CreateJobCompensationAdjustment' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-CreateJobCompensationAdjustment', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-Display-ViewListPartTimeJob' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-Display-ViewListPartTimeJob', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-Display-ViewListPartTimeJob' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-Display-ViewListPartTimeJob', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BatchEmployeeTransactionMenu-Action-Edit' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BatchEmployeeTransactionMenu-Action-Edit', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BlackListNameMenu-Action-Edit' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BlackListNameMenu-Action-Edit', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewTodo' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewTodo', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditTodo' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditTodo', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditTodo' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditTodo', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditTodo' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditTodo', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditTodo' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditTodo', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewContract' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewContract', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditContract' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditContract', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditContract' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditContract', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditContract' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditContract', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-CreateProbationManagement' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-CreateProbationManagement', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagementMenu-Action-CreateEmployee' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagementMenu-Action-CreateEmployee', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagementMenu-Display-Info' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagementMenu-Display-Info', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-CreateSubDepartment' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-CreateSubDepartment', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagementMenu-Display-Info' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagementMenu-Display-Info', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagementMenu-Display-Info' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagementMenu-Display-Info', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagementMenu-Display-Info' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagementMenu-Display-Info', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagementMenu-Display-Info' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagementMenu-Display-Info', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ImportJobCompensationAdjustment' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ImportJobCompensationAdjustment', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Display-ViewListProbationManagement' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Display-ViewListProbationManagement', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ImportJobCompensationAdjustment' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ImportJobCompensationAdjustment', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ImportJobCompensationAdjustment' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ImportJobCompensationAdjustment', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-EditJobCompensationAdjustment' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-EditJobCompensationAdjustment', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ExportPartTimeJob' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ExportPartTimeJob', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ExportPartTimeJob' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ExportPartTimeJob', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListRehireAll' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListRehireAll', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-LocationMenu-Action-ViewDetail' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-LocationMenu-Action-ViewDetail', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BlackListNameMenu-Action-Edit' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BlackListNameMenu-Action-Edit', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ImportRhire' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ImportRhire', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ImportPartTimeJob' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ImportPartTimeJob', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ImportPartTimeJob' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ImportPartTimeJob', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListPartTimeJobAll' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListPartTimeJobAll', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListPartTimeJobAll' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListPartTimeJobAll', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListPartTimeJobAll' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListPartTimeJobAll', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListResignationAll' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListResignationAll', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Display-ViewListResignation' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Display-ViewListResignation', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-ViewListJobCompensationAdjustmentDisplay-Display-AllRecords' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-ViewListJobCompensationAdjustmentDisplay-Display-AllRecords', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-ViewListJobCompensationAdjustmentDisplay-Display-AllRecords' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-ViewListJobCompensationAdjustmentDisplay-Display-AllRecords', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreparationMenu-Action-Create' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreparationMenu-Action-Create', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreparationMenu-Action-Create' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreparationMenu-Action-Create', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreparationMenu-Action-Create' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreparationMenu-Action-Create', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreparationMenu-Action-Create' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreparationMenu-Action-Create', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreparationMenu-Action-Edit' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreparationMenu-Action-Edit', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreparationMenu-Action-Edit' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreparationMenu-Action-Edit', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreparationMenu-Action-Export' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreparationMenu-Action-Export', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreparationMenu-Action-Import' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreparationMenu-Action-Import', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreparationMenu-Action-Import' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreparationMenu-Action-Import', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreparationMenu-Action-Import' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreparationMenu-Action-Import', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreparationMenu-Action-Import' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreparationMenu-Action-Import', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreparationMenu-Action-ViewDetail' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreparationMenu-Action-ViewDetail', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreparationMenu-Action-ViewDetail' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreparationMenu-Action-ViewDetail', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreparationMenu-Action-ViewDetail' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreparationMenu-Action-ViewDetail', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreparationMenu-Action-ViewDetail' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreparationMenu-Action-ViewDetail', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-ViewListJobCompensationAdjustmentDisplay-Display-AllRecords' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-ViewListJobCompensationAdjustmentDisplay-Display-AllRecords', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-CreateJobAdjustment' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-CreateJobAdjustment', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagementMenu-Action-Export' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagementMenu-Action-Export', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagementMenu-Action-Export' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagementMenu-Action-Export', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagementMenu-Action-Export' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagementMenu-Action-Export', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagementMenu-Action-Export' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagementMenu-Action-Export', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagementMenu-Action-Export' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagementMenu-Action-Export', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-ExportJobAdjustment' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-ExportJobAdjustment', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-ExportJobAdjustment' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-ExportJobAdjustment', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-SubmitResignation' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-SubmitResignation', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-SubmitResignation' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-SubmitResignation', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-SubmitResignation' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-SubmitResignation', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BlackListNameMenu-Action-Create' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BlackListNameMenu-Action-Create', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreparationMenu-Display-ViewList' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreparationMenu-Display-ViewList', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreparationMenu-Display-ViewList' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreparationMenu-Display-ViewList', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreparationMenu-Display-ViewList' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreparationMenu-Display-ViewList', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreparationMenu-Display-ViewList' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreparationMenu-Display-ViewList', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-Update' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-Update', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BatchEmployeeTransactionMenu-Display-ViewList' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BatchEmployeeTransactionMenu-Display-ViewList', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BlackListNameMenu-Action-Create' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BlackListNameMenu-Action-Create', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BlackListNameMenu-Action-Create' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BlackListNameMenu-Action-Create', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-BatchMerge' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-BatchMerge', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-Edit' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-Edit', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-SubmitRehire' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-SubmitRehire', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-ExportJobAdjustment' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-ExportJobAdjustment', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Display-ViewListJobAdjustment' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Display-ViewListJobAdjustment', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-HeadcountOverviewMenu-Display-ViewList' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-HeadcountOverviewMenu-Display-ViewList', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-HeadcountOverviewMenu-Action-ViewDetail' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-HeadcountOverviewMenu-Action-ViewDetail', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-HeadcountOverviewMenu-Action-Edit' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-HeadcountOverviewMenu-Action-Edit', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-HeadcountOverviewMenu-Action-Import' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-HeadcountOverviewMenu-Action-Import', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-HeadcountOverviewMenu-Action-Export' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-HeadcountOverviewMenu-Action-Export', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-HeadcountPlanMenu-Display-ViewList' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-HeadcountPlanMenu-Display-ViewList', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-HeadcountPlanMenu-Action-ViewDetail' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-HeadcountPlanMenu-Action-ViewDetail', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-HeadcountPlanMenu-Action-Edit' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-HeadcountPlanMenu-Action-Edit', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-HeadcountPlanMenu-Action-update' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-HeadcountPlanMenu-Action-update', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-HeadcountPlanMenu-Action-Import' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-HeadcountPlanMenu-Action-Import', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-HeadcountPlanMenu-Action-Export' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-HeadcountPlanMenu-Action-Export', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Display-ViewListJobAdjustment' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Display-ViewListJobAdjustment', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-Create' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-Create', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-Create' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-Create', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-Create' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-Create', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ExportProbation' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ExportProbation', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-SubmitResignation' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-SubmitResignation', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BlackListNameMenu-Action-Export' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BlackListNameMenu-Action-Export', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-EditSalaryScale' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-EditSalaryScale', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BatchEmployeeTransactionMenu-Action-Create' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BatchEmployeeTransactionMenu-Action-Create', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BatchEmployeeTransactionMenu-Action-Create' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BatchEmployeeTransactionMenu-Action-Create', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-SubmitContract' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-SubmitContract', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-SubmitContract' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-SubmitContract', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-SubmitJobCompensationAdjustment' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-SubmitJobCompensationAdjustment', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BlackListNameMenu-Action-Import' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BlackListNameMenu-Action-Import', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Action-SubmitBatchProbation' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Action-SubmitBatchProbation', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditSalaryPlan' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditSalaryPlan', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagement-Display-ViewReporting' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagement-Display-ViewReporting', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagementMenu-Action-CreateEmployee' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagementMenu-Action-CreateEmployee', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-LegalEntityMenu-Action-Create' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-LegalEntityMenu-Action-Create', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagementMenu-Action-Import' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagementMenu-Action-Import', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagementMenu-Action-ViewDetail' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagementMenu-Action-ViewDetail', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagementMenu-Action-ViewDetail' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagementMenu-Action-ViewDetail', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-CreatePeerDepartment' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-CreatePeerDepartment', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-Edit' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-Edit', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-Import' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-Import', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-Import' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-Import', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-Import' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-Import', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-Import' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-Import', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-SubmitJobCompensationAdjustment' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-SubmitJobCompensationAdjustment', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-SubmitJobCompensationAdjustment' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-SubmitJobCompensationAdjustment', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Action-CreateBatchProbation' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Action-CreateBatchProbation', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Action-CreateBatchProbation' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Action-CreateBatchProbation', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Action-CreateBatchProbation' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Action-CreateBatchProbation', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-SubmitJobCompensationAdjustment' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-SubmitJobCompensationAdjustment', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-SubmitContract' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-SubmitContract', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-Import' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-Import', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-Create' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-Create', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-ViewListAll' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-ViewListAll', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-Create' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-Create', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListPartTimeJobAll' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListPartTimeJobAll', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListPartTimeJobAll' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListPartTimeJobAll', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListProbationApproving' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListProbationApproving', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditHireInfo' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditHireInfo', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewHireInfo' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewHireInfo', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Action-ExportBatchPartTimeJob' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Action-ExportBatchPartTimeJob', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagementMenu-Action-ViewDetail' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagementMenu-Action-ViewDetail', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagementMenu-Action-ViewDetail' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagementMenu-Action-ViewDetail', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagementMenu-Action-ViewDetail' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagementMenu-Action-ViewDetail', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-ViewSalaryAdjustmentDetails' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-ViewSalaryAdjustmentDetails', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-ViewSalaryAdjustmentDetails' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-ViewSalaryAdjustmentDetails', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-ViewListSalaryAdjustment-Display-InApproval' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-ViewListSalaryAdjustment-Display-InApproval', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobProfile-Display-ViewList' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobProfile-Display-ViewList', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-SubmitSalaryAdjustment' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-SubmitSalaryAdjustment', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-ViewListApproving' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-ViewListApproving', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListRehireAll' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListRehireAll', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-ViewListAll' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-ViewListAll', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-ViewListAll' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-ViewListAll', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-ViewListAll' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-ViewListAll', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-ViewListAll' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-ViewListAll', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListResignationAll' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListResignationAll', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListResignationAll' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListResignationAll', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListResignationAll' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListResignationAll', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListResignationAll' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListResignationAll', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-CancelEntry' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-CancelEntry', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BatchEmployeeTransactionMenu-Action-Edit' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BatchEmployeeTransactionMenu-Action-Edit', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BatchEmployeeTransactionMenu-Action-Edit' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BatchEmployeeTransactionMenu-Action-Edit', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BatchEmployeeTransactionMenu-Action-Edit' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BatchEmployeeTransactionMenu-Action-Edit', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-ViewListApproving' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-ViewListApproving', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Display-ViewListProbationManagement' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Display-ViewListProbationManagement', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Display-ViewListProbationManagement' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Display-ViewListProbationManagement', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Display-ViewListProbationManagement' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Display-ViewListProbationManagement', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Display-ViewListRehire' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Display-ViewListRehire', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-CreateJobAdjustment' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-CreateJobAdjustment', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-CreateJobAdjustment' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-CreateJobAdjustment', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-CreateJobAdjustment' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-CreateJobAdjustment', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-CreateJobAdjustment' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-CreateJobAdjustment', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-CreateJobAdjustment' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-CreateJobAdjustment', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-SubmitJobAdjustment' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-SubmitJobAdjustment', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-ViewJobAdjustmentDetails' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-ViewJobAdjustmentDetails', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-ViewListApproving' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-ViewListApproving', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-ViewListApproving' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-ViewListApproving', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Display-Waiting-ViewList' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Display-Waiting-ViewList', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditViewNonMaximumSalary' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditViewNonMaximumSalary', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-Merge' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-Merge', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Display-ViewListJobAdjustment' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Display-ViewListJobAdjustment', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-RemindTodo' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-RemindTodo', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DivisionMenu-Display-ViewList' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DivisionMenu-Display-ViewList', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-ViewListJobAdjustment-Display-AllRecords' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-ViewListJobAdjustment-Display-AllRecords', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-ViewListJobAdjustment-Display-AllRecords' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-ViewListJobAdjustment-Display-AllRecords', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-ViewListJobAdjustment-Display-AllRecords' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-ViewListJobAdjustment-Display-AllRecords', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-ViewListJobAdjustment-Display-AllRecords' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-ViewListJobAdjustment-Display-AllRecords', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-ViewListJobAdjustment-Display-InApproval' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-ViewListJobAdjustment-Display-InApproval', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-ViewListJobAdjustment-Display-InApproval' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-ViewListJobAdjustment-Display-InApproval', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-ViewListJobAdjustment-Display-InApproval' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-ViewListJobAdjustment-Display-InApproval', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ExportRhire' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ExportRhire', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmenMenut-Action-CreatePosition' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmenMenut-Action-CreatePosition', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmenMenut-Action-CreatePosition' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmenMenut-Action-CreatePosition', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmenMenut-Action-CreatePosition' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmenMenut-Action-CreatePosition', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-Edit' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-Edit', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-Edit' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-Edit', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-Export' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-Export', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-Export' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-Export', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Action-EditBatchPartTimeJob' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Action-EditBatchPartTimeJob', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-Edit' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-Edit', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-Edit' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-Edit', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-Edit' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-Edit', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-Edit' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-Edit', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='HP-NotificationCenterMenu-Action-ViewTodo' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('HP-NotificationCenterMenu-Action-ViewTodo', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-CreateResignation' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-CreateResignation', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-CreateResignation' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-CreateResignation', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-CreateResignation' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-CreateResignation', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ReviewInfo' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ReviewInfo', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BlackListNameMenu-Action-Export' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BlackListNameMenu-Action-Export', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Display-Done-ViewList' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Display-Done-ViewList', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-BatchMerge' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-BatchMerge', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-BatchUpdate' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-BatchUpdate', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Display-Waiting-ViewList' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Display-Waiting-ViewList', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Display-Waiting-ViewList' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Display-Waiting-ViewList', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-ViewDetail' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-ViewDetail', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ExportRhire' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ExportRhire', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-Update' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-Update', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-Update' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-Update', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-Update' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-Update', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-ViewVirtualList' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-ViewVirtualList', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Action-CreateBatchPartTimeJob' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Action-CreateBatchPartTimeJob', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Action-EditBatchPartTimeJob' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Action-EditBatchPartTimeJob', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Action-ExportBatchPartTimeJob' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Action-ExportBatchPartTimeJob', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Action-ExportBatchPartTimeJob' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Action-ExportBatchPartTimeJob', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Display-ViewListBatchPartTimeJob' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Display-ViewListBatchPartTimeJob', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Action-CreateBatchProbation' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Action-CreateBatchProbation', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Action-ExportBatchProbation' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Action-ExportBatchProbation', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagement-Display-ViewReporting' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagement-Display-ViewReporting', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagement-Display-ViewReporting' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagement-Display-ViewReporting', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagement-Display-ViewReporting' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagement-Display-ViewReporting', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-EditJobCompensationAdjustment' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-EditJobCompensationAdjustment', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ImportRhire' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ImportRhire', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ImportRhire' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ImportRhire', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-SubmitRehire' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-SubmitRehire', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-SubmitRehire' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-SubmitRehire', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DivisionMenu-Action-Create' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DivisionMenu-Action-Create', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewDetail' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewDetail', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewContract' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewContract', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Display-ViewListProbationManagement' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Display-ViewListProbationManagement', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-SubmitProbation' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-SubmitProbation', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-SubmitProbation' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-SubmitProbation', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Display-ViewListProbationManagement' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Display-ViewListProbationManagement', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-EditJobAdjustment' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-EditJobAdjustment', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-CreateSalaryAdjustment' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-CreateSalaryAdjustment', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-CreateSalaryAdjustment' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-CreateSalaryAdjustment', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditPersonalInfo' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditPersonalInfo', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-ViewListExpired' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-ViewListExpired', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ExportProbation' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ExportProbation', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ExportProbation' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ExportProbation', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ExportProbation' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ExportProbation', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ExportProbation' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ExportProbation', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ExportResignation' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ExportResignation', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Display-ViewListBatchProbation' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Display-ViewListBatchProbation', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DivisionMenu-Action-BatchUpdate' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DivisionMenu-Action-BatchUpdate', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DivisionMenu-Action-Create' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DivisionMenu-Action-Create', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DivisionMenu-Action-Edit' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DivisionMenu-Action-Edit', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DivisionMenu-Action-Edit' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DivisionMenu-Action-Edit', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DivisionMenu-Action-Edit' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DivisionMenu-Action-Edit', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-EditContract' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-EditContract', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-EditContract' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-EditContract', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-EditContract' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-EditContract', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-EditContract' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-EditContract', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-ExportContract' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-ExportContract', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-ExportContract' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-ExportContract', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagementMenu-Display-Info' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagementMenu-Display-Info', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-CancelTodo' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-CancelTodo', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Cancel-Action-Delete' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Cancel-Action-Delete', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Display-Waiting-ViewList' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Display-Waiting-ViewList', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BusinessUnitMenu-Action-ViewDetail' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BusinessUnitMenu-Action-ViewDetail', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-ExportContract' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-ExportContract', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-ExportContract' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-ExportContract', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-ExportContract' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-ExportContract', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-ImportContract' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-ImportContract', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-ViewListExpired' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-ViewListExpired', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Display-ViewList' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Display-ViewList', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-ExportSalaryAdjustment' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-ExportSalaryAdjustment', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-ExportSalaryAdjustment' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-ExportSalaryAdjustment', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-ImportContract' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-ImportContract', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-ImportContract' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-ImportContract', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-ImportContract' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-ImportContract', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-ImportContract' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-ImportContract', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='HP-NotificationCenterMenu-Action-ViewTodo' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('HP-NotificationCenterMenu-Action-ViewTodo', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-NewPreparationQuantity-Action-Import' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-NewPreparationQuantity-Action-Import', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Cancel-Action-Delete' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Cancel-Action-Delete', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Cancel-Action-Delete' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Cancel-Action-Delete', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-BatchSendTodo' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-BatchSendTodo', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-ImportSalaryAdjustment' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-ImportSalaryAdjustment', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-ImportSalaryAdjustment' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-ImportSalaryAdjustment', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-Export' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-Export', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewDetail' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewDetail', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagementMenu-Action-Import' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagementMenu-Action-Import', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagementMenu-Action-Import' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagementMenu-Action-Import', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagementMenu-Action-Import' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagementMenu-Action-Import', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-EditPartTimeJob' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-EditPartTimeJob', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-EditPartTimeJob' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-EditPartTimeJob', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewDetail' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewDetail', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewDetail' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewDetail', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Display-Cancel-ViewList' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Display-Cancel-ViewList', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Display-Cancel-ViewList' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Display-Cancel-ViewList', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Display-Cancel-ViewList' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Display-Cancel-ViewList', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Display-Done-ViewList' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Display-Done-ViewList', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditSalaryPlan' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditSalaryPlan', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Display-Done-ViewList' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Display-Done-ViewList', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DivisionMenu-Action-ViewDetail' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DivisionMenu-Action-ViewDetail', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-SubmitSalaryAdjustment' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-SubmitSalaryAdjustment', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-ViewSalaryAdjustmentDetails' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-ViewSalaryAdjustmentDetails', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewBasicInfo' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewBasicInfo', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ExportJobCompensationAdjustment' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ExportJobCompensationAdjustment', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ExportJobCompensationAdjustment' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ExportJobCompensationAdjustment', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ExportJobCompensationAdjustment' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ExportJobCompensationAdjustment', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ExportJobCompensationAdjustment' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ExportJobCompensationAdjustment', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ExportPartTimeJob' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ExportPartTimeJob', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-ViewListSalaryAdjustment-Display-AllRecords' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-ViewListSalaryAdjustment-Display-AllRecords', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-ViewListSalaryAdjustment-Display-AllRecords' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-ViewListSalaryAdjustment-Display-AllRecords', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-ViewListSalaryAdjustment-Display-AllRecords' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-ViewListSalaryAdjustment-Display-AllRecords', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-ViewListSalaryAdjustment-Display-InApproval' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-ViewListSalaryAdjustment-Display-InApproval', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-ViewListSalaryAdjustment-Display-InApproval' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-ViewListSalaryAdjustment-Display-InApproval', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-ViewListSalaryAdjustment-Display-InApproval' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-ViewListSalaryAdjustment-Display-InApproval', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='HP-NotificationCenterMenu-Action-ViewTodo' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('HP-NotificationCenterMenu-Action-ViewTodo', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-BatchSendData' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-BatchSendData', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-MSMBatchSendData' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-MSMBatchSendData', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-MSMBatchSendData' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-MSMBatchSendData', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-MSMBatchSendData' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-MSMBatchSendData', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-BatchEditEntry' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-BatchEditEntry', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-BatchEditEntry' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-BatchEditEntry', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-BatchEditEntry' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-BatchEditEntry', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-ViewDetail' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-ViewDetail', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-CreateSubPosition' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-CreateSubPosition', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-Edit' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-Edit', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-Export' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-Export', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BatchEmployeeTransactionMenu-Action-Create' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BatchEmployeeTransactionMenu-Action-Create', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BatchEmployeeTransactionMenu-Display-ViewList' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BatchEmployeeTransactionMenu-Display-ViewList', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BatchEmployeeTransactionMenu-Display-ViewList' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BatchEmployeeTransactionMenu-Display-ViewList', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BatchEmployeeTransactionMenu-Display-ViewList' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BatchEmployeeTransactionMenu-Display-ViewList', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BatchEmployeeTransactionMenu-Display-ViewList' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BatchEmployeeTransactionMenu-Display-ViewList', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BatchEmployeeTransactionMenu-Display-ViewList' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BatchEmployeeTransactionMenu-Display-ViewList', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ImportPartTimeJob' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ImportPartTimeJob', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-SubmitPartTimeJob' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-SubmitPartTimeJob', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BatchEmployeeTransactionMenu-Action-Create' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BatchEmployeeTransactionMenu-Action-Create', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagementMenu-Action-Import' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagementMenu-Action-Import', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-EditProbation' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-EditProbation', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ExportPartTimeJob' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ExportPartTimeJob', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DivisionMenu-Action-Create' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DivisionMenu-Action-Create', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ImportPartTimeJob' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ImportPartTimeJob', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ImportPartTimeJob' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ImportPartTimeJob', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-Stop' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-Stop', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ImportProbation' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ImportProbation', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ImportProbation' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ImportProbation', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ImportResignation' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ImportResignation', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ImportResignation' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ImportResignation', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ImportResignation' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ImportResignation', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ImportResignation' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ImportResignation', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagementMenu-Action-CreateEmployee' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagementMenu-Action-CreateEmployee', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagementMenu-Action-CreateEmployee' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagementMenu-Action-CreateEmployee', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagementMenu-Action-CreateEmployee' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagementMenu-Action-CreateEmployee', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-CreateSalaryAdjustment' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-CreateSalaryAdjustment', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-EditJobAdjustment' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-EditJobAdjustment', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-EditJobAdjustment' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-EditJobAdjustment', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-ViewJobAdjustmentDetails' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-ViewJobAdjustmentDetails', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-ViewJobAdjustmentDetails' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-ViewJobAdjustmentDetails', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-ViewJobAdjustmentDetails' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-ViewJobAdjustmentDetails', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-ViewJobAdjustmentDetails' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-ViewJobAdjustmentDetails', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-CreateSalaryAdjustment' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-CreateSalaryAdjustment', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-EditContract' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-EditContract', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-EditRehire' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-EditRehire', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ExportProbation' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ExportProbation', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DivisionMenu-Action-Import' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DivisionMenu-Action-Import', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DivisionMenu-Action-Import' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DivisionMenu-Action-Import', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ImportJobCompensationAdjustment' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ImportJobCompensationAdjustment', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ImportJobCompensationAdjustment' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ImportJobCompensationAdjustment', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-ViewSalaryAdjustmentDetails' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-ViewSalaryAdjustmentDetails', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='HP-NotificationCenterMenu-Action-ViewTodo' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('HP-NotificationCenterMenu-Action-ViewTodo', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-NewPreparationAnalysis-Action-Download' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-NewPreparationAnalysis-Action-Download', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-NewPreparationAnalysis-Display-ViewDetail-CurrentData' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-NewPreparationAnalysis-Display-ViewDetail-CurrentData', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-NewPreparationAnalysis-Display-ViewList' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-NewPreparationAnalysis-Display-ViewList', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-NewPreparationQuantity-Action-Create' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-NewPreparationQuantity-Action-Create', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-NewPreparationQuantity-Action-Delete' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-NewPreparationQuantity-Action-Delete', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-NewPreparationQuantity-Action-Download' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-NewPreparationQuantity-Action-Download', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-NewPreparationQuantity-Action-Edit' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-NewPreparationQuantity-Action-Edit', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-CancelTodo' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-CancelTodo', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-AllOrgChartsMenu-Org-Action-ViewCard' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-AllOrgChartsMenu-Org-Action-ViewCard', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-AllOrgChartsMenu-Position-Action-Download' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-AllOrgChartsMenu-Position-Action-Download', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BlackListNameMenu-Display-ViewList' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BlackListNameMenu-Display-ViewList', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Display-Done-ViewList' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Display-Done-ViewList', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Display-Waiting-ViewList' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Display-Waiting-ViewList', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-Create' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-Create', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-CreatePeerDepartment' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-CreatePeerDepartment', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-CreateSubDepartment' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-CreateSubDepartment', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-CreateSubDepartment' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-CreateSubDepartment', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-Edit' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-Edit', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditEntry' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditEntry', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewPersonalInfo' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewPersonalInfo', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-BatchAssign' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-BatchAssign', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditSalaryPlan' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditSalaryPlan', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewSalaryPlan' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewSalaryPlan', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewHireInfo' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewHireInfo', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Display-ViewListBatchPartTimeJob' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Display-ViewListBatchPartTimeJob', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagementMenu-Action-Import' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagementMenu-Action-Import', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Display-ViewListBatchPartTimeJob' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Display-ViewListBatchPartTimeJob', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Display-ViewListBatchPartTimeJob' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Display-ViewListBatchPartTimeJob', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Display-ViewListBatchPartTimeJob' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Display-ViewListBatchPartTimeJob', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditHireInfo' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditHireInfo', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditHireInfo' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditHireInfo', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-ViewListJobCompensationAdjustmentDisplay-Display-AllRecords' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-ViewListJobCompensationAdjustmentDisplay-Display-AllRecords', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListRehireAll' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListRehireAll', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewSalaryPlan' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewSalaryPlan', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewTodo' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewTodo', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-BatchAssign' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-BatchAssign', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-Import' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-Import', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-ExportJobAdjustment' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-ExportJobAdjustment', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-Assign' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-Assign', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-CancelEntry' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-CancelEntry', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-CancelEntry' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-CancelEntry', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ExportRhire' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ExportRhire', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-BatchCancelEntry' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-BatchCancelEntry', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ImportJobCompensationAdjustment' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ImportJobCompensationAdjustment', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-CreatePeerPosition' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-CreatePeerPosition', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-CreateSubPosition' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-CreateSubPosition', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-CreateSubPosition' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-CreateSubPosition', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-CreateSubPosition' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-CreateSubPosition', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-CreateSubPosition' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-CreateSubPosition', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ImportResignation' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ImportResignation', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListResignationAll' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListResignationAll', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-ViewListJobCompensationAdjustmentDisplay-Display-AllRecords' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-ViewListJobCompensationAdjustmentDisplay-Display-AllRecords', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-ViewListJobAdjustment-Display-AllRecords' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-ViewListJobAdjustment-Display-AllRecords', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-Create' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-Create', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-ImportSalaryAdjustment' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-ImportSalaryAdjustment', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-ViewListSalaryAdjustment-Display-AllRecords' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-ViewListSalaryAdjustment-Display-AllRecords', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-CreateSubPosition' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-CreateSubPosition', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-SubmitJobCompensationAdjustment' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-SubmitJobCompensationAdjustment', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-SubmitJobCompensationAdjustment' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-SubmitJobCompensationAdjustment', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-ViewListSalaryAdjustment-Display-AllRecords' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-ViewListSalaryAdjustment-Display-AllRecords', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-BatchStop' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-BatchStop', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-Update' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-Update', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-Update' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-Update', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-Update' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-Update', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-Update' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-Update', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BlackListNameMenu-Action-Create' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BlackListNameMenu-Action-Create', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-SubmitContract' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-SubmitContract', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BatchEmployeeTransactionMenu-Action-Create' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BatchEmployeeTransactionMenu-Action-Create', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditViewNonMaximumSalary' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditViewNonMaximumSalary', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewHireInfo' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewHireInfo', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditBasicInfo' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditBasicInfo', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Display-ViewList' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Display-ViewList', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Display-ViewList' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Display-ViewList', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Display-ViewList' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Display-ViewList', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagement-Display-ViewReporting' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagement-Display-ViewReporting', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-Import' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-Import', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-SubmitRehire' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-SubmitRehire', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-SubmitRehire' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-SubmitRehire', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmCertificationMenu-Action-Edit' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmCertificationMenu-Action-Edit', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmCertificationMenu-Action-Edit' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmCertificationMenu-Action-Edit', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmCertificationMenu-Action-Export' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmCertificationMenu-Action-Export', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmCertificationMenu-Action-Export' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmCertificationMenu-Action-Export', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmCertificationMenu-Action-Export' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmCertificationMenu-Action-Export', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmCertificationMenu-Action-Export' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmCertificationMenu-Action-Export', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmCertificationMenu-Action-Import' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmCertificationMenu-Action-Import', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmCertificationMenu-Action-Import' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmCertificationMenu-Action-Import', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-CancelEntry' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-CancelEntry', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Display-Waiting-ViewList' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Display-Waiting-ViewList', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-BatchSendData' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-BatchSendData', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Display-ViewListRehire' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Display-ViewListRehire', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BatchEmployeeTransactionMenu-Action-Edit' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BatchEmployeeTransactionMenu-Action-Edit', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BatchEmployeeTransactionMenu-Action-Edit' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BatchEmployeeTransactionMenu-Action-Edit', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-CreateRehire' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-CreateRehire', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-EditRehire' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-EditRehire', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewPersonalInfo' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewPersonalInfo', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewPersonalInfo' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewPersonalInfo', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ConfirmEntry' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ConfirmEntry', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ConfirmEntry' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ConfirmEntry', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Action-ExportBatchPartTimeJob' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Action-ExportBatchPartTimeJob', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Action-SubmitBatchPartTimeJob' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Action-SubmitBatchPartTimeJob', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Action-SubmitBatchPartTimeJob' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Action-SubmitBatchPartTimeJob', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Action-ViewDetailBatchPartTimeJob' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Action-ViewDetailBatchPartTimeJob', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditPersonalInfo' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditPersonalInfo', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-OverViewMenu-Display-Management' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-OverViewMenu-Display-Management', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-OverViewMenu-Display-Management' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-OverViewMenu-Display-Management', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ReviewInfo' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ReviewInfo', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewHireInfo' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewHireInfo', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-BatchAssign' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-BatchAssign', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='HP-NotificationCenterMenu-Action-ViewTodo' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('HP-NotificationCenterMenu-Action-ViewTodo', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ImportRhire' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ImportRhire', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ExportRhire' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ExportRhire', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-AllOrgChartsMenu-Org-Action-Download' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-AllOrgChartsMenu-Org-Action-Download', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-BatchAssign' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-BatchAssign', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-Create' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-Create', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-Create' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-Create', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-Create' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-Create', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmCertificationMenu-Display-ViewList' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmCertificationMenu-Display-ViewList', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Action-EditBatchProbation' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Action-EditBatchProbation', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BlackListNameMenu-Action-Edit' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BlackListNameMenu-Action-Edit', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BusinessUnitMenu-Action-Update' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BusinessUnitMenu-Action-Update', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ExportResignation' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ExportResignation', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-SubmitPartTimeJob' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-SubmitPartTimeJob', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-SubmitProbation' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-SubmitProbation', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-SubmitProbation' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-SubmitProbation', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-SubmitProbation' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-SubmitProbation', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-OverViewMenu-Display-Management' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-OverViewMenu-Display-Management', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-CreateRehire' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-CreateRehire', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BlackListNameMenu-Action-Export' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BlackListNameMenu-Action-Export', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmCertificationMenu-Action-Import' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmCertificationMenu-Action-Import', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Display-ViewListResignation' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Display-ViewListResignation', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Display-ViewListResignation' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Display-ViewListResignation', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Display-ViewListResignation' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Display-ViewListResignation', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Display-ViewListResignation' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Display-ViewListResignation', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-EditRehire' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-EditRehire', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ExportRhire' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ExportRhire', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingSettingsQuick-Action-Export' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingSettingsQuick-Action-Export', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingSettingsQuick-Action-Import' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingSettingsQuick-Action-Import', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewViewNonMaximumSalary' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewViewNonMaximumSalary', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewEmployeeInfo' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewEmployeeInfo', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Display-ViewListResignation' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Display-ViewListResignation', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BusinessUnitMenu-Action-Import' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BusinessUnitMenu-Action-Import', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagementMenu-Action-Export' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagementMenu-Action-Export', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-EditJobAdjustment' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-EditJobAdjustment', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-EditJobAdjustment' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-EditJobAdjustment', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-ViewListJobAdjustment-Display-InApproval' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-ViewListJobAdjustment-Display-InApproval', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobProfile-Action-Create' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobProfile-Action-Create', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-Create' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-Create', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-CreatePeerPosition' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-CreatePeerPosition', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-CreatePeerPosition' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-CreatePeerPosition', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-CreatePeerPosition' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-CreatePeerPosition', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-CreatePeerPosition' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-CreatePeerPosition', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Display-ViewListJobCompensationAdjustment' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Display-ViewListJobCompensationAdjustment', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Display-ViewListJobCompensationAdjustment' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Display-ViewListJobCompensationAdjustment', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-Create' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-Create', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EnterpriseCertificationMenu-Action-Edit' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EnterpriseCertificationMenu-Action-Edit', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BusinessUnitMenu-Action-BatchStop' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BusinessUnitMenu-Action-BatchStop', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BusinessUnitMenu-Action-BatchUpdate' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BusinessUnitMenu-Action-BatchUpdate', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-CreateRehire' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-CreateRehire', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-ViewDetails' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-ViewDetails', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-ViewOrgList' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-ViewOrgList', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-ViewOrgList' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-ViewOrgList', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-ViewOrgList' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-ViewOrgList', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-CreateSalaryAdjustment' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-CreateSalaryAdjustment', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-ExportSalaryAdjustment' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-ExportSalaryAdjustment', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-ExportSalaryAdjustment' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-ExportSalaryAdjustment', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Action-CreateBatchProbation' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Action-CreateBatchProbation', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-ImportSalaryAdjustment' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-ImportSalaryAdjustment', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Display-Cancel-ViewList' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Display-Cancel-ViewList', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-Assign' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-Assign', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-LegalEntityMenu-Action-Edit' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-LegalEntityMenu-Action-Edit', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BusinessUnitMenu-Action-Import' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BusinessUnitMenu-Action-Import', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-ViewSalaryScale' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-ViewSalaryScale', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Display-Done-ViewList' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Display-Done-ViewList', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-EditResignation' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-EditResignation', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-EditResignation' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-EditResignation', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewViewNonMaximumSalary' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewViewNonMaximumSalary', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-ImportSalaryAdjustment' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-ImportSalaryAdjustment', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-SendData' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-SendData', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-ViewDetail' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-ViewDetail', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Display-ViewListSalaryAdjustment' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Display-ViewListSalaryAdjustment', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Display-ViewListSalaryAdjustment' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Display-ViewListSalaryAdjustment', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Display-ViewListSalaryAdjustment' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Display-ViewListSalaryAdjustment', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Display-ViewListSalaryAdjustment' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Display-ViewListSalaryAdjustment', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Display-ViewListSalaryAdjustment' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Display-ViewListSalaryAdjustment', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Display-ViewListSalaryAdjustment' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Display-ViewListSalaryAdjustment', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-BatchEditEntry' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-BatchEditEntry', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-ViewDetail' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-ViewDetail', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-ViewDetail' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-ViewDetail', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Display-ViewList' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Display-ViewList', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Display-ViewList' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Display-ViewList', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Display-ViewList' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Display-ViewList', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Action-ExportBatchProbation' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Action-ExportBatchProbation', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-Import' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-Import', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditHireInfo' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditHireInfo', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-AllOrgChartsMenu-Display-ViewOrg' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-AllOrgChartsMenu-Display-ViewOrg', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-Export' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-Export', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DivisionMenu-Action-Import' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DivisionMenu-Action-Import', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-EditProbation' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-EditProbation', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ExportJobCompensationAdjustment' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ExportJobCompensationAdjustment', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ExportPartTimeJob' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ExportPartTimeJob', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ImportProbation' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ImportProbation', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListProbationAll' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListProbationAll', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-EditJobAdjustment' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-EditJobAdjustment', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Display-ViewListJobAdjustment' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Display-ViewListJobAdjustment', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Display-ViewListJobAdjustment' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Display-ViewListJobAdjustment', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-Export' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-Export', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ImportPartTimeJob' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ImportPartTimeJob', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ImportProbation' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ImportProbation', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-Import' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-Import', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-Import' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-Import', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-Import' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-Import', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditSalaryPlan' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditSalaryPlan', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-EditProbation' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-EditProbation', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-MSMSendData' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-MSMSendData', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-RemindAgain' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-RemindAgain', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-RemindAgain' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-RemindAgain', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-BatchConfirmEntry' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-BatchConfirmEntry', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-BatchConfirmEntry' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-BatchConfirmEntry', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-BatchConfirmEntry' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-BatchConfirmEntry', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-BatchCancelEntry' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-BatchCancelEntry', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-Merge' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-Merge', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Action-EditBatchPartTimeJob' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Action-EditBatchPartTimeJob', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-MSMSendData' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-MSMSendData', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-MSMSendData' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-MSMSendData', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-CreateTodo' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-CreateTodo', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-RemindTodo' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-RemindTodo', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-BatchSendData' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-BatchSendData', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Action-EditBatchPartTimeJob' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Action-EditBatchPartTimeJob', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Action-EditBatchPartTimeJob' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Action-EditBatchPartTimeJob', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ExportPartTimeJob' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ExportPartTimeJob', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListRehireAll' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListRehireAll', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Display-ViewListBatchProbation' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Display-ViewListBatchProbation', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-ImportJobAdjustment' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-ImportJobAdjustment', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-ImportJobAdjustment' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-ImportJobAdjustment', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-ImportJobAdjustment' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-ImportJobAdjustment', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-ImportJobAdjustment' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-ImportJobAdjustment', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-ImportJobAdjustment' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-ImportJobAdjustment', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-ImportJobAdjustment' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-ImportJobAdjustment', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-ViewJobAdjustmentDetails' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-ViewJobAdjustmentDetails', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BlackListNameMenu-Action-Import' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BlackListNameMenu-Action-Import', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-BatchMerge' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-BatchMerge', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditHireInfo' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditHireInfo', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Display-ViewListJobCompensationAdjustment' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Display-ViewListJobCompensationAdjustment', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Display-ViewListJobCompensationAdjustment' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Display-ViewListJobCompensationAdjustment', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewBasicInfo' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewBasicInfo', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewBasicInfo' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewBasicInfo', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditBasicInfo' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditBasicInfo', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditBasicInfo' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditBasicInfo', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BlackListNameMenu-Display-ViewList' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BlackListNameMenu-Display-ViewList', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BlackListNameMenu-Display-ViewList' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BlackListNameMenu-Display-ViewList', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BlackListNameMenu-Display-ViewList' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BlackListNameMenu-Display-ViewList', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='HP-NotificationCenterMenu-Action-ViewTodo' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('HP-NotificationCenterMenu-Action-ViewTodo', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ConfirmEntry' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ConfirmEntry', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-LocationMenu-Action-Stop' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-LocationMenu-Action-Stop', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-LocationMenu-Action-Export' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-LocationMenu-Action-Export', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-Edit' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-Edit', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-Edit' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-Edit', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-Edit' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-Edit', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Display-ViewList' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Display-ViewList', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EnterpriseCertificationMenu-Action-Create' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EnterpriseCertificationMenu-Action-Create', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-EditPartTimeJob' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-EditPartTimeJob', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-SubmitJobAdjustment' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-SubmitJobAdjustment', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-SubmitJobAdjustment' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-SubmitJobAdjustment', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-SubmitJobAdjustment' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-SubmitJobAdjustment', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-SubmitJobAdjustment' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-SubmitJobAdjustment', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Action-SubmitJobAdjustment' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Action-SubmitJobAdjustment', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BusinessUnitMenu-Action-Edit' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BusinessUnitMenu-Action-Edit', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BusinessUnitMenu-Action-Export' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BusinessUnitMenu-Action-Export', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BusinessUnitMenu-Action-Update' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BusinessUnitMenu-Action-Update', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-LegalEntityMenu-Action-Stop' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-LegalEntityMenu-Action-Stop', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-Stop' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-Stop', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Display-ViewList' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Display-ViewList', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Display-Done-ViewList' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Display-Done-ViewList', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-CreateProbationManagement' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-CreateProbationManagement', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-CreateProbationManagement' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-CreateProbationManagement', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-ViewListSalaryAdjustment-Display-InApproval' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-ViewListSalaryAdjustment-Display-InApproval', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-ViewListSalaryAdjustment-Display-InApproval' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-ViewListSalaryAdjustment-Display-InApproval', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-Import' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-Import', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmenMenut-Action-CreatePosition' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmenMenut-Action-CreatePosition', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ImportRhire' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ImportRhire', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmenMenut-Action-CreatePosition' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmenMenut-Action-CreatePosition', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-ViewVirtualList' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-ViewVirtualList', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-ViewVirtualList' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-ViewVirtualList', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Display-ViewList' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Display-ViewList', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Display-ViewList' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Display-ViewList', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Display-ViewList' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Display-ViewList', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BusinessUnitMenu-Action-ViewDetail' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BusinessUnitMenu-Action-ViewDetail', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-CreatePeerPosition' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-CreatePeerPosition', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-EditSalaryAdjustment' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-EditSalaryAdjustment', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-EditSalaryAdjustment' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-EditSalaryAdjustment', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-EditSalaryAdjustment' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-EditSalaryAdjustment', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-EditSalaryAdjustment' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-EditSalaryAdjustment', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-EditSalaryAdjustment' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-EditSalaryAdjustment', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BlackListNameMenu-Action-Edit' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BlackListNameMenu-Action-Edit', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-EditJobCompensationAdjustment' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-EditJobCompensationAdjustment', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-EditJobCompensationAdjustment' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-EditJobCompensationAdjustment', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-EditJobCompensationAdjustment' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-EditJobCompensationAdjustment', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-EditJobCompensationAdjustment' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-EditJobCompensationAdjustment', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-EditSalaryAdjustment' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-EditSalaryAdjustment', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='HP-AddressBookMenu-Display-ViewByDepartment' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('HP-AddressBookMenu-Display-ViewByDepartment', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-CreateContract' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-CreateContract', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-CreateContract' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-CreateContract', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-CreateContract' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-CreateContract', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-CreateContract' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-CreateContract', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DivisionMenu-Action-BatchUpdate' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DivisionMenu-Action-BatchUpdate', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DivisionMenu-Action-BatchUpdate' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DivisionMenu-Action-BatchUpdate', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DivisionMenu-Action-Export' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DivisionMenu-Action-Export', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingSettingsQuick-Action-Create' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingSettingsQuick-Action-Create', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-CreateSubDepartment' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-CreateSubDepartment', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListRehireAll' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListRehireAll', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Display-ViewListRehire' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Display-ViewListRehire', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Display-ViewListRehire' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Display-ViewListRehire', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-NewPreparationQuantity-Display-ViewList' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-NewPreparationQuantity-Display-ViewList', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Display-ViewListRehire' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Display-ViewListRehire', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListRehireAll' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListRehireAll', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-CreateTodo' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-CreateTodo', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewViewNonMaximumSalary' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewViewNonMaximumSalary', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditViewNonMaximumSalary' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditViewNonMaximumSalary', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditViewNonMaximumSalary' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditViewNonMaximumSalary', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-CreateSalaryAdjustment' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-CreateSalaryAdjustment', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-ViewSalaryAdjustmentDetails' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-ViewSalaryAdjustmentDetails', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-Action-ViewSalaryAdjustmentDetails' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-Action-ViewSalaryAdjustmentDetails', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-CreateJobCompensationAdjustment' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-CreateJobCompensationAdjustment', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-CreateJobCompensationAdjustment' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-CreateJobCompensationAdjustment', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-CreatePartTimeJob' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-CreatePartTimeJob', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-CreatePartTimeJob' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-CreatePartTimeJob', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-CreatePartTimeJob' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-CreatePartTimeJob', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ImportProbation' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ImportProbation', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-SubmitRehire' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-SubmitRehire', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmenMenut-Action-CreatePosition' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmenMenut-Action-CreatePosition', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ReviewInfo' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ReviewInfo', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-Update' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-Update', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-RemindTodo' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-RemindTodo', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ReviewInfo' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ReviewInfo', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-Display-ViewListPartTimeJob' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-Display-ViewListPartTimeJob', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-Create' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-Create', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-Create' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-Create', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-CreatePeerDepartment' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-CreatePeerDepartment', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-CreatePeerDepartment' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-CreatePeerDepartment', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Action-ViewDetailBatchProbation' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Action-ViewDetailBatchProbation', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Action-ViewDetailBatchProbation' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Action-ViewDetailBatchProbation', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Action-ViewDetailBatchProbation' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Action-ViewDetailBatchProbation', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Action-ViewDetailBatchProbation' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Action-ViewDetailBatchProbation', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Action-ViewDetailBatchProbation' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Action-ViewDetailBatchProbation', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DivisionMenu-Action-Create' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DivisionMenu-Action-Create', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Display-ViewListBatchProbation' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Display-ViewListBatchProbation', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BlackListNameMenu-Action-Import' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BlackListNameMenu-Action-Import', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BusinessUnitMenu-Action-BatchStop' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BusinessUnitMenu-Action-BatchStop', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BusinessUnitMenu-Action-BatchUpdate' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BusinessUnitMenu-Action-BatchUpdate', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BusinessUnitMenu-Action-Create' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BusinessUnitMenu-Action-Create', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmCertificationMenu-Action-Create' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmCertificationMenu-Action-Create', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmCertificationMenu-Action-Create' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmCertificationMenu-Action-Create', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmCertificationMenu-Action-Edit' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmCertificationMenu-Action-Edit', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmCertificationMenu-Action-Edit' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmCertificationMenu-Action-Edit', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-EditProbation' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-EditProbation', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Action-CreateBatchPartTimeJob' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Action-CreateBatchPartTimeJob', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Display-ViewListBatchProbation' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Display-ViewListBatchProbation', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmCertificationMenu-Action-Import' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmCertificationMenu-Action-Import', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagementMenu-Action-ViewDetail' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagementMenu-Action-ViewDetail', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Action-SubmitBatchPartTimeJob' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Action-SubmitBatchPartTimeJob', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Display-ViewListBatchProbation' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Display-ViewListBatchProbation', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DivisionMenu-Action-Update' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DivisionMenu-Action-Update', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DivisionMenu-Action-ViewDetail' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DivisionMenu-Action-ViewDetail', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DivisionMenu-Action-ViewDetail' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DivisionMenu-Action-ViewDetail', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DivisionMenu-Action-ViewDetail' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DivisionMenu-Action-ViewDetail', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DivisionMenu-Display-ViewList' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DivisionMenu-Display-ViewList', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DivisionMenu-Display-ViewList' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DivisionMenu-Display-ViewList', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DivisionMenu-Display-ViewList' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DivisionMenu-Display-ViewList', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmCertificationMenu-Action-Create' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmCertificationMenu-Action-Create', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmCertificationMenu-Action-Create' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmCertificationMenu-Action-Create', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-EditPartTimeJob' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-EditPartTimeJob', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-EditPartTimeJob' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-EditPartTimeJob', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-SubmitPartTimeJob' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-SubmitPartTimeJob', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-SubmitPartTimeJob' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-SubmitPartTimeJob', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-SubmitPartTimeJob' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-SubmitPartTimeJob', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-SubmitPartTimeJob' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-SubmitPartTimeJob', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-CreateJobCompensationAdjustment' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-CreateJobCompensationAdjustment', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreparationMenu-Action-Edit' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreparationMenu-Action-Edit', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreparationMenu-Action-Edit' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreparationMenu-Action-Edit', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreparationMenu-Action-Export' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreparationMenu-Action-Export', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreparationMenu-Action-Export' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreparationMenu-Action-Export', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreparationMenu-Action-Export' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreparationMenu-Action-Export', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-MSMSendData' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-MSMSendData', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-Display-ViewListJobAdjustment' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-Display-ViewListJobAdjustment', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Display-ViewListRehire' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Display-ViewListRehire', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Display-ViewListBatchProbation' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Display-ViewListBatchProbation', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DivisionMenu-Action-Import' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DivisionMenu-Action-Import', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DivisionMenu-Action-Update' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DivisionMenu-Action-Update', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DivisionMenu-Action-Update' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DivisionMenu-Action-Update', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ImportProbation' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ImportProbation', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-AllOrgChartsMenu-Position-Action-ViewCard' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-AllOrgChartsMenu-Position-Action-ViewCard', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-LegalEntityMenu-Action-Update' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-LegalEntityMenu-Action-Update', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-LegalEntityMenu-Action-ViewDetail' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-LegalEntityMenu-Action-ViewDetail', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-LegalEntityMenu-Display-ViewList' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-LegalEntityMenu-Display-ViewList', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewContract' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewContract', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-LocationMenu-Action-Create' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-LocationMenu-Action-Create', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-Create' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-Create', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-ViewDetails' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-ViewDetails', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BusinessUnitMenu-Action-Edit' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BusinessUnitMenu-Action-Edit', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-SubmitProbation' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-SubmitProbation', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-SubmitResignation' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-SubmitResignation', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-SubmitResignation' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-SubmitResignation', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-CancelTodo' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-CancelTodo', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-RemindTodo' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-RemindTodo', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-CancelTodo' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-CancelTodo', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditBasicInfo' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditBasicInfo', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-EditEntry' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-EditEntry', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BusinessUnitMenu-Display-ViewList' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BusinessUnitMenu-Display-ViewList', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewViewNonMaximumSalary' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewViewNonMaximumSalary', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Action-SubmitBatchPartTimeJob' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Action-SubmitBatchPartTimeJob', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Action-SubmitBatchPartTimeJob' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Action-SubmitBatchPartTimeJob', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewEmployeeInfo' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewEmployeeInfo', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Display-ViewListBatchPartTimeJob' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Display-ViewListBatchPartTimeJob', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-ViewListJobCompensationAdjustmentDisplay-Display-AllRecords' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-ViewListJobCompensationAdjustmentDisplay-Display-AllRecords', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-Display-ViewListPartTimeJob' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-Display-ViewListPartTimeJob', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='HP-AddressBookMenu-Display-ViewByDepartment' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('HP-AddressBookMenu-Display-ViewByDepartment', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListPartTimeJobAll' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListPartTimeJobAll', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListProbationAll' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListProbationAll', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListProbationAll' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListProbationAll', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListProbationAll' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListProbationAll', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListProbationAll' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListProbationAll', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListProbationAll' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListProbationAll', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListProbationApproving' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListProbationApproving', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListProbationApproving' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListProbationApproving', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListProbationApproving' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListProbationApproving', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListProbationApproving' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListProbationApproving', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ViewListProbationApproving' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ViewListProbationApproving', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-LocationMenu-Display-ViewList' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-LocationMenu-Display-ViewList', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-LocationMenu-Action-Edit' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-LocationMenu-Action-Edit', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchProbationManagement-Action-ViewDetailBatchProbation' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchProbationManagement-Action-ViewDetailBatchProbation', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-EditProbation' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-EditProbation', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-EditResignation' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-EditResignation', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-EditResignation' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-EditResignation', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-EditResignation' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-EditResignation', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ExportJobCompensationAdjustment' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ExportJobCompensationAdjustment', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-ViewHireInfo' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-ViewHireInfo', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Display-ViewListJobCompensationAdjustment' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Display-ViewListJobCompensationAdjustment', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-JobAdjustmentMenu-ViewListJobAdjustment-Display-AllRecords' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-JobAdjustmentMenu-ViewListJobAdjustment-Display-AllRecords', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-CreateResignation' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-CreateResignation', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-Edit' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-Edit', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PreOnboardingMenu-Action-Edit' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PreOnboardingMenu-Action-Edit', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-LegalEntityMenu-Action-AssignRole' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-LegalEntityMenu-Action-AssignRole', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BusinessUnitMenu-Action-AssignRole' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BusinessUnitMenu-Action-AssignRole', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-AssignRole' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-AssignRole', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-ChangeOrganizationAssignments' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-ChangeOrganizationAssignments', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BlackListNameMenu-Action-Import' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BlackListNameMenu-Action-Import', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-CreatePartTimeJob' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-CreatePartTimeJob', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-CreateProbationManagement' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-CreateProbationManagement', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-CreateProbationManagement' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-CreateProbationManagement', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Display-ViewList' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Display-ViewList', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-PositionMenu-Action-ViewDetail' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-PositionMenu-Action-ViewDetail', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='HP-AddressBookMenu-Display-ViewByDepartment' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('HP-AddressBookMenu-Display-ViewByDepartment', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BusinessUnitMenu-Action-ViewDetail' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BusinessUnitMenu-Action-ViewDetail', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-BusinessUnitMenu-Display-ViewList' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-BusinessUnitMenu-Display-ViewList', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-ContractMenu-Action-CreateContract' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-ContractMenu-Action-CreateContract', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ExportResignation' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ExportResignation', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ExportResignation' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ExportResignation', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ExportResignation' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ExportResignation', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-ExportResignation' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-ExportResignation', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-LocationMenu-Action-AssignRole' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-LocationMenu-Action-AssignRole', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-CreateProbationManagement' and goal_item_rule_define_code='legal.entity')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-CreateProbationManagement', 'legal.entity');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-SalaryAdjustmentMenu-ViewListSalaryAdjustment-Display-AllRecords' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-SalaryAdjustmentMenu-ViewListSalaryAdjustment-Display-AllRecords', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-BatchStop' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-BatchStop', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-BatchUpdate' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-BatchUpdate', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-Create' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-Create', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Action-CreateBatchPartTimeJob' and goal_item_rule_define_code='hr.business.unit')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Action-CreateBatchPartTimeJob', 'hr.business.unit');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Action-CreateBatchPartTimeJob' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Action-CreateBatchPartTimeJob', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Action-CreateBatchPartTimeJob' and goal_item_rule_define_code='hr.division')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Action-CreateBatchPartTimeJob', 'hr.division');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-Display-BatchPartTimeJob-Action-CreateBatchPartTimeJob' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-Display-BatchPartTimeJob-Action-CreateBatchPartTimeJob', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-CreateResignation' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-CreateResignation', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-EditProbation' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-EditProbation', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-Display-ViewListPartTimeJob' and goal_item_rule_define_code='hr.location')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-Display-ViewListPartTimeJob', 'hr.location');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeTransactionMenu-Action-Display-ViewListPartTimeJob' and goal_item_rule_define_code='hr.position')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeTransactionMenu-Action-Display-ViewListPartTimeJob', 'hr.position');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-EmployeeManagementMenu-Action-CreateEmployee' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-EmployeeManagementMenu-Action-CreateEmployee', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-Import' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-Import', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-ViewOrgList' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-ViewOrgList', 'hr.department');
                END IF;
            END
        $$;
        
        DO
        $$
            BEGIN
                IF NOT EXISTS(select * from uc_permission_mdf_relation where permission_code='CO-DepartmentMenu-Action-ViewVirtualList' and goal_item_rule_define_code='hr.department')
                THEN
                INSERT INTO uc_permission_mdf_relation (permission_code, goal_item_rule_define_code) VALUES ('CO-DepartmentMenu-Action-ViewVirtualList', 'hr.department');
                END IF;
            END
        $$;