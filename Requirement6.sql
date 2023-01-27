CREATE FUNCTION fnCompanionsList (@EpisodeId INT)
RETURNS Table As
RETURN
SELECT C.CompanionName FROM tblCompanion as C INNER JOIN tblEpisodeCompanion as EC ON  C.CompanionId = EC.CompanionId WHERE EpisodeId = @EpisodeId;

--To Call it:
SELECT * from [dbo].fnCompanionsList(2) ;