CREATE FUNCTION  fnEnemiesList (@EpisodeId INT)
RETURNS Table As
RETURN
SELECT N.EnemyName FROM tblEnemy as N INNER JOIN tblEpisodeEnemy as EN ON  N.EnemyId = EN.EnemyID WHERE EpisodeId = @EpisodeId;

CREATE OR ALTER FUNCTION fnEnemies (@EpisodeId INT)
RETURNS VARCHAR(700) AS
BEGIN 
	DECLARE @Ret AS VARCHAR(700)
	SELECT @Ret=STRING_AGG (EnemyName,' and ') 
	FROM fnEnemiesList(@EpisodeId);
	RETURN @Ret
END;

--To Call it:
SELECT [dbo].fnEnemies(4) ;