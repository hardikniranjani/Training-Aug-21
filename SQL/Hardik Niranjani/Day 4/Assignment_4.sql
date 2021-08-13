
--(4)--

--Get department, total salary with respect to a department 
--from employee table order by total salary descending


SELECT DepartmentID, SUM(Salary) AS TotalSalary 
		FROM Employees GROUP BY DepartmentID ORDER BY TotalSalary DESC