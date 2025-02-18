USE w3schools;

UPDATE customers
SET country = 'Guatemala'
Where customerid = 1; 

UPDATE customers
SET country = 'Guatemala', city = 'Mixco'
WHERE customerid = 2;

UPDATE customers
SET customerName = 'Luis JR', city = 'Mallorca', contactName = 'JR'
WHERE customerid = 3;


SELECT CONCAT(address,' ,',city,' ,', address) AS ADRESS FROM customers
WHERE customerid between 0 AND 3;

SELECT address, city, customerid FROM customers
ORDER BY customerid DESC;



SELECT * FROM customers
WHERE customerid > 80
LIMIT 8;

SELECT MIN(PRICE), categoryid  FROM PRODUCTS GROUP BY categoryid;

SELECT COUNT(ProductID) 
FROM PRODUCTS
WHERE PRICE > 20;

SELECT COUNT(*) AS prueba, CategoryID
FROM Products
GROUP BY CategoryID;

SELECT ROUND(PRICE * 0.12, 2) FROM PRODUCTS;

SELECT ROUND(AVG(PRICE), 2) AS Total_redondeado FROM PRODUCTS;

SELECT PRODUCTNAME, MAX(PRICE) AS MAXIMO 
FROM PRODUCTS 
GROUP BY PRODUCTNAME 
LIMIT 5;


SELECT * FROM PRODUCTS;