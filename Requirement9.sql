CREATE OR ALTER PROCEDURE spSummariseEpisodes AS
BEGIN
	SELECT TOP 3 C.CompanionName AS [frequently appearing companions]
	FROM tblEpisodeCompanion E
	JOIN tblCompanion C ON E.CompanionId = C.CompanionId
	GROUP BY C.CompanionName
	ORDER BY COUNT(E.CompanionId) DESC

	SELECT TOP 3 E.EnemyName AS [frequently appearing enemies]
	FROM tblEnemy E
	JOIN tblEpisodeEnemy ep ON E.EnemyId = EP.EnemyId
	GROUP BY E.EnemyName
	ORDER BY COUNT(EP.EnemyID) DESC
END

exec spSummariseEpisodes;