USE SQLAcademyVPU_011;
GO

CREATE PROC  sp_gradesInsert
							@varGrade int,
							@varGradeDate datetime,
							@varStudent int,
							@varDiscipline int,
							@varTeacher int

AS
