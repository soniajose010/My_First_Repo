CREATE DATABASE testbd;
USE testbd;
CREATE TABLE Employee(Emp_Id INT PRIMARY KEY, Fname VARCHAR(30), Lname VARCHAR(30), Contact INT(10));
DESC Employee;
INSERT INTO Employee VALUES(1,'Sonia','Jose',123);
SELECT * FROM Employee;
