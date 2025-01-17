/*
Write a SQL query to delete all duplicate email entries in a table named Person, keeping 
only unique emails based on its smallest Id.


+----+------------------+
| Id | Email            |
+----+------------------+
| 1  | john@example.com |
| 2  | bob@example.com  |
| 3  | john@example.com |
+----+------------------+
Id is the primary key column for this table.

+----+------------------+
| Id | Email            |
+----+------------------+
| 1  | john@example.com |
| 2  | bob@example.com  |
+----+------------------+
*/

delete p1 
from Person p1, Person p2
where p1.Email = p2.Email and p1.Id > p2.Id

