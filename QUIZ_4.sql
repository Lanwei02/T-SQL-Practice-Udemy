--1. HIGHLIGHT THE FOLLOWING SCRIPT UNTIL YOU REACH QUIZ 4, THEN PRESS F5.  THEN TAKE THE TEST

USE TSQL
GO

CREATE TABLE Emp_Test
(NameID int NOT NULL IDENTITY (1, 1) PRIMARY KEY, --<< Note: This is the Primary Key for this table.
Fname varchar (20) NULL,
Lname varchar (20) NULL,
Gender char (1) NULL)

--Insert data into table names

INSERT INTO Emp_Test
VALUES
('Mary','Jones','F'), --1
('Todd','Smith','M'), --2
('Sam','Book','M'), --3
('Bill','Lamp','M'), --4
('Leslie','Keys','F'),--5
('Daniella','Horton','F')--6


CREATE TABLE Emp_Depart
(DepartmentID int NOT NULL IDENTITY (1, 1) PRIMARY KEY, --<<Note: This is the Primary Key for this table
Department varchar (20),
BuildingCode varchar (20),
NameID int FOREIGN KEY REFERENCES Emp_Test (NameID) NULL) --<<Note: This is the Foreign Key in this table that has a relationship with Names table

INSERT INTO Emp_Depart
VALUES
('Sales','abc', 1),
('Accounts','xyz', 1),
('Purchasing','123', 2),
('Business','xyz', 2),
('Taxes','xyz', NULL),
('Taxes','xyz', NULL),
('Taxes','xyz', NULL)

SELECT * FROM Emp_Test
SELECT * FROM Emp_Depart

                                                           --QUIZ 4
------------------------------------------------------------------------------------------------------------------------


--1. Which department does Mary Jones belong to?  Hint: Write an inner join with a where clause to retrieve Mary's data.
SELECT Emp_Test.Fname, Emp_Test.Lname, Emp_Depart.DepartmentID, Emp_Depart.Department
FROM Emp_Depart
INNER JOIN Emp_Test
ON Emp_Depart.NameID=Emp_Test.NameID
WHERE Emp_Test.Fname='Mary' AND Emp_Test.Lname='Jones'

--2.  Match the following join with the description:

--Example of INNER JOIN - (GIVES US ALL THE DATA FROM THE FIRST TABLE WHEN THERE IS A MATCH IN THE SECOND TABLE
--Example of LEFT OUTER JOIN - GIVES US ALL THE DATA FROM THE FIRST TABLE EVEN WHEN THERE IS NO MATCH IN THE SECOND TABLE
--Example of RIGHT OUTER JOIN - GIVES US ALL THE DATA FROM THE SECOND TABLE EVEN WHEN THERE IS NO MATCH IN THE FIRST TABLE
--Example of FULL OUTER JOIN - (GIVES US ALL THE DATA FROM BOTH TABLES EVEN IF THEY DONT MATCH)


--3. Write a Full Join that eliminates Nulls. Hint: use the where clause to filter nulls
SELECT *
FROM Emp_Depart
FULL JOIN Emp_Test
ON Emp_Depart.NameID=Emp_Test.NameID
WHERE Emp_Depart.NameID IS NOT NULL


Drop table Emp_Test
Drop table Emp_Depart














































