
--(1)--

--Write a query that displays the FirstName and the length of the FirstName 
--for all employees whose name starts with the letters ‘A’, ‘J’ or ‘M’. 
--Give each column an appropriate label. Sort the results by the employees’ FirstName

SELECT FirstName, LEN(FirstName) "Length" FROM Employees 
	WHERE FirstName LIKE 'A%' OR FirstName LIKE 'J%' OR FirstName LIKE 'M%' ORDER BY FirstName;