
DROP TABLE IF EXISTS sales_clean ;

CREATE TABLE sales_clean AS 
    InvoiceNo,
    StockCode,
    Description,
    (Quantity * UnitPrice) AS TotalAmount,
    CAST (InvoiceDate AS TIMESTAMP) AS InvoiceDate,
    UnitPrice,
    Quantity,
    CustomerID,
    Country
FROM project_db
WHERE CustomerID IS NOT NULL

    AND UnitPrice > 0
    
    AND StockCode NOT IN ('POST', 'D', 'M', 'DOT', 'BANK CHARGES', 'CRUK');
