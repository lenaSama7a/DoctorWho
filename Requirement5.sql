DELETE FROM tblCompanion 
WHERE CompanionId NOT IN 
(SELECT DISTINCT CompanionId FROM tblEpisodeCompanion);