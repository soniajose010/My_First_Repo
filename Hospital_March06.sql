CREATE DATABASE Hospital;
USE Hospital;
CREATE TABLE Patients(P_id INT PRIMARY KEY AUTO_INCREMENT,
Fname VARCHAR (30) NOT NULL,
Lname VARCHAR (30),
Age INT CHECK(Age BETWEEN 18 AND 99),
Disease VARCHAR (30) DEFAULT 'Fever',
Contact INT UNIQUE);
DESC Patients;
INSERT INTO Patients VALUES(1,'ABC',24,'Cough',254);
INSERT INTO Patients(Fname,Lname,Age,Disease,Contact) VALUES('Sonia','Jose',23,DEFAULT,547);
INSERT INTO Patients(Fname,Lname,Age,Disease,Contact) VALUES('Vidya','Jose',55,DEFAULT,547);
SELECT * FROM Patients;