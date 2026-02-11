SELECT ROUND(SUM(Revenue),2) AS Total_Revenue
FROM transactions;

SELECT COUNT(DISTINCT CustomerID) AS Total_Customers
FROM transactions;

DESC transactions;

SELECT 
ROUND(SUM(Revenue)/COUNT(DISTINCT InvoiceNo),2) 
AS Avg_Order_Value
FROM transactions;

SELECT 
 YEAR(InvoiceDate) AS Year,
 MONTH(InvoiceDate) AS Month,
 ROUND(SUM(Revenue),2) AS Monthly_Revenue
FROM transactions
GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate)
ORDER BY Year, Month;

SELECT 
 CustomerID,
 ROUND(SUM(Revenue),2) AS Total_Spent,
 COUNT(DISTINCT InvoiceNo) AS Orders
FROM transactions
GROUP BY CustomerID
ORDER BY Total_Spent DESC
LIMIT 10;

SELECT 
 Country,
 ROUND(SUM(Revenue),2) AS Revenue
FROM transactions
GROUP BY Country
ORDER BY Revenue DESC;

SELECT 
 CustomerID,
 MAX(InvoiceDate) AS Last_Purchase
FROM transactions
GROUP BY CustomerID;

SELECT 
 CustomerID
FROM transactions
GROUP BY CustomerID
HAVING MAX(InvoiceDate) < 
DATE_SUB((SELECT MAX(InvoiceDate) FROM transactions), INTERVAL 90 DAY);

SELECT 
 ROUND(SUM(Revenue),2) AS Revenue_At_Risk
FROM transactions
WHERE CustomerID IN (
   SELECT CustomerID
   FROM transactions
   GROUP BY CustomerID
   HAVING MAX(InvoiceDate) < 
   DATE_SUB((SELECT MAX(InvoiceDate) FROM transactions), INTERVAL 90 DAY)
);








