USE SQLAcademyVPU_011; --we're choosing DB, which we'll send requests
GO


--CREATE TABLE specializations
--(
--	specialization_id		INT				NOT NULL PRIMARY KEY IDENTITY(1,1),
--	specialization_name		NVARCHAR(80)
--);
--GO

CREATE TABLE groups
(
	group_id	INT				NOT NULL PRIMARY KEY IDENTITY (1,1),
	group_name	NVARCHAR(20)
);
GO

SELECT * FROM sys.tables;