--                                                     Quiz six

--1. Using the Select Into command, make a copy of the following table: [AdventureWorks2012].[Sales].[SalesTerritory]
Use TSQL
Go

SELECT * INTO AdventureWorks2012.Sales.SalesTerritory_2
FROM AdventureWorks2012.Sales.SalesTerritory

--2. Which product sold 2 or more quantities? 
--Use a subquery for columns PRODUCTID, PRODUCT_NAME, PRODUCT_DECS with the following tables:PRODUCTS and SALES
SELECT PRODUCTID, PRODUCT_NAME, PRODUCT_DESCRIPTION
FROM PRODUCTS
WHERE PRODUCTID IN (
SELECT PRODUCTID
FROM SALES
WHERE PRODUCT_QTY >= 2)

--3. What is the purpose of data types?
--What type of data could be stored in the column

--4. If you insert data into a datatype char(3), the value 'ABCD', why does it error out?
-- The error would say the column could only store 3 values

--5.What is the difference between Standard characters and Unicode characters?
--storage requirements:
--Standard uses a single byte of space and Unicode uses two bytes of space.

--For question 6, I have created these tables for the next question:

Use TSQL
Go

Create Table Source
(Text1 varchar (9))

Insert Into Source
Values('ABCDEFGHI')--<< 9 characters

Select * From Source

Select Text1,Len(Text1) AS SourceLength
From Source

Create Table Destination
(Text1 varchar (5))

Select * From Destination


--6. When you run the following script, it will error out because the destination table has a limit of 5 characters

Insert Into Destination
Values('ABCDEFGHI') 

--6. The example above illustrates that we are trying to move 9 characters of data into a destination columns 
--that has a max of 5 characters.
--Write a script the will allow this insert into destination command? 
--Hint: use substring to remove the last five characters
ALTER TABLE Destination
ALTER COLUMN Text1 varchar (10)

Insert Into Destination
Values('ABCDEFGHI') 

SELECT * FROM Destination

INSERT INTO Destination 
SELECT SUBSTRING(Text1, 1, 5)
From Source

SELECT * FROM Destination
--7. Show the text1 column in lower case.
SELECT LOWER(Text1) AS LowerCase
FROM Destination

--8. Use the function to get today's date? And, what date, month, and day will it be in 175 days?
--Today
SELECT GETDATE()
--Date
SELECT DAY(GETDATE())
--Month
SELECT MONTH(GETDATE())
--Add 175 days
Select GETDATE() + 175 AS DateIn175Days, 
DATENAME(MONTH,GETDATE()+ 175) AS [MONTH],
DATENAME(DAY, GETDATE()+ 175) AS [DAY_DATE],
DATENAME(WEEKDAY,GETDATE()+ 175) AS [WEEKDAY]

--9. using Convert, change 'Select GETDATE() AS TodaysDate' to different styles 112, 111, 110, 113
Select GETDATE() AS TodaysDate
select CONVERT (varchar (20), GETDATE(), 110) AS TodaysDate
select CONVERT (varchar (20), GETDATE(), 111) AS TodaysDate
select CONVERT (varchar (20), GETDATE(), 112) AS TodaysDate
select CONVERT (varchar (20), GETDATE(), 113) AS TodaysDate

--                                   
 WHERE PRODUCTID IN

 (SELECT PRODUCTID 
  FROM SALES 
  WHERE PRODUCT_QTY >= 2)


  --3. What is the purpose of data types?
  
  --Answer: 
  
  --Data types determine what kind of information is to be stored in the intended column

  --4. If you insert data into a datatype char(3), the value 'ABCD', why does it error out?

  --Answer: 

  --It will error out as the char data type size char(3) can only hold 3 values and not 4

  --5.What is the difference between Standard characters and Unicode characters?

  --Answer:

--The primary difference between Standard and Unicode characters is the storage requirements.
--Standard uses a single byte of space and Unicode uses two bytes of space.

--I have created these tables for the next question:

--Use TSQL
--Go

--Create Table Source
--(Text1 varchar (9))

--Insert Into Source
--Values('ABCDEFGHI')--<< 9 characters

--Select * From Source

--Select Text1,Len(Text1) AS SourceLength
--From Source

--Create Table Destination
--(Text1 varchar (5))

--Select * From Destination


--6. When you run the following script, it will error out because the destination table has a limit of 5 characters

Insert Into Destination
Values('ABCDEFGHI') 

--6. The example above illustrates that we are trying to move 9 characters of data into a destination columns that has a max of 5 characters.
--Write a script the will allow this insert into destination command? Hint: use substring to remove the last five characters

--Answer:

Insert Into Destination
Select Substring (Text1,1,4) AS FOURVALUES 
From Source

Select * From Destination

--7. Show the text1 column in lower case.

--Answer:

Select Text1, LOWER(Text1) AS LowerCase
From Source

--8. Use the function to get today's date? And, what date, month, and day will it be in 175 days?

--Answer:

Select GETDATE() AS TodaysDate

Select GETDATE() + 175 AS DateIn175Days, 
DATENAME(MONTH,GETDATE()+ 175) AS [MONTH],
DATENAME(DAY, GETDATE()+ 175) AS [DAY_DATE],
DATENAME(WEEKDAY,GETDATE()+ 175) AS [WEEKDAY]

SELECT * FROM BOOKS --<<ALT + F1 KEYS shows details of table

--8. using Convert, change 'Select GETDATE() AS TodaysDate' to different styles 112, 111, 110, 113

--Answer:

Select GETDATE() AS TodaysDate
select CONVERT (varchar (20), GETDATE(), 110) AS TodaysDate
select CONVERT (varchar (20), GETDATE(), 111) AS TodaysDate
select CONVERT (varchar (20), GETDATE(), 112) AS TodaysDate
select CONVERT (varchar (20), GETDATE(), 113) AS TodaysDate