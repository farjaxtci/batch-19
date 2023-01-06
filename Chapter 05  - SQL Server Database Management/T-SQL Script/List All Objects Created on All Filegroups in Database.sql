-- List All Objects Created on All Filegroups in Database

SELECT o.[name], o.[type], i.[name], i.[index_id], f.[name] as filesGroups FROM sys.indexes i
INNER JOIN sys.filegroups f
ON i.data_space_id = f.data_space_id
INNER JOIN sys.all_objects o
ON i.[object_id] = o.[object_id] WHERE i.data_space_id = f.data_space_id
AND o.type = 'U' -- User Created Tables
GO

