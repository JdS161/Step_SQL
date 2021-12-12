USE SQLAcademyVPU_011;
GO

SELECT 
	student_last_name + ' ' + 
	student_first_name + ' ' + 
	student_patronim							AS N'Student',
	student_birth_date							AS N'Birth date',
	groups.group_name							AS N'Group',
	specializations.specialization_name			AS N'Specializaion',
	student_rating								AS N'Rating',
	student_attendance							AS N'Attendance'
FROM students, groups, specializations
WHERE	student_group = groups.group_id
AND		student_specialization = specializations.specialization_id
ORDER BY student_last_name;