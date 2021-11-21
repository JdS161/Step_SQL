USE SQLAcademyVPU_011;
GO

--SELECT * FROM specializations;

SELECT 
	student_last_name+ ' ' 
	+ student_first_name + ' '
	+ student_patronim + ' '				AS 'Student',
	student_birth_date						AS 'Birth date',
	group_name								AS 'Group',				--should be used from dbo.groups			*
	specialization_name						AS 'Specialization',	--should be used from dbo.specializations	*
	student_rating							AS 'Rating',
	student_attendance						AS 'Attendance'

FROM students, groups, specializations
WHERE 
		student_group = group_id
	AND student_specialization = specialization_id;


--*Otherwise values in cells are returning INT values from dbo.students ONLY