USE SQLAcademyVPU_011;
GO

EXEC sp_sceduleInsert '2022-01-16 10:00', 20, N'ON-LINE', 15, 8, 1, N'TRIGGERS'

SELECT 
		schedule_date_time				AS N'Date & Time',
		schedule_location				AS N'Location',
		group_name						AS N'Group',
		discipline_name					AS N'Discipline',
		teacher_last_name + N' ' +
		teacher_first_name + N' ' +
		teacher_patronim				AS N'Teacher',
		schedule_topic					AS N'Topic'

FROM dbo.groups gr, dbo.disciplines ds, dbo.teachers tch, dbo.schedules sch
WHERE schedule_discipline = discipline_id
AND		schedule_teacher = teacher_id
AND		schedule_group = group_id ;
