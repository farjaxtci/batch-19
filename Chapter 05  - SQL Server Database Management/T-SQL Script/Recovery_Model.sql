
-- Display current Recovery Model 
SELECT 
	name AS [Database Name],
	recovery_model_desc AS [Recovery Model] 
	FROM sys.databases
GO

-- Change Recovery Model 

USE [master]
GO
ALTER DATABASE [database_naem] SET RECOVERY full  WITH NO_WAIT
GO
