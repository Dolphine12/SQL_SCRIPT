-- CREATE DATABASE AND TABLE 
CREATE DATABASE ASSIGNMENT;
USE ASSIGNMENT;
CREATE TABLE Sales(
SaleID int primary key,
ProductID varchar (50),
CustomerID varchar (50),
SalesDate date,
Amount int );

-- INSERTING DATA INTO COLUMNS
INSERT INTO Sales (SaleID, ProductID, CustomerID, SalesDate, Amount)
Values (1, '122B', '12345DEE', '2024-09-29', 20000);

-- FINDING TOTAL SALES FOR EACH PRODUCT
SELECT ProductID, SUM(Amount) AS TotalSales
FROM Sales
GROUP BY ProductID;

-- CALCULATING TOTAL SALES FOR EACH MONTH
SELECT 
    DATE_FORMAT(SalesDate, '%Y-%m') AS SaleMonth, 
    SUM(Amount) AS TotalSales
FROM 
    Sales
GROUP BY 
    SaleMonth
ORDER BY 
    SaleMonth;

--    CUSTOMER WHO MADE PURCHASS>5
SELECT CustomerID, COUNT(*) AS PurchaseCount
FROM Sales
GROUP BY CustomerID
HAVING COUNT(*) > 5;

