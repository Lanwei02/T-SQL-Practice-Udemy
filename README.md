# T-SQL-Practice-Udemy
## Note:
* 1. When I first tried to install the AdventureWorks2012 database to SQL Server 2012, I got the Error 5133. It is because that the SQL Server sometimes cannot find the right path of the file. To solve the problem, I manually set the file path by clicking the '...' icon in the Current File Path column.
<img width="350" height="350" src="https://github.com/Lanwei02/T-SQL-Practice-Udemy/blob/master/attach%20database.jpg">

* 2. The difference between TURNCATE and DELECT(This is the 6th question in the quiz 2):
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
