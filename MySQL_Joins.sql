CREATE DATABASE test2;
USE test2;
CREATE TABLE Student(Roll_no INT, Name VARCHAR(30), Address VARCHAR(40), Phone VARCHAR(10), Age INT);
INSERT INTO Student VALUES(1,"Harsh","Delhi","5264897526",29);
INSERT INTO Student VALUES(2,"Arya","Kerala","6259713548",23);
INSERT INTO Student VALUES(3,"Vishnu","Bihar","5264897526",24);
INSERT INTO Student VALUES(4,"Adeeb","TN","5264897526",25);
INSERT INTO Student VALUES(5,"Shadwal","Karnataka","5264897526",26);
INSERT INTO Student VALUES(6,"Hari","Goa","5264897526",27);
INSERT INTO Student VALUES(7,"Balu","Kolkata","5264897526",28);
INSERT INTO Student VALUES(8,"Babu","Delhi","5264897526",29);
INSERT INTO Student VALUES(9,"Venu","Delhi","5264897526",30);
INSERT INTO Student VALUES(10,"Sasi","Hyderabad","5264897526",38);
SELECT * FROM Student;
CREATE TABLE StudentCourse(Course_Id INT, Roll_no INT);
INSERT INTO StudentCourse VALUES(1, 1);
INSERT INTO StudentCourse VALUES(2, 2);
INSERT INTO StudentCourse VALUES(2, 3);
INSERT INTO StudentCourse VALUES(1, 5);
INSERT INTO StudentCourse VALUES(4, 9);
INSERT INTO StudentCourse VALUES(5, 10);
INSERT INTO StudentCourse VALUES(4, 11);
INSERT INTO StudentCourse VALUES(3, 12);
INSERT INTO StudentCourse VALUES(5, 8);
INSERT INTO StudentCourse VALUES(6, 7);
SELECT * FROM StudentCourse;
SELECT Student.name, Student.Age,StudentCourse.course_Id, StudentCourse.roll_no FROM Student inner join StudentCourse on Student.Roll_no=StudentCourse.Roll_no;
SELECT Student.name, Student.Age,StudentCourse.course_Id, StudentCourse.roll_no FROM Student left join StudentCourse on Student.Roll_no=StudentCourse.Roll_no;
SELECT Student.name, Student.Age,StudentCourse.course_Id, StudentCourse.roll_no FROM Student right join StudentCourse on Student.Roll_no=StudentCourse.Roll_no;
SELECT Student.name, Student.Age,StudentCourse.course_Id, StudentCourse.roll_no FROM Student full join StudentCourse on Student.Roll_no=StudentCourse.Roll_no; -- will show error, full join will not work in MySQL. So union function will be used.
SELECT Student.name, Student.Age,StudentCourse.course_Id, StudentCourse.roll_no FROM Student left join StudentCourse on Student.Roll_no=StudentCourse.Roll_no
union
SELECT Student.name, Student.Age,StudentCourse.course_Id, StudentCourse.roll_no FROM Student right join StudentCourse on Student.Roll_no=StudentCourse.Roll_no;
SELECT Student.name, Student.Age,StudentCourse.course_Id, StudentCourse.roll_no FROM Student cross join StudentCourse; -- in case of cross join no need of "on clause".
