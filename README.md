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