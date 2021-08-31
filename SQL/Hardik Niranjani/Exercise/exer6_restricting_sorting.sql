--1. Write a query to display the names (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000.
Select CONCAT(FirstName,' ',LastName) as [Name], Salary 
			from Employees
			WHERE Salary < 10000 OR Salary> 15000 ORDER BY Salary DESC
 

--2. Write a query to display the names (first_name, last_name) and department ID of all employees in departments 30 or 100 in ascending alphabetical order by department ID.
SELECT CONCAT(FirstName,' ',LastName) as [Name], DepartmentID  
			FROM Employees
			WHERE DepartmentID = 30 OR DepartmentID = 100 
			ORDER BY DepartmentID, [Name] ASC			


--3. Write a query to display the names (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000 and are in department 30 or 100.
Select CONCAT(FirstName,' ',LastName) as [Name], Salary, DepartmentID
			from Employees
			WHERE (Salary < 10000 OR Salary> 15000) AND (DepartmentID = 30 OR DepartmentID = 100) 
			

--4. Write a query to display the names (first_name, last_name) and hire date for all employees who were hired in 1987.
SELECT CONCAT(FirstName,' ',LastName) AS [Name], HireDate 
			FROM Employees
			WHERE YEAR(HireDate) LIKE '1987'
		

--5. Write a query to display the first_name of all employees who have both "b" and "c" in their first name.
SELECT FirstName FROM Employees
                 WHERE FirstName LIKE '%c%' AND FirstName LIKE '%b%'

--6. Write a query to display the last name, job, and salary for all employees whose job is that of a Programmer or a 
--Shipping Clerk, and whose salary is not equal to $4,500, $10,000, or $15,000.

Select LastName, JobId as Job, Salary 
			from Employees
			Where (JobId = 'IT_PROG' OR JobId ='SH_CLERK') AND (Salary<>4500 OR Salary<>10000 OR Salary<>15000)

--7. Write a query to display the last names of employees whose names have exactly 6 characters.
SELECT LastName FROM Employees
				WHERE LEN(LastName) = 6

--8. Write a query to display the last names of employees having 'e' as the third character.
SELECT LastName FROM Employees
				WHERE LastName LIKE '__e%'

--9. Write a query to display the jobs/designations available in the employees table.
SELECT DISTINCT(JobId) as [jobs/designations] FROM Employees ORDER BY JobId

--10. Write a query to display the names (first_name, last_name), salary and PF (15% of salary) of all employees.
SELECT CONCAT(FirstName,' ',LastName) as [Name], Salary, (Salary*0.15) as PF  FROM Employees


--11. Write a query to select all record from employees where last name in 'BLAKE', 'SCOTT', 'KING' and 'FORD'.
SELECT LastName FROM Employees
				WHERE LastName  IN ('BLAKE', 'SCOTT', 'KING' ,'FORD')