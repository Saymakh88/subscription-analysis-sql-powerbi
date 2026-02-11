LOAD DATA INFILE 
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/online_retail_50k.csv'
INTO TABLE transactions
CHARACTER SET latin1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
 InvoiceNo,
 StockCode,
 Description,
 Quantity,
 InvoiceDate,
 UnitPrice,
 CustomerID,
 Country
);
