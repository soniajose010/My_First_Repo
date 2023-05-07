CREATE DATABASE Employee;
USE Employee;
CREATE TABLE Gender
(
  Id INT PRIMARY KEY,
  Name VARCHAR(50)
);
INSERT INTO Gender VALUES(1, 'Male');
INSERT INTO Gender VALUES(2, 'Female');
INSERT INTO Gender VALUES(3, 'Unknown');
CREATE TABLE Employee
(
  Id INT PRIMARY KEY,
  Name VARCHAR(50),
  GenderId VARCHAR(50),
  Salary INT,
  Department VARCHAR(50)
);
INSERT INTO Employee VALUES(1, 'Pranaya', 1, 20000, 'IT');
INSERT INTO Employee VALUES(2, 'Priyanka', 2, 30000, 'HR');
INSERT INTO Employee VALUES(3, 'Anurag', 1, 40000, 'IT');
INSERT INTO Employee VALUES(4, 'Preety', 2, 25000, 'HR');
INSERT INTO Employee VALUES(5, 'Sambit', 3, 35000, 'INFRA');
INSERT INTO Employee VALUES(6, 'Hina', 2, 45000, 'HR');
SELECT * FROM Gender;
SELECT * FROM Employee;

CREATE VIEW Employee_view1 AS SELECT * FROM Employee;
SELECT * FROM Employee_view1;

INSERT INTO Employee_view1 VALUES (7,'Arya',3,30000,'Accounts');

UPDATE Employee_view1 SET NAME = 'Heena', GenderId=3 WHERE Id = 6;

DELETE FROM Employee_view1 WHERE Id=5;

-- Complex View - unable to update

CREATE VIEW vwEmployees
AS 
SELECT emp.Id, emp.Name, emp.Salary, gen.Name AS Gender
FROM Employee emp
INNER JOIN Gender gen
on emp.GenderId = gen.ID;
SELECT * FROM vwEmployees;
SELECT * FROM Employee;

DROP VIEW vwEmployees;