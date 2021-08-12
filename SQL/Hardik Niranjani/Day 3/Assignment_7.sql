
--(7)--
--Write a query to calculate the age in year.

SELECT HireDate, DATEDIFF(DAY, HireDate, GetDate())/365 "Age" FROM Employees