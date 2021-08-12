
--(4)--

--Write a query to display the length of first name for employees 
--where last name contains character ‘c’ after 2nd position.

SELECT FirstName, LastName FROM Employees WHERE CHARINDEX('c', LastName)>2;

SELECT LEN(FirstName) "FirstName", LastName FROM Employees WHERE CHARINDEX('c', LastName)>2;