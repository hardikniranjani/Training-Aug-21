

--(5)--
--Get department wise maximum salary from employee table order by salary ascending

SELECT DepartmentID, MAX(Salary) AS MaxSalary
	FROM Employees GROUP BY DepartmentID ORDER BY MaxSalary ASC
