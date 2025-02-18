use w3schools;

SELECT * FROM CLIENTE;
SELECT * FROM PEDIDO;

INSERT INTO cliente (id_cliente, nombre) VALUES 
(2, 'María Gómez'),    -- Tiene pedidos
(3, 'Carlos Rodríguez'),-- Tiene pedidos
(4, 'Ana Martínez'),   -- NO tiene pedidos (LEFT JOIN)
(5, 'Luis Fernández'), -- Tiene pedidos
(6, 'Elena Castro'),   -- NO tiene pedidos (LEFT JOIN)
(7, 'Pedro Rojas');    -- NO tiene pedidos (LEFT JOIN)

INSERT INTO pedido (id_pedido, fecha, id_cliente) VALUES 
(101, '2024-02-01', 1),  -- Juan Pérez
(102, '2024-02-05', 2),  -- María Gómez
(103, '2024-02-10', 1),  -- Juan Pérez
(104, '2024-02-15', 3),  -- Carlos Rodríguez
(105, '2024-02-20', 5),  -- Luis Fernández
(106, '2024-02-25', 2),  -- María Gómez
(107, '2024-03-01', 5),  -- Luis Fernández
(108, '2024-03-05', NULL); -- Pedido sin cliente (RIGHT JOIN)

-- INNER JOIN
SELECT p.id_pedido, c.id_cliente
FROM cliente c
INNER JOIN pedido p ON p.id_cliente = c.id_cliente;

-- LEFT JOIN
SELECT c.id_cliente ,p.id_pedido
FROM cliente c
LEFT JOIN pedido p ON c.id_cliente = p.id_cliente;

-- RIGHT JOIN
SELECT c.id_cliente, p.id_pedido
FROM cliente c
RIGHT JOIN pedido p ON c.id_cliente = p.id_cliente;

-- SELF JOIN 
SELECT p1.id_cliente, p2.id_pedido
FROM pedido p1, pedido p2;










