
--(3)--
--Select first_name, incentive amount from employee and 
--incentives table for all employees even if they didn’t get incentives.

SELECT e.FIRST_NAME, i.INCENTIVE_AMOUNT FROM Employee as e
		Left Outer Join Incentives as i
		ON e.EMPLOYEE_ID=i.EMPLOYEE_REF_ID
