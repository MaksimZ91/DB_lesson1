CREATE DATABASE IF NOT EXISTS mydb;
USE mydb;
DROP TABLE IF EXISTS phone;

 /*
 1. Создайте таблицу с мобильными телефонами, используя графический интерфейс. Заполните БД данными. Добавьте скриншот на платформу в качестве ответа на ДЗ
 */
 
CREATE TABLE IF NOT EXISTS phone(
id INT PRIMARY KEY AUTO_INCREMENT,
ProductName VARCHAR(45),
Manufacturer VARCHAR(45),
ProductCount INT,
Price INT
);

INSERT phone (ProductName,Manufacturer,ProductCount,Price)
VALUES
	("IPhone X", "Apple", 3, 76000),
    ("IPhone 8", "Apple", 2, 51000),
    ("Galaxy S9", "Samsung", 2, 56000),
    ("Galaxy S8", "Samsung", 1, 41000),
    ("P20 Pro", "Huawei", 5, 36000);
    
 /*
 2. Выведите название, производителя и цену для товаров, количество которых превышает 2 (SQL - файл, скриншот, либо сам код)
 */
    
SELECT productname,manufacturer,price
FROM phone
WHERE productCount > 2;

/*3. Выведите весь ассортимент товаров марки “Samsung” */

SELECT productname,manufacturer,price
FROM phone
WHERE Manufacturer = "Samsung";

/*4. 	Выведите информацию о телефонах, где суммарный чек больше 100 000 и меньше 145 000** */
SELECT *
FROM phone
WHERE 100000 < productCount * price AND productCount * price < 145000;

/*4.*** С помощью регулярных выражений найти (можно использовать операторы “LIKE”, “RLIKE” для 4.3 ):
4.1. Товары, в которых есть упоминание "Iphone"*/

SELECT *
FROM phone
WHERE productname REGEXP 'IPhone';

-- 4.2. "Galaxy"
SELECT *
FROM phone
WHERE productname LIKE 'Gala%';


-- 4.3.  Товары, в которых есть ЦИФРЫ
SELECT *
FROM phone
WHERE productname RLIKE "[0-9]";


-- 4.4.  Товары, в которых есть ЦИФРА "8" 
SELECT *
FROM phone
WHERE productname REGEXP "[8]";


   
    
    


