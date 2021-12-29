--4. ??????? ????? ?????????? ????????? ????? ????? ?????? ?? ??????????????;
USE SQLAcademyVPU_011;

SELECT 
		teacher_last_name + N' ' +
		teacher_first_name + N' ' +
		teacher_patronim				AS N'TEACHER',

		COUNT(td_dscipline)				AS N'Qtty of DISCIPLINES'
FROM dbo.teachers, dbo.disciplines, dbo.teacher_discipline_relation
WHERE	td_teacher = teacher_id
	AND	td_dscipline = discipline_id
GROUP BY teacher_last_name, teacher_first_name, teacher_patronim;