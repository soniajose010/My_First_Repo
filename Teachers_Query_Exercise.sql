CREATE DATABASE Task3;
USE Task3;
CREATE TABLE Teachers(Id INT PRIMARY KEY,
First_name VARCHAR(30) NOT NULL,
Last_name VARCHAR(30) NOT NULL,
School VARCHAR(30),
Hire_date DATE,
Salary DECIMAL,
Age INT CHECK (Age BETWEEN 24 AND 55));
DESC Teachers;
INSERT INTO Teachers(Id,First_name,Last_name,School,Hire_date,Salary,Age) VALUES 
(1,'Athira','VP','Nazareth','2020-05-25',250000,26),
(2,'Amal','Jacob','Nazareth','2021-06-26',280000,25),
(3,'Balu','Varghese','Nazareth','2020-07-18',260000,28),
(4,'Dasan','K','Nazareth','2020-03-10',280000,27),
(5,'Divya','PP','Nazareth','2019-04-15',290000,29),
(6,'Hasan','M','Nazareth','2022-03-10',230000,25),
(7,'Dasan','K','Nazareth','2015-05-10',290000,30),
(8,'Dasan','K','Nazareth','2012-03-13',300000,32),
(9,'Dasan','K','Nazareth','1990-05-10',400000,54),
(10,'Dasan','K','Nazareth','2000-08-12',350000,44);
SELECT * FROM Teachers;
UPDATE Teachers SET First_name='Monika',Last_name='T',School='Silver Hills' WHERE Id=7;
UPDATE Teachers SET First_name='Philip',Last_name='RK',School='MGMHSS' WHERE Id=8;
UPDATE Teachers SET First_name='Raji',Last_name='NN',School='Nava Jyoti' WHERE Id=9;
UPDATE Teachers SET First_name='Ganga',Last_name='Nath',School='Alphonsa HSS' WHERE Id=10;
-- Write an SQL query to fetch School using alias nama : School_name.
SELECT School as School_name FROM Teachers;
-- Write an SQL query to fetch First_name in uppercase.
SELECT UPPER(First_name) FROM Teachers;
-- Write an SQL query to fetch unique values of School.
SELECT DISTINCT School FROM Teachers;
