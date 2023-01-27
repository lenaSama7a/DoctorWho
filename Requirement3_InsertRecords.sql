INSERT INTO tblEnemy (EnemyId, EnemyName,Description) VALUES
(1, 'Kingsley Amis','the killer'),
(2, 'Fannie Flagg','the suspect'),
(3, 'Iceberg Slim','the thief'),
(4, 'Camille Paglia','turns into a monster'),
(5, 'Maria Orczy','The bully');

INSERT INTO tblAuthor (AuthorId, AuthorName) VALUES 
(1, 'Edwidge Danticat'),
(2, 'Ernest Hemingway'),
(3, 'Saul Bellow'),
(4, 'Sidney Sheldon'),
(5, 'Franz Kafka');

INSERT INTO tblDoctor (DoctorId, DoctorNumber,DoctorName,BirthDate,FirstEpisodeDate,LastEpisodeDate)VALUES
(1, 1, 'Smith', '1990-12-15', '2020-12-15', '2021-4-15'),
(2, 2, 'Taylor', '1980-12-15', '2020-4-15', '2020-7-15'),
(3, 3, 'Brown', '1975-12-15', '2020-8-15', '2020-12-15'),
(4, 4, 'Williams', '1984-12-15', '2022-5-15', '2020-9-15'),
(5, 5, 'Barker', '1987-12-15', '2020-1-15', '2020-8-15');

INSERT INTO tblCompanion(CompanionId, CompanionName,WhoPlayed) VALUES
(1, 'Ezra Pound','Agatha Christie'),
(2, 'Tennessee Williams','Danielle Steel'),
(3, 'Willa Cather','Lord Byron'),
(4, 'Langston Hughes','Somerset Maugham'),
(5, 'Joan Didion','Djuna Barnes');

INSERT INTO tblEpisode(EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) VALUES
(1, 1,1,'special','Wednesdays Child Is Full of Woe','2020-5-15',1,2,''),
(2, 1,2,'Filler ','Woe Is the Loneliest Number','2020-5-29',2,2,''),
(3, 1,3,'bottle episode','Friend or Woe','2020-6-4',2,2,''),
(4, 2,1,'Classic','Woe What a Night','2020-9-15',2,3,''),
(5, 2,2,'Filler ','You Reap What You Woe','2020-10-15',2,3,''),
(6, 2,3,'special ','Quid Pro Woe','2022-6-15',3,4,''),
(7, 3,1,'Classic','A Murder of Woes','2022-7-15',3,4,'');

INSERT INTO tblEpisodeEnemy(EpisodeEnemyId, EpisodeId,EnemyID) VALUES
(1, 1, 3),
(2, 1, 4),
(3, 2, 1),
(4, 2, 3),
(5, 2, 5),
(6, 3, 4),
(7, 4, 1),
(8, 4, 3);

INSERT INTO tblEpisodeCompanion(EpisodeCompanionId, EpisodeId, CompanionId) VALUES
(1, 1, 2),
(2, 2, 3),
(3, 2, 5),
(4, 3, 4),
(5, 4, 1),
(6, 5, 3),
(7, 5, 2);