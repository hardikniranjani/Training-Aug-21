
--(6)--
--Get department wise minimum salary from employee table order by salary ascending

SELECT DepartmentID, MIN(Salary) AS MinSalary 
		FROM Employees GROUP BY DepartmentID ORDER BY MinSalary ASC