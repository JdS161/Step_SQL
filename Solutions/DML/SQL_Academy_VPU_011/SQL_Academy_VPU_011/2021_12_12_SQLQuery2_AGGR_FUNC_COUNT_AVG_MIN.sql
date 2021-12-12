USE SQLAcademyVPU_011;
GO

SELECT COUNT(students.student_id) AS N'Qtty'
FROM students;

SELECT AVG(students.student_rating) AS N'Average Rating'
FROM students;

--SELECT	
--	student_last_name + 
--	' ' + student_first_name + 
--	' ' + student_patronim		AS N'Student',
--	MIN(student_rating)			AS N'Minimal rating'

--FROM students
--GROUP BY students.student_last_name;--, student_first_name, student_patronim;

SELECT 
	student_last_name + 
	' ' + student_first_name + 
	' ' + student_patronim		AS N'Student',
	student_rating				AS N'Minimal rating'
FROM students
WHERE student_rating = (SELECT MIN(student_rating) FROM students);   

SELECT * FROM groups;