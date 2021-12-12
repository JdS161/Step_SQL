USE SQLAcademyVPU_011;
GO

SELECT 
	specialization_name AS N'Specialization',
	COUNT(student_id)	AS N'Qtty of students'
FROM students, specializations
WHERE student_specialization = specialization_id
GROUP BY specialization_name
ORDER BY N'Qtty of students'--DESC--descending order;