USE DoctorWho

CREATE TABLE tblEnemy 
(
EnemyId INT PRIMARY KEY,
EnemyName VARCHAR(300) NOT NULL,
Description Text NULL
);

CREATE TABLE tblDoctor 
(
DoctorId INT PRIMARY KEY,
DoctorNumber INT NOT NULL,
DoctorName VARCHAR(300) NOT NULL,
BirthDate Date NULL,
FirstEpisodeDate Date NULL,
LastEpisodeDate Date NULL,
);

CREATE TABLE tblAuthor 
(
AuthorId INT PRIMARY KEY,
AuthorName VARCHAR(300) NOT NULL,
);

CREATE TABLE tblCompanion
(
CompanionId INT PRIMARY KEY,
CompanionName VARCHAR(300) NOT NULL,
WhoPlayed VARCHAR(300) NOT NULL
);

CREATE TABLE tblEpisode 
(
EpisodeId INT PRIMARY KEY,
SeriesNumber INT NOT NULL,
EpisodeNumber INT NOT NULL,
EpisodeType VARCHAR(300) NOT NULL,
Title Text NOT NULL,
EpisodeDate Date NULL,
AuthorId INT NOT NULL REFERENCES tblAuthor (AuthorId),
DoctorId INT NOT NULL REFERENCES tblDoctor(DoctorId),
Notes Text NULL
);

CREATE TABLE tblEpisodeCompanion 
(
EpisodeCompanionId INT PRIMARY KEY,
EpisodeID INT NOT NULL REFERENCES tblEpisode(EpisodeId),
CompanionId INT NOT NULL REFERENCES tblCompanion(CompanionId),
);

CREATE TABLE tblEpisodeEnemy
(
EpisodeEnemyId INT PRIMARY KEY,
EpisodeId INT NOT NULL REFERENCES tblEpisode(EpisodeId),
EnemyID INT NOT NULL REFERENCES tblEnemy(EnemyId)
);



