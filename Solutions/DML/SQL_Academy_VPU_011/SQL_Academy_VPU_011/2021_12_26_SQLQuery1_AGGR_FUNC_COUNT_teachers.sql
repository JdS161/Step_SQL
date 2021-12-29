USE SQLAcademyVPU_011;

SELECT 
	disciplines.discipline_name     AS N'Discipline',
		COUNT(teacher_discipline_relation.td_teacher)				AS N'Qtty of TEACHERS'
FROM dbo.disciplines, dbo.teacher_discipline_relation
WHERE teacher_discipline_relation.td_dscipline = discipline_id
GROUP BY discipline_name;