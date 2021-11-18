USE SQLAcademyVPU_011;
GO

CREATE TABLE students
(
	student_id				INT				NOT NULL PRIMARY KEY IDENTITY(1,1),
	student_last_name		NVARCHAR(50)	NOT NULL,
	student_first_name		NVARCHAR(50)	NOT NULL,
	student_patronim		NVARCHAR(50)	NOT NULL,
	student_birth_date		DATE,
	student_group			INT				CONSTRAINT FK_student_group				FOREIGN KEY REFERENCES dbo.groups(group_id),
	student_specialization	INT				CONSTRAINT FK_student_specialization	FOREIGN KEY REFERENCES dbo.specializations (specialization_id),
	student_rating			REAL			CONSTRAINT rating_check		CHECK (student_rating >=0 AND student_rating <= 100),
	student_attendance		REAL			CONSTRAINT attendance_check CHECK (student_attendance >=0 AND student_attendance<=100)
);
GO

SELECT * FROM sys.tables;