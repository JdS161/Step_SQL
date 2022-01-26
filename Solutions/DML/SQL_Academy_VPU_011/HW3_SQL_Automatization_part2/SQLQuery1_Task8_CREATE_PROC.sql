USE SQLAcademyVPU_011;
GO




--In oreder to run the procedure fill following field:
				--1) First date&time 
				--2) Duration of the discipline
				--3) Location
				--4) Discipline
				--5) Teacher
				--6) Topic (optional)
CREATE PROC sp_scheduleInsert 
							@varDateTime datetime, 
							@varDuration int, 
							@varLocation nvarchar(50),
							@varGroup int,
							@varDiscipline int,
							@varTeacher int,
							@varTopic nvarchar(100)

AS 

DECLARE @temp int;

WHILE @varDuration >0
BEGIN
	INSERT INTO dbo.schedules 
							(schedule_date_time,
							 schedule_location,
							 schedule_group,
							 schedule_discipline,
							 schedule_teacher,
							 schedule_topic)
		VALUES	(@varDateTime, 
				 @varLocation,
				 @varGroup,
				 @varDiscipline,
				 @varTeacher,
				 @varTopic)

	SET @varDuration = @varDuration - 1
	SET @varDateTime = DATEADD(week,1,@varDateTime)
END

GO

--Run next query when procedure no longer is required
--DROP PROC sp_scheduleInsert
--GO