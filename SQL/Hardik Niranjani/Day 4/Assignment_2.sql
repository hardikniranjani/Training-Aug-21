
--(2)--
--Select 4th Highest salary from employee table using ranking function

WITH Result AS
(
	SELECT Salary, DENSE_RANK() OVER(ORDER BY Salary DESC) AS Salary_rank FROM Employees
)

SELECT TOP 1 Salary FROM Result WHERE Salary_rank=4

