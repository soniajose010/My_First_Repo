CREATE DATABASE ORG;
USE ORG;
CREATE TABLE Worker(
Worker_id INT PRIMARY KEY,
First_name VARCHAR(30),
Last_name VARCHAR(30),
Department VARCHAR(30),
Joining_date DATETIME,
Salary DECIMAL(10,2));
INSERT INTO Worker (Worker_id,First_name,Last_name,Department,Joining_date,Salary) VALUES
(1,'Aravind','Raj','Sales','2020-05-25 09.00.00',12000000.00),
(2,'Arya','P','HR','2020-05-25 09.00.00',12000000.00);
INSERT INTO Worker (Worker_id,First_name,Last_name,Department,Joining_date,Salary) VALUES
(3,'Albin','K','Admin','2020-05-25 09.00.00',12000000.00),
(4,'Bibin','K','Admin','2020-05-25 09.00.00',12000000.00);
INSERT INTO Worker VALUES(5,'Asha','k','HR',sysdate(),12000000.00);
SELECT * FROM Worker;
SELECT First_name FROM Worker;
SELECT first_name as WORKER_NAME from Worker;
SELECT UPPER(first_name) FROM Worker;
SELECT DISTINCT Department FROM Worker;
