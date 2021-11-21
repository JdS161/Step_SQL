USE SQLAcademyVPU_011;
GO

INSERT INTO dbo.students
				(student_last_name, student_first_name, student_patronim, student_birth_date, student_group, student_specialization, student_rating, student_attendance)

VALUES  (N'Remizov', N'Dmitry', N'Viktorovich', '1993-06-18', 15,1,98,99),
		(N'Sorokina', N'Maria', N'Vladimirovna', '1994-08-24', 15,1,98,98),
		(N'Vagurin', N'Dmitry', N'Vladimirovich', '1988-02-10', 15,1,97,95),
		(N'Volodin', N'Alexey', N'Nikolayevich', '1986-03-11', 15,1,98,99)

GO

SELECT * FROM dbo.students

