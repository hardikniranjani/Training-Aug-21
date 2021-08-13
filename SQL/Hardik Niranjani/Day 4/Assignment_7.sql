
--(7)--
--Select department, total salary with respect to a department from employee table 
--where total salary greater than 50000 order by TotalSalary descending

SELECT DepartmentID, SUM(Salary) AS TotalSalary 
		FROM Employees GROUP BY DepartmentID  
		HAVING SUM(Salary)>50000 ORDER BY TotalSalary DESC 