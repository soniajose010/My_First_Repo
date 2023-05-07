CREATE DATABASE Sales;
USE Sales;
CREATE TABLE Orders(Order_id INT PRIMARY KEY AUTO_INCREMENT,
Customer_name VARCHAR (30) UNIQUE,
Product_name VARCHAR (30) NOT NULL,
Ordered_item VARCHAR (30));
DESC Orders;
ALTER TABLE Orders ADD COLUMN Order_quantity INT;
RENAME TABLE Orders TO Sales_orders;
INSERT INTO Sales_orders(Customer_name,Product_name,Ordered_item,Order_quantity) VALUES ('Athira','Vu','Television',1);
INSERT INTO Sales_orders(Customer_name,Product_name,Ordered_item,Order_quantity) VALUES ('Albin','Realme','Phone',3);
INSERT INTO Sales_orders(Customer_name,Product_name,Ordered_item,Order_quantity) VALUES ('Divin','Redmi','Headset',2);
INSERT INTO Sales_orders(Customer_name,Product_name,Ordered_item,Order_quantity) VALUES ('Girish','Vu','Television',1);
INSERT INTO Sales_orders(Customer_name,Product_name,Ordered_item,Order_quantity) VALUES ('Nithya','Realme','Phone',5);
INSERT INTO Sales_orders(Customer_name,Product_name,Ordered_item,Order_quantity) VALUES ('Naveen','Vu','Television',2);
INSERT INTO Sales_orders(Customer_name,Product_name,Ordered_item,Order_quantity) VALUES ('Suma','Redmi','Headset',10);
INSERT INTO Sales_orders(Customer_name,Product_name,Ordered_item,Order_quantity) VALUES ('Sasi','Samsung','Headset',3);
INSERT INTO Sales_orders(Customer_name,Product_name,Ordered_item,Order_quantity) VALUES ('Pavi','Vu','Television',6);
INSERT INTO Sales_orders(Customer_name,Product_name,Ordered_item,Order_quantity) VALUES ('Ashok','Samsung','Headset',2);
SELECT * FROM Sales_orders;
SELECT Customer_name,Product_name FROM Sales_orders;
UPDATE Sales_orders SET Customer_name = 'Amina' WHERE Order_id = 4;
UPDATE Sales_orders SET Product_name = 'Motorola' WHERE Order_id = 4;
DROP TABLE Sales_orders;

