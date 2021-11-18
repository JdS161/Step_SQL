USE SQLAcademyVPU_011;
GO

CREATE TABLE disciplines
(
	discipline_id					INT				NOT NULL	PRIMARY KEY IDENTITY(1,1),
	discipline_name					NVARCHAR(50)	NOT NULL,
	discipline_length				INT				NOT NULL
);
GO

CREATE TABLE teachers
(
	teacher_id						INT				NOT NULL	PRIMARY KEY IDENTITY(1,1),
	teacher_last_name				NVARCHAR(80)	NOT NULL,
	teacher_first_name				NVARCHAR(80)	NOT NULL,
	teacher_patronim				NVARCHAR(80)	NOT NULL,
	teacher_birth_date				DATE			NOT NULL,
	teacher_experience				REAL			NOT NULL,
	teacher_primary_discipline		INT				NOT NULL	CONSTRAINT FK_teachers_primary_discipline		FOREIGN KEY REFERENCES dbo.disciplines(discipline_id),
	teacher_secondary_discipline	INT							CONSTRAINT FK_teachers_secondary_discipline		FOREIGN KEY REFERENCES dbo.disciplines(discipline_id)
);
GO

CREATE TABLE grades
(
	grade_id						INT				NOT NULL	PRIMARY KEY IDENTITY(1,1),
	grade							INT				NOT NULL,
	grade_date						DATETIME		NOT NULL,
	grade_student					INT				NOT NULL	CONSTRAINT FK_grades_students					FOREIGN KEY REFERENCES dbo.students(student_id),
	grade_discipline				INT				NOT NULL	CONSTRAINT FK_grades_disciplines				FOREIGN KEY REFERENCES dbo.disciplines (discipline_id),	
	grade_teacher					INT				NOT NULL	CONSTRAINT FK_grades_teachers					FOREIGN KEY REFERENCES dbo.teachers(teacher_id)

);
GO

CREATE TABLE schedules
(
	schedule_id						INT				NOT NULL	PRIMARY KEY IDENTITY(1,1),
	schedule_date_time				DATETIME		NOT NULL,
	schedule_location				NVARCHAR(50)	NOT NULL,
	schedule_group					INT				NOT NULL	CONSTRAINT FK_schedules_groups					FOREIGN KEY REFERENCES dbo.groups(group_id),
	schedule_discipline				INT				NOT NULL	CONSTRAINT FK_schedules_disciplines				FOREIGN KEY REFERENCES dbo.disciplines(discipline_id),
	schedule_teacher				INT				NOT NULL	CONSTRAINT FK_schedules_teachers				FOREIGN KEY REFERENCES dbo.teachers(teacher_id)
	
);
GO

SELECT * FROM sys.tables;