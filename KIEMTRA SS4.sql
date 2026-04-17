CREATE DATABASE ShopManager;
USE ShopManager;
CREATE TABLE Categories(
 category_id INT PRIMARY KEY,
 category_name 	VARCHAR(200)
);
CREATE TABLE Products(
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
price DECIMAL(10,2),
stock INT ,
category_id INT ,
FOREIGN KEY(category_id) REFERENCES Categories(category_id)
);
INSERT INTO Categories
VALUES
(1,'Điện tử'),
(2,'Thời trang');

INSERT INTO Products
VALUES
(1,'iPhone 15','25000000','10','1'),
(2,'Samsung S23','20000000','5','1'),
(3,'Áo sơ mi nam','500000','50','2'),
(4,'Giày thể thao','1200000','20','2');

UPDATE Products
SET price=26000000
WHERE product_id=1 AND category_id=1;

UPDATE Products
SET stock=stock+10
WHERE category_id=1;

DELETE FROM Products
WHERE product_id=4;

DELETE FROM Products
WHERE price<1000000;

SELECT *FROM Products;
SELECT *FROM Products
WHERE stock>15;

SELECT FROM Products
WHERE price>=1000000 AND price <=25000000;

SELECT FROM Products
WHERE stock>0 AND product_id!=1;

SELECT FROM Products
WHERE stock>500000 AND category_id!=1;
