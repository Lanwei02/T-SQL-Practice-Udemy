USE AdventureWorks2012
GO
--1.Write a query that selects all the columns from the table 
--HumanResources.Department
SELECT *
FROM HumanResources.Department

--2.Write a query that selects the FirstName, MiddleName,LastName 
--from the table Person.Personwhere the LastName has a pattern containing 'so'
SELECT FirstName, MiddleName,LastName 
FROM Person.Person
WHERE LastName LIKE '%so%'

--3.Table AdventureWorks2012.Sales.SalesOrderDetail has a column called 
--SalesOrderID.How many distinct (non-duplicate fields) SalesOrderID are there?
SELECT DISTINCT SalesOrderID
FROM AdventureWorks2012.Sales.SalesOrderDetail

--4.Select all the data from table AdventureWorks2012.Sales.SalesTerritory 
--where the ID = 5 OR the Group is Europe
SELECT *
FROM AdventureWorks2012.Sales.SalesTerritory
WHERE TerritoryID = 5 OR [Group] = 'Europe'

--5.Sort the table [AdventureWorks2012].[Sales].[Currency] with the Name 
--field in a descending order
SELECT * 
FROM [AdventureWorks2012].[Sales].[Currency]
ORDER BY Name DESC
