--1. Write a query to display the first day of the month (in datetime format) three months before the current month.
--Sample current date : 2014-09-03
--Expected result : 2014-06-01==============================================================================

SELECT HireDate,DATEADD(MONTH, -3, HireDate) AS [Date diff] FROM Employees

--2. Write a query to display the last day of the month (in datetime format) 
--three months before the current month.====================================================================
SELECT DATEPART(DD, DATEDIFF(DD, 0, GETDATE())) AS StartOfYear

--3. Write a query to get the distinct Mondays from hire_date in employees tables.=======================
SELECT DATEPART(dd,HireDate) HireDate FROM Employees   

--4. Write a query to get the first day of the current year.==============================
	SELECT DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0) AS StartOfYear

--5. Write a query to get the last day of the current year.===============================

	SELECT DATEADD(yy, DATEDIFF(YY, 0, GETDATE()) + 1, -1) AS EndOfYear

--6. Write a query to calculate the age in year.
	SELECT DATEDIFF(YY, HireDate, GETDATE()) AS [age] FROM Employees


--7. Write a query to get the current date in the following format.
--Sample date : 2014-09-04
--Output : September 4, 2014

	SELECT FORMAT(GETDATE(),'MMMM dd,yyyy') AS [Date]


--8. Write a query to get the current date in the following format.
--Thursday September 2014
	SELECT FORMAT(GETDATE(),'dddd MMMM yyyy') AS [Date]


--9. Write a query to extract the year from the current date.
	SELECT FORMAT(GETDATE(),'yyyy') AS [Year]


--10. Write a query to get the DATE value from a given day (number in N).
--Sample days : 730677
--Output : 2000-07-11
	SELECT FORMAT(GETDATE(),'yyyy-MM-dd') AS [Date]


--11. Write a query to get the first name and hire date from employees table where hire date between '1987-06-01' and '1987-07-30'
	SELECT FirstName, HireDate FROM Employees
			 WHERE HireDate BETWEEN '1987-06-01' and '1987-07-30'


--12. Write a query to display the current date in the following format.
--Sample output : Thursday 4th September 2014===========================================
	SELECT FORMAT(GETDATE(),'dddd dd MMMM yyyy') AS [Date]


--13.Write a query to display the current date in the following format.
--Sample output : 05/09/2014

	SELECT FORMAT(GETDATE(),'dd/mm/yyyy') AS [Date]

--14.Write a query to display the current date in the following format.
--Sample output : 12:00 AM Sep 5, 2014
	SELECT FORMAT(GETDATE(),'hh:mm tt MMM dd, yyyy') AS [Date]


--15. Write a query to get the firstname, lastname who joined in the month of June.
	SELECT FirstName,LastName FROM Employees 
			 WHERE MONTH(HireDate) = 6


--16. Write a query to get the years in which more than 10 employees joined.
	SELECT YEAR(HireDate) AS [Year], COUNT(EmployeeID) AS [Number of employees joined] 
					FROM Employees 
					GROUP BY YEAR(HireDate)
					HAVING COUNT(EmployeeID) > 10
					
			

--17. Write a query to get the department ID, year, and number of employees joined.
	SELECT DepartmentID, FORMAT(HireDate, 'yyyy') AS [Year], COUNT(EmployeeID) AS [Total Employee Joined] 
					FROM Employees
					GROUP BY DepartmentID, FORMAT(HireDate,'yyyy')
					ORDER BY [Total Employee Joined] DESC


--18. Write a query to get department name, manager name, and salary of the manager for all 
--managers whose experience is more than 5 years.
	SELECT e.FirstName, e.LastName, e.Salary , d.DepartmentName FROM Employees AS e
			 JOIN Departments AS d
			 ON e.ManagerID= d.ManagerID
			 WHERE DATEDIFF(YEAR, HireDate,GETDATE()) > 5 

--19. Write a query to get employee ID, last name, and date of first salary of the employees.
		SELECT EmployeeID, LastName,HireDate, DATEADD(Day,30,HireDate) AS [Slary Date] FROM Employees


--20. Write a query to get first name, hire date and experience of the employees.
		SELECT FirstName, HireDate, DATEDIFF(YEAR, HireDate, GETDATE()) AS [Experience] FROM Employees

--21. Write a query to get first name of employees who joined in 1987
		SELECT FirstName FROM Employees
						 WHERE YEAR(HireDate) = '1987'