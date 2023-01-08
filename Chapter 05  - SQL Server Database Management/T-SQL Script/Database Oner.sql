-- Find Current Database Owner 
SELECT 
    name AS [Database Name], 
    suser_sname( owner_sid ) AS [database owner]
FROM 
    sys.databases


-- Change Database Owner 

use database_naem
GO

USE database_naem
GO
ALTER AUTHORIZATION ON DATABASE::database_naem TO [sa]
GO