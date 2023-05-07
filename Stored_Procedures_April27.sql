CREATE DATABASE user_db;
USE user_db;
CREATE TABLE User(Id INT PRIMARY KEY,Name VARCHAR(30),Email VARCHAR(30),Age INT);
INSERT INTO User(Id,Name,Email,Age) VALUES
(1,'Athira','athira@gmail.com',26),
(2,'Ragi','Vaishna@gmail.com',25),
(3,'Arjun','arjun@gmail.com',26),
(4,'Vinod','vinod@gmail.com',26),
(5,'Sasi','sasi@gmail.com',27),
(6,'Sruthi','sruthi@gmail.com',29),
(7,'Arya','arya@gmail.com',30);

DELIMITER $$
CREATE PROCEDURE get_user(IN user_Id INT)
BEGIN
   SELECT * FROM user WHERE id = user_id;
END $$
DELIMITER ;

CALL get_user(1);

DELIMITER $$
CREATE PROCEDURE get_user_age(IN user_age INT)
BEGIN
   SELECT * FROM user WHERE age = user_age;
END $$
DELIMITER ;

CALL get_user_age(26);

DELIMITER $$
CREATE PROCEDURE add_user(IN user_id INT, user_name VARCHAR(30), IN user_email VARCHAR(30), IN user_age INT)
BEGIN
  INSERT INTO User(Id,Name,Email,age) VALUES(user_id, user_name, user_email, user_age);
END $$
DELIMITER ;
CALL add_user(8,'Ajith','ajith@gmail.com',28);
SELECT * FROM User;

DELIMITER $$
CREATE PROCEDURE update_user(IN user_id INT, user_name VARCHAR(30), IN user_email VARCHAR(30), IN user_age INT)
BEGIN
  UPDATE user SET Name = user_name, email = user_email, Age = user_age WHERE id = user_id;
END $$
DELIMITER ;

CALL update_user(1,'Praveen','praveen@gmail.com',28);

DELIMITER $$
CREATE PROCEDURE delete_user(IN user_id INT)
BEGIN
  DELETE FROM user WHERE id = user_id;
END $$
DELIMITER ;
CALL delete_user(8);

DELIMITER $$
CREATE PROCEDURE get_user_count(OUT user_count INT)
BEGIN
  SELECT count(*) INTO user_count FROM user;
END $$
DELIMITER ;

CALL get_user_count(@user_count);
SELECT @user_count;


