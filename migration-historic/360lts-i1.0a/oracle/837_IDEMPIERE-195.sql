-- Apr 18, 2012 10:41:39 AM COT
-- IDEMPIERE-195 Expand menu automatically
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=319, DefaultValue=NULL, IsMandatory='N',Updated=TO_DATE('2012-04-18 10:41:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=200113
;

-- Apr 18, 2012 10:41:41 AM COT
-- IDEMPIERE-195 Expand menu automatically
ALTER TABLE AD_User MODIFY IsMenuAutoExpand CHAR(1) DEFAULT NULL 
;

-- Apr 18, 2012 10:41:44 AM COT
-- IDEMPIERE-195 Expand menu automatically
ALTER TABLE AD_User MODIFY IsMenuAutoExpand NULL
;

UPDATE AD_User SET IsMenuAutoExpand=NULL;

UPDATE AD_System
  SET LastMigrationScriptApplied='837_IDEMPIERE-195.sql'
WHERE LastMigrationScriptApplied<'837_IDEMPIERE-195.sql'
   OR LastMigrationScriptApplied IS NULL
;
