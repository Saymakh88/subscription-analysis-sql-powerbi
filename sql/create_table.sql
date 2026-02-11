CREATE DATABASE subscription_analysis;
USE subscription_analysis;

CREATE TABLE transactions (
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(20),
    Description TEXT,
    Quantity INT,
    InvoiceDate VARCHAR(30),   
    UnitPrice DECIMAL(10,2),
    CustomerID VARCHAR(20),
    Country VARCHAR(50)
);

SELECT COUNT(*) FROM transactions;

SELECT * FROM transactions LIMIT 10;
