                                                      --QUIZ THREE

--1. When you create a simple database without specifying any settings, which system database is used?
--model database

--2. Create a table called MyTable for the following fields, and assign the appropriate data types and make all the fileds null unless specified otherwise.
     
--	 NamesID --<< make this field disallow null values
--	 Fname 
--	 Lname
--	 DateOfBirth
--	 City
--	 [State] --<< Limit this field to have only 2 characters
--	 Country

CREATE TABLE MyTable
(NamesID INT NOT NULL,
Fname VARCHAR (20) NULL,
Lname VARCHAR (20) NULL,
DateOfBirth DATE NULL,
City CHAR (2) NULL,
[State] VARCHAR (20) NULL,
Country VARCHAR (20) NULL)


--3. Types of Constraints: Match the constraint to the definition

--UNIQUE – Provides a unique value for each row
--NOT NULL – Specifies that a column cannot be blank 
--FOREIGN KEY – Provides the referential integrity of the data in one table to match values in another table
--DEFAULT – Uses a default value, when no other values is entered in the column
--CHECK - Ensures that the data entered in the column meets the condition set for that column
--PRIMARY KEY – rovides an unique identity for each record in a table 


--4. How do you insure that a field cannot have a certain value?  
--Write a script that will prevent the customerID from having a value less than zero
ALTER TABLE MyTable
ADD CHECK (customerID > 0);

--5. Aliases (AS) provide a way of, which of the following

--1. Renames the column(s) for clarity
--2. Renames both the column(s) and the table(s) for clarity







































