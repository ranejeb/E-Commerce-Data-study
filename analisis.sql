SELECT COUNT(*) FROM 'data' WHERE CustomerID IS NOT NULL;

SELECT COUNT(*) FROM 'data' WHERE CustomerID IS NULL;

SELECT COUNT(*) FROM sales_clean;

SELECT COUNT(*) FROM sales_clean WHERE CustomerID IS NULL;

-- TODO : импортировать заново таблицу с иным полем InvoiceDate NVARCHAR
-- TODO : перезапустить скрипт очистки 01_data_cleaning.sql

