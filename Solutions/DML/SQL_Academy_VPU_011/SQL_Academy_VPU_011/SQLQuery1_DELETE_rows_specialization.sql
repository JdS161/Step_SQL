USE SQLAcademyVPU_011;
GO

DELETE FROM dbo.specializations
WHERE specialization_id>4
GO

SELECT * FROM dbo.specializations