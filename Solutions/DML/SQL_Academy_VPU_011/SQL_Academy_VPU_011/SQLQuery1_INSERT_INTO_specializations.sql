--DML - Data Manipulation Language
-- INSERT - data insertion to the table
-- UPDATE
-- DELETE
-- SELECT


USE SQLAcademyVPU_011;
GO


--INSERT INTO <TABLE NAME> (COLUMN1, COLUMN2,...)
-- VALUES( VALUE1, VALUE2,...)


INSERT INTO dbo.specializations 
		(specialization_name)
--VALUES	(N'Software Development')		--N - Unicode string
VALUES	(N'System administration'),
		(N'Computer graphics'),
		(N'Web development')


SELECT  * FROM dbo.specializations;