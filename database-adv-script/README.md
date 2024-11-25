# SQL Joins

SQL joins are used to combine rows from two or more tables based on a related column between them. There are several types of joins in SQL:

## Types of Joins

### 1. INNER JOIN
The `INNER JOIN` keyword selects records that have matching values in both tables.

```sql
SELECT columns
FROM table1
INNER JOIN table2
ON table1.common_column = table2.common_column;
```

### 2. LEFT JOIN (or LEFT OUTER JOIN)
The `LEFT JOIN` keyword returns all records from the left table (table1), and the matched records from the right table (table2). The result is `NULL` from the right side, if there is no match.

```sql
SELECT columns
FROM table1
LEFT JOIN table2
ON table1.common_column = table2.common_column;
```

### 3. RIGHT JOIN (or RIGHT OUTER JOIN)
The `RIGHT JOIN` keyword returns all records from the right table (table2), and the matched records from the left table (table1). The result is `NULL` from the left side, when there is no match.

```sql
SELECT columns
FROM table1
RIGHT JOIN table2
ON table1.common_column = table2.common_column;
```

### 4. FULL JOIN (or FULL OUTER JOIN)
The `FULL JOIN` keyword returns all records when there is a match in either left (table1) or right (table2) table records. It returns `NULL` for unmatched rows from both tables.

```sql
SELECT columns
FROM table1
FULL JOIN table2
ON table1.common_column = table2.common_column;
```

### 5. CROSS JOIN
The `CROSS JOIN` keyword returns the Cartesian product of the two tables. This means that it will return all possible combinations of rows from the tables.

```sql
SELECT columns
FROM table1
CROSS JOIN table2;
```

### 6. SELF JOIN
A `SELF JOIN` is a regular join, but the table is joined with itself.

```sql
SELECT a.columns, b.columns
FROM table a, table b
WHERE condition;
```

## Examples

### Example of INNER JOIN
```sql
SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.id;
```

### Example of LEFT JOIN
```sql
SELECT employees.name, departments.department_name
FROM employees
LEFT JOIN departments
ON employees.department_id = departments.id;
```

### Example of RIGHT JOIN
```sql
SELECT employees.name, departments.department_name
FROM employees
RIGHT JOIN departments
ON employees.department_id = departments.id;
```

### Example of FULL JOIN
```sql
SELECT employees.name, departments.department_name
FROM employees
FULL JOIN departments
ON employees.department_id = departments.id;
```

### Example of CROSS JOIN
```sql
SELECT employees.name, departments.department_name
FROM employees
CROSS JOIN departments;
```

### Example of SELF JOIN
```sql
SELECT a.name AS EmployeeName, b.name AS ManagerName
FROM employees a, employees b
WHERE a.manager_id = b.id;
```

## Conclusion
SQL joins are powerful tools for querying data from multiple tables. Understanding the different types of joins and how to use them can greatly enhance your ability to work with relational databases.