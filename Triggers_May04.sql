CREATE DATABASE Student_db;
USE Student_db;
CREATE TABLE Student(Student_Id INT PRIMARY KEY,F_name VARCHAR(30),L_name VARCHAR(30),Address VARCHAR(30), Marks INT);
INSERT INTO Student(Student_Id,F_name,L_name,Address,Marks) VALUES 
(1,'Arya','Raj','Malappuram',45),
(2,'Vishnu','Mohan','Calicut',43),
(3,'Sruthi','K','Thrissur',46),
(4,'Adhi','P','Idukki',49),
(5,'Pooja','Rajan','Kollam',50);
SELECT * FROM Student;

DELIMITER $$
CREATE TRIGGER Sample_Trigger
BEFORE INSERT ON Student FOR EACH ROW
BEGIN
SET New.Marks = New.Marks+100;
END$$
DELIMITER ;

INSERT INTO Student VALUES(6,'Albin','Paul','Calicut',48);

SHOW TRIGGERS;

CREATE TABLE Final_Marks(Total_Marks INT);

DELIMITER $$
CREATE TRIGGER Calculate_Trigger
AFTER INSERT ON Student FOR EACH ROW
BEGIN
INSERT INTO Final_Marks VALUES(New.Marks);
END$$
DELIMITER ;

SELECT * FROM Final_Marks;

INSERT INTO Student VALUES(7,'Deepthi','Nair','Idukki',47);
INSERT INTO Student VALUES(8,'Deepu','N','Idukki',35);
INSERT INTO Student VALUES(9,'David','K','Idukki',38);

DELIMITER $$
CREATE TRIGGER Before_Update_Trigger
BEFORE UPDATE ON Student FOR EACH ROW
BEGIN
IF New.Marks IS NULL THEN 
 SET New.Marks = 0;
END IF;
END$$
DELIMITER ;

INSERT INTO Student VALUES(10,'Diya','Kurian','Calicut',40);

INSERT INTO Student VALUES(11,'Lucy','Jake','Calicut',null);
UPDATE Student SET Marks = null WHERE Student_Id = 7; -- update trigger works in update function.
UPDATE Student SET Marks = null WHERE Student_Id = 10;

CREATE TABLE Student_log(Student_Id INT,F_name VARCHAR(30),L_name VARCHAR(30),Address VARCHAR(30),Marks INT);

DELIMITER $$
CREATE TRIGGER After_Update_Trigger
AFTER UPDATE ON Student FOR EACH ROW
BEGIN
INSERT INTO Student_log VALUES(old.Student_Id,old.F_name,old.L_name,old.address,old.marks);
END$$
DELIMITER ;

UPDATE STUDENT SET F_name='Nami' WHERE Student_Id=2;
SELECT * FROM Student;
SELECT * FROM Student_log;
UPDATE STUDENT SET F_name='Nidhi' WHERE Student_Id=3;