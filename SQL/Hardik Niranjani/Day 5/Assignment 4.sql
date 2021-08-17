

--(4)--
--Select EmployeeName, ManagerName from the employee table.


SELECT b.FIRST_NAME as Employee,e.FIRST_NAME as Manager  FROM Employee as e
		 join Employee as b
		 on e.EMPLOYEE_ID = b.MANAGER_ID
	