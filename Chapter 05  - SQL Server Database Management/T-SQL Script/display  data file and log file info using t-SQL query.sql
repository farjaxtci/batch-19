SELECT 

   mdf.database_id, 

    mdf.name, 

    mdf.physical_name as data_file, 

    ldf.physical_name as log_file, 

    db_size = CAST((mdf.size * 8.0)/1024 AS DECIMAL(8,2)), 

    log_size = CAST((ldf.size * 8.0 / 1024) AS DECIMAL(8,2))

FROM (SELECT * FROM sys.master_files WHERE type_desc = 'ROWS' ) mdf

JOIN (SELECT * FROM sys.master_files WHERE type_desc = 'LOG' ) ldf

ON mdf.database_id = ldf.database_id


-- get only specefic database inf0


SELECT 
    mdf.database_id, 
    mdf.name, 
    mdf.physical_name as data_file, 
    ldf.physical_name as log_file, 
    db_size = CAST((mdf.size * 8.0)/1024 AS DECIMAL(8,2)), 
    log_size = CAST((ldf.size * 8.0 / 1024) AS DECIMAL(8,2))
FROM (SELECT * FROM sys.master_files WHERE type_desc = 'ROWS' ) mdf
JOIN (SELECT * FROM sys.master_files WHERE type_desc = 'LOG' ) ldf
ON mdf.database_id = ldf.database_id
where mdf.name =  'sample1'