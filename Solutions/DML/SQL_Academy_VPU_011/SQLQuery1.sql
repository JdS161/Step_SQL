USE SQLAcademyVPU_011;

CREATE TABLE teacher_discipline_relation
(
	td_relation_id		INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	td_teacher			INT NOT NULL CONSTRAINT FK_teacher		REFERENCES dbo.teachers(teacher_id),
	td_dscipline		INT NOT NULL CONSTRAINT FK_discipline	REFERENCES dbo.disciplines(discipline_id)
)
