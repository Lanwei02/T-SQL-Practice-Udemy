
--1. Find the SUM, MIN, MAX, COUNT of [AdventureWorks2012].[Sales].[SalesOrderDetail]
USE AdventureWorks2012
GO

SELECT *
FROM AdventureWorks2012.Sales.SalesOrderDetail

SELECT SalesOrderID, SUM(OrderQty) AS TotalQty, MIN(OrderQty) AS MinQty, MAX(OrderQty) AS MaxQty,
COUNT(*) AS TotalOrder
FROM AdventureWorks2012.Sales.SalesOrderDetail
GROUP BY SalesOrderDetail.SalesOrderID
ORDER BY SalesOrderID

--2. What is a Null value?
-- The value of the data is unknow

--3. Find all Null values in the table Names in the Joins database
USE TSQL
GO

SELECT * 
FROM dbo.Names2
Where Social_Security_Number IS NULL

--4. The purpose of ISNULL() is to replace a NULL value with another value; 
--Write a query that replaces a Null value with a 'NoMiddleName'for column MiddleName
--in the following table: [AdventureWorks2012]. [Person].[Person]
USE AdventureWorks2012
GO

SELECT MiddleName, ISNULL(MiddleName, 'NoMiddleName') AS ReplacedMiddleName
FROM [AdventureWorks2012].[Person].[Person]

--5. Use Alter command to add a column called 'Country' to the [TSQL].[dbo].[Names] table with 
--the appropriate data type
USE TSQL
GO

ALTER TABLE [TSQL].[dbo].[Names2]
ADD Country VARCHAR (20)

SELECT * FROM TSQL.dbo.Names2
--6. What is the total quantizes sold for the item SalesOrderID = '43659'? 
--Use the following table: [AdventureWorks2012].[Sales].[SalesOrderDetail]
SELECT SalesOrderID, SUM(OrderQty) AS Quantizes
FROM [AdventureWorks2012].[Sales].[SalesOrderDetail]
WHERE SalesOrderID = '43659'
GROUP BY SalesOrderID 

--7. What is the total quantizes sold and total count of orders for each SalesOrderID greater than 30? 
--Use the following table: [AdventureWorks2012].[Sales].[SalesOrderDetail].  
--Hint: Use the Having Clause
SELECT SalesOrderID, COUNT(*) AS NoOrders, SUM(OrderQty) AS Quantizes
FROM [AdventureWorks2012].[Sales].[SalesOrderDetail]
GROUP BY SalesOrderID
HAVING COUNT(*) > 30
ORDER BY SalesOrderID

