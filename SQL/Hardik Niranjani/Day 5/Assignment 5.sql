
--(5)--
--Select first_name, incentive amount from employee and incentives table for all employees even if 
--they didn’t get incentives and set incentive amount as 0 for those employees who didn’t get incentives.


SELECT e.FIRST_NAME, ISNULL(i.INCENTIVE_AMOUNT, 0) FROM Employee as e
			Left Join Incentives as i
			ON e.EMPLOYEE_ID = i.EMPLOYEE_REF_ID
			