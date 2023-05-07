create database Mims;
use Mims;
create table doctor (
D_id int primary key auto_increment,
First_name varchar(30) not null,
last_name varchar(30),
age int check(age between 18 and 99),
experience int check(experience > 6),
specialization varchar(20) default 'MD',
contact int unique
);
INSERT INTO doctor(First_name,last_name,age,experience,specialization,contact) VALUES ('Sonam','N',33,7,DEFAULT,7456);
INSERT INTO doctor(First_name,last_name,age,experience,specialization,contact) VALUES ('Arya','A',23,8,'MBBS',7458);
INSERT INTO doctor(First_name,last_name,age,experience,specialization,contact) VALUES ('Sindhu','B',44,9,DEFAULT,7455);
INSERT INTO doctor(First_name,last_name,age,experience,specialization,contact) VALUES ('Ashwin','C',55,10,'BDS',7444);
INSERT INTO doctor(First_name,last_name,age,experience,specialization,contact) VALUES ('Divya','D',35,8,DEFAULT,7459);
SELECT * FROM doctor;