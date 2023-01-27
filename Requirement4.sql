UPDATE tblEpisode
set Title = CONCAT(Title,'_CANCELLED')
WHERE DoctorId IS NULL;