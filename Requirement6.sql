CREATE OR ALTER FUNCTION fnCompanionsList (@EpisodeId INT)
RETURNS Table As
RETURN
SELECT C.CompanionName FROM tblCompanion as C INNER JOIN tblEpisodeCompanion as EC ON  C.CompanionId = EC.CompanionId WHERE EpisodeId = @EpisodeId;

CREATE OR ALTER FUNCTION fnCompanions(@EpisodeId INT)
RETURNS VARCHAR(700) AS
BEGIN 
	DECLARE @Ret AS VARCHAR(700)
	SELECT @Ret=STRING_AGG (CompanionName,', ') 
	FROM fnCompanionsList(@EpisodeId);
	RETURN @Ret
END;

--To Call it:
SELECT [dbo].fnCompanions(2) ;