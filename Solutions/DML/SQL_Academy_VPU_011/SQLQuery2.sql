USE SQLAcademyVPU_011;

SELECT 
	teacher_last_name + N' ' + 
	teacher_first_name + N' ' +
	teacher_patronim				AS N'TEACHER',
	discipline_name					AS N'DISCIPLINE'									
FROM dbo.teachers, dbo.disciplines, dbo.teacher_discipline_relation
WHERE teacher_discipline_relation.td_teacher = teachers.teacher_id
AND teacher_discipline_relation.td_dscipline = disciplines.discipline_id;