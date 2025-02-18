USE w3schools;

INSERT INTO customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES('Luis Castillo', 'Luis', 'Zona 18', 'Guatemala', '0900', 'Guatemala');

INSERT INTO customers (CustomerName)
VALUES('Jessica');

INSERT INTO customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Jessica Morales', 'Jessi', 'San angel', 'Guatemala', '1990', 'Guatemala');

INSERT INTO customers
VALUES ('Antonio Castillo','Ant','Zona 12', 'Guatemala', '5221', 'Guatemala');


SELECT * FROM CUSTOMERS
WHERE customername like 'luis%';