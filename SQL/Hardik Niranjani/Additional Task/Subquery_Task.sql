
--1. Write a query to find the names (first_name, last_name) and 
--salaries of the employees who have higher salary than the employee whose 
--last_name='Bull'. 

 Select FirstName, LastName from Employees
			Where Salary > (Select Salary from employees where LastName = 'Bull')



--2. Find the names (first_name, last_name) of all employees who works in the IT department. 
Select FirstName, LastName from Employees
				Where DepartmentID IN 
				(select DepartmentID from Departments Where DepartmentName='IT')



--3. Find the names (first_name, last_name) of the employees who have a manager who works 
--for a department based in United States. 

Select FirstName,LastName from Employees
			Where ManagerID IN 
			(Select EmployeeID from Employees 
				Where DepartmentID IN (Select DepartmentID from Departments
					Where LocationID IN(Select LocationID from Locations where CountryID='US' )))



--4. Find the names (first_name, last_name) of the employees who are managers. 

	 Select FirstName, LastName from Employees
						Where EmployeeID IN (Select ManagerID from Employees)
				





--5. Find the names (first_name, last_name), salary of the employees whose salary is greater than the average salary. 

	Select FirstName, LastName from Employees
					Where Salary > (Select Avg(Salary) from Employees)





--6. Find the names (first_name, last_name), salary of the employees whose salary is equal to the 
--minimum salary for their job grade. 

	Select FirstName, LastName,JobId from Employees as e
				Where Salary = (Select min(Salary) from Employees 
								  where JobId IN (Select JobID from JobHistory as j
									Where e.JobId= j.JobID ))




--7. Find the names (first_name, last_name), salary of the employees who earn more than the average salary 
--and who works in any of the IT departments. 

	Select FirstName,LastName from Employees
			Where Salary > (Select AVG(Salary) from Employees 
					Where DepartmentID IN 
						(Select DepartmentID from Departments 
								Where DepartmentName='IT'))
			


--8. Find the names (first_name, last_name), salary of the employees who earn more than Mr. Bell.

	Select FirstName, LastName from Employees
				Where Salary > (Select Salary from Employees Where LastName='Bell')





--9. Find the names (first_name, last_name), salary of the employees who earn the same salary as the 
--minimum salary for all departments. 

		Select FirstName,LastName From Employees
				Where Salary = (Select MIN(Salary) from Employees )




--10. Find the names (first_name, last_name), salary of the employees whose salary greater than average salary of all department.

	Select FirstName, LastName from Employees
			Where Salary > ALL (Select AVG(Salary) from Employees Group BY DepartmentID)




--11. Write a query to find the names (first_name, last_name) and salary of the employees who earn a 
--salary that is higher than the salary of all the Shipping Clerk (JOB_ID = 'SH_CLERK'). 
--Sort the results on salary from the lowest to highest. 

	Select FirstName, LastName, Salary from Employees
				Where Salary >ALL(Select Salary from Employees Where JobId ='SH_CLERK') Order By Salary ASC
	




--12. Write a query to find the names (first_name, last_name) of the employees who are not supervisors. 

	Select FirstName,LastName from Employees as e1
	  Where EmployeeID  NOT IN (Select e2.ManagerID from Employees as e2 
				Where e2.ManagerID = e1.EmployeeID)



--13. Write a query to display the employee ID, first name, last names, and department names of all employees. 

	Select FirstName, LastName, EmployeeID, 
		(Select DepartmentName from Departments as d where e.DepartmentID = d.DepartmentID ) as Department 
			From Employees as e
			




--14. Write a query to display the employee ID, first name, last names, salary of all employees 
--whose salary is above average for their departments. 

	Select EmployeeID, FirstName, LastName, Salary from Employees as e
			Where Salary > (Select Avg(Salary) From Employees Where DepartmentID = e.DepartmentID ) Order by Salary DESC





--15. Write a query to fetch even numbered records from employees table. 

	Select EmployeeID  from Employees
			Where (EmployeeID % 2)=0



--16. Write a query to find the 5th maximum salary in the employees table. 

	Select Salary from Employees e1
		Where 5 = (Select Count(Salary) from Employees e2
							Where e2.Salary >= e1.Salary )
					

--17. Write a query to find the 4th minimum salary in the employees table. 

		Select Distinct Salary From Employees e1
				Where 4 = (Select Count(Distinct Salary) From Employees e2
									Where e2.Salary <= e1.Salary)


--18. Write a query to select last 10 records from a table. 

	Select TOP(10) * from Employees ORDER BY EmployeeID DESC 
			



--19. Write a query to list department number, name for all the departments in which there are no employees in the department.

	Select DepartmentID, DepartmentName from Departments
			Where DepartmentID NOT IN (Select DepartmentID from Employees)
			



--20. Write a query to get 3 maximum salaries. 

	Select Distinct TOP(3) Salary from Employees Order By Salary DESC
				


--21. Write a query to get 3 minimum salaries. 

	Select Distinct TOP(3) Salary from Employees Order By Salary ASC

--22. Write a query to get nth max salaries of employees.

	Select Distinct Salary from Employees e1
				Where N = (Select Count(Distinct Salary) 
									from Employees e2
									Where e2.Salary >= e1.Salary)
							Order by e1.Salary
												





Select * from Employees
Select * from Departments
Select * from JobHistory

Select * from Locations


				

