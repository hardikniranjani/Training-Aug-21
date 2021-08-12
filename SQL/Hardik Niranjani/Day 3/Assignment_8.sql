
--(8)--

--Write a query to get the distinct Mondays from HireDate in employees tables.


SELECT DISTINCT(DATEADD(DD, 1- DATEPART(DW,HireDate), HireDate)) "Distint Monday" FROM Employees;