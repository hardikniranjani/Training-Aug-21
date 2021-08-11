--Basic Select Queries(13)

SELECT MAX(Salary) "2nd Max Salary" FROM employees_1 WHERE Salary NOT IN(SELECT MAX(Salary) FROM employees_1);