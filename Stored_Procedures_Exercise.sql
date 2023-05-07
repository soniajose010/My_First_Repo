CREATE DATABASE ORG;
USE ORG;
CREATE TABLE Worker(
Id INT PRIMARY KEY,
Name VARCHAR(30),
Department VARCHAR(30),
Salary DECIMAL(10,2));
INSERT INTO Worker (Id,Name,Department,Salary) VALUES
(1,'Aravind','Sales',12000), (2,'Arya','HR',15000),(3,'Albin','Admin',18000),(4,'Bibin','Admin',20000),(5,'Ashly','HR',25000),
(6,'Babu','Sales',28000),(7,'Latha','IT',16000),(8,'Ravi','HR',19000),(9,'Sathi','IT',30000),(10,'Tony','Manager',50000);
SELECT * FROM Worker;
/* 1. Create  a  stored  procedure  that  takes  in  IN  parameters   for  all  the  columns  in  the 
Worker table and adds a new record to the table and then invoke the procedure call. */
DELIMITER $$
CREATE PROCEDURE get_Worker(IN Worker_Id INT)
BEGIN
   SELECT * FROM Worker WHERE id = Worker_id;
END $$
DELIMITER ;
CALL get_Worker(4);

DELIMITER $$
CREATE PROCEDURE add_worker(IN Worker_id INT, IN Worker_Name VARCHAR(30), IN Worker_Department VARCHAR(30), IN Worker_Salary Decimal)
BEGIN
  INSERT INTO Worker(Id,Name,Department,Salary) VALUES(Worker_Id, Worker_Name,Worker_Department,Worker_Salary);
END $$
DELIMITER ;
/* used to delete the added procedures, DROP PROCEDURE add_Worker; */
CALL add_Worker(11,'Baiju','Accounts',28000);
SELECT * FROM Worker;

/* 2. Write  stored  procedure  takes  in  an  IN  parameter  for  WORKER_ID  and  an  OUT 
parameter for  SALARY. It should  retrieve  the salary  of the  worker  with  the  given  ID 
and returns it in the p_salary parameter. Then make the procedure call. */

DELIMITER $$
CREATE PROCEDURE get_Salary (IN Worker_Id INT, OUT Worker_Salary Decimal)
BEGIN
   SELECT Salary INTO Worker_Salary FROM Worker WHERE Id = Worker_id;
END $$
DELIMITER ;
CALL get_Salary(9,@Salary);
SELECT @Salary;

/* 3. Create a stored procedure takes in IN parameters for WORKER_ID and 
DEPARTMENT.  It  should  update  the  department  of  the  worker  with  the  given  ID. 
Then make procedure call. */

DELIMITER $$
CREATE PROCEDURE UPDATE_Department (IN Worker_Id INT, IN Worker_Department VARCHAR(30))
BEGIN
   UPDATE Worker SET Department = Worker_Department WHERE Id = Worker_id;
END $$
DELIMITER ;
CALL UPDATE_Department(8,'IT');
SELECT * FROM Worker;

/* 4. Write a stored procedure takes in an IN parameter for DEPARTMENT and  
an OUT parameter for p_workerCount. It should retrieve the number of workers in the 
given  department  and  returns  it  in  the  p_workerCount  parameter.  Make  procedure 
call. */

DELIMITER $$
CREATE PROCEDURE get_Worker_count (IN Worker_Department VARCHAR(30), OUT Worker_count INT)
BEGIN
  SELECT Count(*) INTO Worker_count FROM Worker WHERE Department = Worker_Department;
  END $$
  DELIMITER $$
  
  CALL get_Worker_count('HR',@Worker_count);
  SELECT @Worker_count;

/* 5. Write a stored procedure takes in an IN parameter for DEPARTMENT and an OUT 
parameter for p_avgSalary. It should retrieve the average salary of all workers  
in the given department and returns it in the p_avgSalary parameter and call the 
procedure.*/

