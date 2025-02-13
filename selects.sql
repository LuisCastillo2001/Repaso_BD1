USE w3schools;

-- Primer select
SELECT City, PostalCode FROM Customers;
-- Select con distinct 
SELECT DISTINCT City FROM customers;
-- SELECT con where
SELECT City
FROM Customers
WHERE country = 'Mexico';

SELECT customerid AS 'Customer'
FROM Customers
WHERE customerid between 75 AND 80;

SELECT city AS 'prueba'
FROM customers
WHERE city like 'Me%';

SELECT city AS 'prueba2'
FROM customers
WHERE city like 'B___in';

Select customerid AS 'customer'
FROM customers
WHERE CustomerID in (60, 80,90);

-- Orders
Select * From Products
ORDER BY Price;