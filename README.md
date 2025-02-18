# Repaso_BD1

En este repositorio se repasaran los conceptos básicos de sql

# Select

Estructura básica del select

```sql
SELECT column1, column2, ...
FROM table_name;
```

Nota: También se puede usar el '*' para consultar todas los datos de la tabla

## Select con where

El where funciona como condicionante de los datos que se desean extraer

Estructura básica del select

```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

Donde la condición puede ser cualquiera de las siguientes

| Operator | Description                                                                     |     |
| -------- | ------------------------------------------------------------------------------- | --- |
| =        | Equal                                                                           |     |
| >        | Greater than                                                                    |     |
| <        | Less than                                                                       |     |
| >=       | Greater than or equal                                                           |     |
| <=       | Less than or equal                                                              |     |
| <>       | Not equal. **Note:** In some versions of SQL this operator may be written as != |     |
| BETWEEN  | Between a certain range                                                         |     |
| LIKE     | Search for a pattern                                                            |     |
| IN       | To specify multiple possible values for a column                                |     |

## Select con ORDER BY

Esto nos sirve para ordenar diferentes datos

```sql
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;
```

Donde asc es de menor a mayor, y desc de mayor a menor, nota también se puede ordenar de forma alfabetica.

Se pueden combinar varias columnas, tomará el orden en que se introduzcan las columnas, por ejemplo si selecciono país y nombre, en ese orden, ordenará primero país, y si hay algún país repetido tomará como referencia el nombre.

## Select con AND OR y NOT

Igual funciona como condicionante

```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND|OR|NOT condition2 AND|OR|NOT condition3 ...;
```

# Clausula Insert

Estructura básica de un insert

```sql
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
```

También hay otra forma en la cual no se necesitan añadir los nombres de las columnas, si se insertará en todas las columnas, no obstante se debe poner en el mismo orden de las columnas

```sql
INSERT INTO table_name
VALUES (value1, value2, value3, ...);
```

# Clausula Update

Estructura básica de un update

```sql
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
```

Esto servirá para actualizar registros de la tabla

# Clausula delete

Estructura básica de un delete

```sql
DELETE FROM table_name WHERE condition;
```

Esto nos servirá para poder eliminar la fila de una tabla, ojo el where siempre es importante para realizar esta clausula.

Para eliminar una tabla sería lo siguiente:

```sql
DROP TABLE table_name
```

# Select con limit

La estructura básica es la siguiente:

```sql
SELECT * FROM customers
WHERE customerid > 80
LIMIT 8;
```

Esto nos permite limitar el número de filas que queremos que nos devuelva la consulta.

# Joins

Estructura básica de un join

```sql
SELECT <select_list>
FROM TableA A
LEFT|INNER|RIGHT|INNER JOIN TableB B
ON A.Key = B.Key
```

Estos son los joins más importantes

![Todos los tipos de JOIN en SQL – Guía de referencia rápida](https://ingenieriadesoftware.es/wp-content/uploads/2018/07/sqljoin.jpeg)

# Self join

Estructura básica de un self join

```sql
SELECT column_name(s)
FROM table1 T1, table1 T2
WHERE condition;
```

Esto nos servirá para poder comparar las mismas tablas