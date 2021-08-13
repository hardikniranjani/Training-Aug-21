
--(1)--
--Write a query to rank employees based on their salary for a month

SELECT FirstName, Salary,
  DENSE_RANK() OVER(ORDER BY Salary DESC) AS SalaryRank FROM Employees
