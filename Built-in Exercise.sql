CREATE DATABASE test2;
USE test2;
CREATE TABLE Country (Id INT,Country_name VARCHAR(30),Population INT,Area INT);
DESC Country;
INSERT INTO Country (Id,Country_name,Population,Area) VALUES 
(1,'China',1439323776,9388211),
(2,'India',1380004385,12973190),
(3,'United States',331002651,1937734),
(4,'Indonesia',273523615,1811570),
(5,'Pakistan',220892340,770880),
(6,'Brazil',212559417,8358140),
(7,'Nigeria',206139589,910770),
(8,'Bangladesh',164689383,130170),
(9,'Russia',145934462,16376870),
(10,'Mexico',128932753,1943950);
SELECT * FROM Country;
CREATE TABLE Persons (Id INT,Fname VARCHAR(30),Lname VARCHAR(30),Population INT,Rating INT,Country_Id VARCHAR(30),Country_name VARCHAR(30));
INSERT INTO Persons(Id,Fname,Lname,Population,Rating,Country_Id,Country_name) VALUES
(1,'Stefen','Mong',1439323776,1,'CHN','China'),
(2,'Sonia','Jose',1380004385,2,'IND','India'),
(3,'Michael','Anto',331002651,3,'US','United States'),
(4,'Mathew','Jacob',273523615,4,'IDN','Indonesia'),
(5,'Muhammed','Aslam',220892340,5,'PAK','Pakistan'),
(6,'Chris','Jake',212559417,6,'BRA','Brazil'),
(7,'Christopher','Sam',206139589,7,'NGA','Nigeria'),
(8,'Ashraf','Rahman',164689383,8,'BGD','Bangladesh'),
(9,'Ani','Rumerian',145934462,9,'RUS','Russia'),
(10,'Viviana','Fernanda',128932753,10,'MEX','Mexico');
SELECT * FROM Persons;
ALTER TABLE Persons ADD COLUMN DOB DATE;
UPDATE Persons SET DOB = '1991-06-25' WHERE Id=1;
UPDATE Persons SET DOB = '1990-05-24' WHERE Id=2;
UPDATE Persons SET DOB = '1992-07-15' WHERE Id=3;
UPDATE Persons SET DOB = '1993-04-04' WHERE Id=4;
UPDATE Persons SET DOB = '1989-03-09' WHERE Id=5;
UPDATE Persons SET DOB = '1994-08-23' WHERE Id=6;
UPDATE Persons SET DOB = '1995-09-30' WHERE Id=7;
UPDATE Persons SET DOB = '1988-07-21' WHERE Id=8;
UPDATE Persons SET DOB = '1992-03-13' WHERE Id=9;
UPDATE Persons SET DOB = '1990-05-25' WHERE Id=10;


