
--Final Quiz:

/* Run the Select * from AdventureWorks2012.Person.StateProvince  
and tell me how many name columns begin with the letter 'A' */
SELECT COUNT(*)
FROM AdventureWorks2012.Person.StateProvince
WHERE Name LIKE 'A%'


/* Which region (Name) made the highest SalesYTD? Use a Subquery
Hint: Use a subquery to find Max value of the highest SaleYTD first */
SELECT P.Name, S.SalesYTD
FROM AdventureWorks2012.Person.StateProvince AS P
INNER JOIN
AdventureWorks2012.Sales.SalesTerritory AS S
ON P.Name =S.Name
WHERE SalesYTD IN
(SELECT MAX(SalesYTD)
FROM AdventureWorks2012.Sales.SalesTerritory
GROUP BY Name)

/* Using this table AdventureWorks2012.Person.StateProvince 
How many territories are there in the Northwest region where TerritoryID = 1 */
SELECT COUNT(*) AS TerritorNo
FROM AdventureWorks2012.Person.StateProvince 
WHERE TerritoryID = 1


/* Which product was the most expensive in the [AdventureWorks2012].[Production].[Product] table?
Please give me the name, and the price of the product so that i can buy it for my wife? */
SELECT ProductID, Name, StandardCost AS [The Most Expensive]
FROM [AdventureWorks2012].[Production].[Product]
WHERE StandardCost IN
(SELECT MAX(StandardCost)
FROM [AdventureWorks2012].[Production].[Product])


/*
Execute:
Select * From [AdventureWorks2012].[Production].[ProductReview] 
Select * From [AdventureWorks2012].[Production].[Product]
and tell me what specfic product was John Smith praising about
Hint:  Use a Join for [AdventureWorks2012].[Production].[ProductReview] 
and  
[AdventureWorks2012].[Production].[Product]
*/
SELECT ReviewerName, Name, Comments
FROM [AdventureWorks2012].[Production].[ProductReview] AS R
INNER JOIN [AdventureWorks2012].[Production].[Product] AS P
ON R.ProductID=P.ProductID
WHERE ReviewerName='John Smith'

/* 
I tried the Mountain Bike Socks and they were great!  Can you replace his comments from 
'lightweight' 'increadibley light' in upper case.
Hint: Use the Replace and Upper commands with an inner join */
SELECT ReviewerName, Name, REPLACE(Comments, 'lightweight', UPPER('increadibley light')) AS Comments
FROM [AdventureWorks2012].[Production].[ProductReview] AS R
INNER JOIN [AdventureWorks2012].[Production].[Product] AS P
ON R.ProductID=P.ProductID
WHERE ReviewerName='John Smith'


--This table has beem created and has data inserted

Use TSQL
Go

Create Table People
(Fname varchar (20),
Lname varchar (20),
DateOfBirth varchar (20),
Gender char (1))

Insert Into People
Values ('Bob','Smith','02-01-1961','M'),
('Brandy','Jones','04-16-1981','F'),
('Leslie','Mellon','05-01-2000','F'),
('Henry','Wonders','02-01-1961','M'),
('Jack','Palmer','07-10-1941','M')

Select * From People

/* What is the age of Henry in months,days,mins?
Hint: use datediff */
SELECT Fname, Lname, DateOfBirth, DATEDIFF(DAY, DateOfBirth, GETDATE()) AS [Days],
DATEDIFF(MONTH, DateOfBirth, GETDATE()) AS [Month],
DATEDIFF(YEAR, DateOfBirth, GETDATE()) AS [Years]
FROM People
WHERE Fname='Henry'

/* Select all those people who are female and change the F to Female from the People table
Hint: Use a case statement */

--Drop the table People
SELECT Fname, Lname, DateOfBirth,
CASE WHEN Gender='F' THEN 'female' 
ELSE ''
END AS Gender
FROM People
WHERE Gender='F'
