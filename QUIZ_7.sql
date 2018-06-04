--                                                   Quiz Seven

--1. A VIEW is which of the following:
--A,B,D,E

/*
A. Views are created by defining the SELECT statement 
B. The table that provide the data are called base tables
C. The view itself holds data. 
D. They can be queried, updated, and dropped
E. Any changes are made to the originating table(s)
*/

--2. Write a select query for a VIEW for the following columns:
--      ,[Title]
--      ,[FirstName]
--      ,[MiddleName]
--      ,[LastName]
--      ,[Suffix]
--FROM [AdventureWorks2012].[Person].[Person]
CREATE VIEW vwPerson
AS
SELECT [Title], FirstName, MiddleName, LastName, Suffix
FROM AdventureWorks2012.Person.Person

--3. Write a CASE statement for the following select statement giving a 'Give Raise' to the 
--'Information Services' and 'No Raise' to all others

SELECT [DepartmentID],
       [Name],
       [GroupName],
       [ModifiedDate]
FROM [AdventureWorks2012].[HumanResources].[Department]
WHERE [Name]='Information Services'

SELECT [DepartmentID],
	   [Name],
      CASE [Name] WHEN 'Information Services' THEN 'Give Raise'
	  ELSE 'No Raise' END AS RaiseOrNot,
       [GroupName],
       [ModifiedDate]
FROM [AdventureWorks2012].[HumanResources].[Department]




--2. Write a select query for a VIEW for the following columns:
--      ,[Title]
--      ,[FirstName]
--      ,[MiddleName]
--      ,[LastName]
--      ,[Suffix]
--FROM [AdventureWorks2012].[Person].[Person]

--Answer:

Use AdventureWorks2012
Go

Create View VWPerson
AS
Select
[Title],
[FirstName],
[MiddleName],
[LastName],
[Suffix]
FROM [AdventureWorks2012].[Person].[Person]

--Verify

Select * From VWPerson

--3. Write a CASE statement for the following select statement giving a 'Give Raise' to the 'Information Services' and 'No Raise' to all others

SELECT [DepartmentID],
       [Name],
       [GroupName],
       [ModifiedDate]
FROM [AdventureWorks2012].[HumanResources].[Department]

--Answer:

SELECT [DepartmentID],
       [Name],
	   Case 
	   When [Name] = 'Information Services' Then 'Give Raise'
	   Else 'No Raise'
	   End AS 'Bonus',
       [GroupName],
       [ModifiedDate]
  FROM [AdventureWorks2012].[HumanResources].[Department]



