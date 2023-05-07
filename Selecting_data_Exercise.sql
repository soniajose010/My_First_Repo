USE ORG;
CREATE TABLE Managers(Manager_Id INT PRIMARY KEY,
First_Name VARCHAR(30),
Last_Name VARCHAR(30),
DOB DATE,
Age INT CHECK (Age BETWEEN 24 AND 55),
Last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
Gender VARCHAR(30),
Department VARCHAR(30),
Salary DECIMAL(10,2) NOT NULL
);
DESC Managers;
INSERT INTO Managers(Manager_Id,First_Name,Last_Name,DOB,Age,Last_update,Gender,Department,Salary) VALUES 
(1,'Joshy','PV','1986-08-11',36,NOW(),'Male','IT',28000),
(2,'Albin','Paul','1990-11-15',32,NOW(),'Male','IT',29000),
(3,'Aloshy','JP','1987-08-11',35,NOW(),'Male','IT',25000),
(4,'Surya','PS','1985-08-11',37,NOW(),'Female','HR',28000),
(5,'Aadhi','Joshy','1999-08-11',24,NOW(),'Male','HR',28000),
(6,'Anna','Maria','1998-08-12',25,NOW(),'Female','Admin',25000),
(7,'Sonia','Jose','1990-09-25',32,NOW(),'Female','Accounts',36000),
(8,'Jessy','Jose','1992-08-11',30,NOW(),'Female','Analyst',35000),
(9,'Jose','KT','1994-08-11',28,NOW(),'Male','Admin',28000),
(10,'Tony','Jose','1996-09-11',26,NOW(),'Male','HR',28000);
INSERT INTO Managers VALUES (11,'Aaliya','P','1998-12-10',25,NOW(),'Female','HR',29000);
SELECT * FROM Managers;
SELECT First_Name,Last_name,DOB FROM Managers WHERE Manager_Id=1;
SELECT First_Name,Salary*12 as Annual_Salary FROM Managers;
SELECT * FROM Managers WHERE NOT First_name = "Aaliya";
SELECT * FROM Managers WHERE Department = 'IT' and Salary >25000;
SELECT * FROM Managers WHERE Salary BETWEEN 10000 and 35000;











