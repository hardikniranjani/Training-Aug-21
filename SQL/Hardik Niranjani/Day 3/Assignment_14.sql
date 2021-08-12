
--(14)--

--Write a query to get first name of employees who joined in 1987.

SELECT FirstName, HireDate FROM Employees WHERE YEAR(HireDate)=1987;