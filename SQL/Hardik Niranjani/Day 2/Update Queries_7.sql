--Update Queries(7)

UPDATE employees_1 SET Job_Id= 'SH_CLERK' WHERE Employee_Id=118 AND Department_Id=30 AND NOT Job_Id LIKE 'SH%';

SELECT * FROM employees_1