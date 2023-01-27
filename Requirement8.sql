CREATE OR ALTER VIEW viewEpisodes 
AS
SELECT A.AuthorName, D.DoctorName, dbo.fnCompanions(E.EpisodeId) AS Companions, dbo.fnEnemies(E.EpisodeId) AS Enemies
FROM tblEpisode AS E LEFT JOIN tblAuthor AS A ON E.AuthorID=A.AuthorId 
LEFT JOIN tblDoctor AS D ON(E.DoctorId=D.DoctorId);

SELECT * FROM viewEpisodes;