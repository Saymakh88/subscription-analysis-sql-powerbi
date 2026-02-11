SET SQL_SAFE_UPDATES = 0;

UPDATE transactions
SET InvoiceDate_dt =
STR_TO_DATE(InvoiceDate, '%c/%e/%Y %k:%i')
WHERE InvoiceNo IS NOT NULL;

SELECT InvoiceDate, InvoiceDate_dt
FROM transactions
LIMIT 10;

ALTER TABLE transactions DROP InvoiceDate;

ALTER TABLE transactions 
CHANGE InvoiceDate_dt InvoiceDate DATETIME;

SELECT COUNT(*) 
FROM transactions
WHERE CustomerID IS NULL;

ALTER TABLE transactions ADD Revenue DECIMAL(10,2);

UPDATE transactions
SET Revenue = Quantity * UnitPrice;
