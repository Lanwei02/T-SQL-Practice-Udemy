--1.Copy and paste the following create table command in your query pane.
Use AdventureWorks2012
Go

Create Table Names_Test

(Fname varchar (20),

Lname varchar (20),

State char (2),

City varchar (25),

Salary money

)

--Then, using the Insert Into command, insert the following data:
--Fname:Mary
--Lname:Jones
--State:NY
--City:New York City
--Salary: 3500

INSERT INTO Names_Test (Fname, Lname, [State], [City], [Salary])
VALUES
 ('Mary', 'Jones', 'NY', 'New York City', 3500)


 SELECT * FROM Names_Test

--2.Insert just the following values in the table Names_Test
--Fname:Joseph
--Salary: 4200

INSERT INTO Names_Test (Fname, Salary)
VALUES ('Joseph', 4200)

SELECT * FROM Names_Test


--3.Use the table Names_Test and update the following:
--Update State from NY to CA

UPDATE Names_Test
SET [State]='CA'
WHERE [State]='NY'

SELECT * FROM Names_Test


--4.Use the table Names_Test and update the following:
--Update Lname from Jones to Smith and Update Salary from 3500 to 4200

UPDATE Names_Test
SET Lname='Smith', Salary=4200
WHERE Lname='Jones' AND Salary=3500

SELECT * FROM Names_Test

--5.Using the IN operator, find all the data from the following table 
--AdventureWorks2012.Person.Person where FirstName include: 
--Gigi, David, Ken, Morgan

SELECT *
FROM AdventureWorks2012.Person.Person
WHERE FirstName IN ('Gigi', 'David', 'Ken', 'Morgan')

--6.What is the difference between Delete and Truncate commands?
--My answer:
-- DELECT could be following with WHERE clause to specify certain condation;
-- Whereas TRUNCATE could only delete all the data in the table.


+----------------------------------------+----------------------------------------------+
|                Truncate                |                    Delete                    |
+----------------------------------------+----------------------------------------------+
| We can't Rollback after performing     | We can Rollback after delete.                |
| Truncate.                              |                                              |
|                                        |                                              |
| Example:                               | Example:                                     |
| BEGIN TRAN                             | BEGIN TRAN                                   |
| TRUNCATE TABLE tranTest                | DELETE FROM tranTest                         |
| SELECT * FROM tranTest                 | SELECT * FROM tranTest                       |
| ROLLBACK                               | ROLLBACK                                     |
| SELECT * FROM tranTest                 | SELECT * FROM tranTest                       |
+----------------------------------------+----------------------------------------------+
| Truncate reset identity of table.      | Delete does not reset identity of table.     |
+----------------------------------------+----------------------------------------------+
| It locks the entire table.             | It locks the table row.                      |
+----------------------------------------+----------------------------------------------+
| Its DDL(Data Definition Language)      | Its DML(Data Manipulation Language)          |
| command.                               | command.                                     |
+----------------------------------------+----------------------------------------------+
| We can't use WHERE clause with it.     | We can use WHERE to filter data to delete.   |
+----------------------------------------+----------------------------------------------+
| Trigger is not fired while truncate.   | Trigger is fired.                            |
+----------------------------------------+----------------------------------------------+
| Syntax :                               | Syntax :                                     |
| 1) TRUNCATE TABLE table_name           | 1) DELETE FROM table_name                    |
|                                        | 2) DELETE FROM table_name WHERE              |
|                                        |    example_column_id IN (1,2,3)              |
+----------------------------------------+----------------------------------------------+

--7.Find all the products that range between products named 'M' and 'S'
SELECT *
FROM AdventureWorks2012.Production.Product
WHERE Name BETWEEN 'M' AND 'S'
ORDER BY Name
