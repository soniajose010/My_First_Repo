USE org;
INSERT INTO Worker (Worker_id,First_name,Last_name,Department,Joining_date,Salary) VALUES
(6,'Surya','Sree','IT','2020-05-26 09.00.00',13000000.00),
(7,'Siva','K','Manager','2020-05-27 09.00.00',14000000.00),
(8,'Alan','P','Operations','2020-05-28 09.00.00',10000000.00),
(9,'Abi','T','Accounts','2020-05-28 09.00.00',10000000.00),
(10,'Vivi','L','HR','2020-05-29 09.00.00',11000000.00);
-- display details of all employee
SELECT * FROM worker;
-- unique last_name
SELECT DISTINCT Last_name FROM worker;
-- display first_name and salary of 3 months as income
SELECT first_name,salary*3 as INCOME FROM worker;
-- salary >10000
SELECT * FROM worker WHERE salary>10000;
SELECT * FROM worker WHERE not Last_name='K';
SELECT * FROM worker WHERE Salary BETWEEN 10000000 AND 12000000;
SELECT * FROM worker WHERE Salary > 10000000 AND Salary < 12000000;
SELECT * FROM worker WHERE department = 'HR' OR department = 'Admin' OR department = 'IT';
SELECT * FROM worker WHERE department IN ('HR', 'Admin', 'IT');
SELECT * FROM worker WHERE department NOT IN ('HR', 'Admin', 'IT');
-- for commenting one more line use */ in start and */ in end




