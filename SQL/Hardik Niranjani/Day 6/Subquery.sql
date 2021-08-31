
--(1)--
--Select employee details from employee table if data exists in incentive table

Select * from Employee 
		where EMPLOYEE_ID IN (Select EMPLOYEE_REF_ID from Incentives)


---------------------------------------------------------------------------------------------------------------


--(2)--
--Find Salary of the employee whose salary is more than Roy Salary

Select * from Employee 
		 where SALARY>ALL (Select SALARY from Employee Where FIRST_NAME = 'Roy')


---------------------------------------------------------------------------------------------------------------

/*
--(3)--
--Find the employee ID, job title, number of days between ending date and 
--starting date for all jobs in department 90 from job history
*/

SELECT EmployeeID, JobID as [Job Title], DATEDIFF(DAY, StartDate , EndDate) as [Days] 
		FROM  JobHistory
		WHERE DepartmentID = 90 






