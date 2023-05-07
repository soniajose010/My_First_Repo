USE ORG;
SELECT * FROM Worker;
CREATE TABLE Bonus (
WORKER_REF_ID INT,
BONUS_AMOUNT INT(10),
BONUS_DATE DATETIME,
FOREIGN KEY (WORKER_REF_ID)REFERENCES
 Worker(WORKER_ID) ON DELETE CASCADE);
INSERT INTO Bonus(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
(001, 5000, '16-02-20'),
(002, 3000, '16-06-11'),
(003, 4000, '16-02-20'),
(001, 4500, '16-02-20'),
(002, 3500, '16-06-11');
SELECT * FROM Bonus;
CREATE TABLE Title (
WORKER_REF_ID INT,
WORKER_TITLE CHAR(25),
JOINED_ON DATETIME,
FOREIGN KEY (WORKER_REF_ID)REFERENCES
 Worker(WORKER_ID)ON DELETE CASCADE);
 INSERT INTO Title(WORKER_REF_ID, WORKER_TITLE, JOINED_ON) VALUES
 (001, 'Manager', '2016-02-20 00:00:00'),
 (002, 'Executive', '2016-06-11 00:00:00'),
 (008, 'Executive', '2016-06-11 00:00:00'),
 (005, 'Manager', '2016-06-11 00:00:00'),
 (004, 'Asst. Manager', '2016-06-11 00:00:00'),
 (007, 'Executive', '2016-06-11 00:00:00'),
 (006, 'Lead', '2016-06-11 00:00:00'),
 (003, 'Lead', '2016-06-11 00:00:00');
 SELECT * FROM Title;
 -- 1)list the details of all employees who's salary is not between 10000 and 35000
 SELECT Worker_id,First_name,Last_name,Department,Joining_date,Salary FROM Worker WHERE Salary NOT BETWEEN 12000000.00 AND 35000000.00;
 -- 2) List of all employees whose name starts with s.
 SELECT First_name FROM Worker WHERE First_name LIKE 'a%';
 -- 3)List all employees whose firstname starts with with a and ends with m
 SELECT First_name FROM Worker WHERE First_name LIKE 'a%a';
 -- 4) Find number of staff working in each department and sum of their salaries from worker table.
 SELECT Department, COUNT(*), SUM(Salary) FROM Worker GROUP BY Department;
 -- 5) Find number of workers working in each department and sum of their salaries greater than 45000
 SELECT Department, COUNT(*), SUM(Salary) FROM Worker GROUP BY Department HAVING SUM(Salary) > 15000000;
 -- 6) List the workers whose salary is greater than the avg salary of all workers.
 SELECT First_name FROM Worker WHERE Salary > (
 SELECT AVG(Salary) FROM Worker
);
 -- 7) Find the second largest salary from worker table.
 SELECT Salary FROM Worker ORDER BY Salary DESC;
 SELECT Salary FROM Worker ORDER BY Salary DESC LIMIT 1;
 SELECT Salary FROM Worker ORDER BY Salary DESC LIMIT 1 OFFSET 1;
 SELECT First_name, Salary FROM Worker WHERE Salary > (
 SELECT AVG(Salary) FROM Worker
 );
 SELECT MAX(Salary) FROM Worker WHERE Salary NOT IN (
     SELECT MAX(Salary) FROM Worker
     );
 -- 8) Write an SQL query to fetch departments along with the total salaries paid for each of them.
 SELECT Department, SUM(Salary) FROM Worker GROUP BY Department;
 -- 9) select names of all workers containing 'a' as the second character.
 SELECT First_name FROM Worker WHERE first_name LIKE '_a%';
 