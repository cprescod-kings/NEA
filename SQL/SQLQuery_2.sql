DELETE FROM dbo.Questions
DBCC CHECKIDENT ('dbo.Questions', RESEED, 0)