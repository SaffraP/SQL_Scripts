-- This query returns all the tables that have a specific column 
-- Column name is on the WHERE clause
SELECT  OBJECT_SCHEMA_NAME(ac.object_id) SchemaName, 
        OBJECT_NAME(ac.object_id) TableName, 
        ac.name as ColumnName, tp.name DataType
FROM sys.all_columns ac
INNER JOIN sys.types tp ON tp.user_type_id = ac.user_type_id
WHERE ac.name like '%trantype%' --replace this with the column name you're looking for
order by 1, 2, 3



