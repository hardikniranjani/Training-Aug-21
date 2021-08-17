
--(2)--
--Select first_name, incentive amount from employee and incentives table for those employees 
--who have incentives and incentive amount greater than 3000

SELECT e.FIRST_NAME,i.INCENTIVE_AMOUNT FROM Employee as e
		Inner Join Incentives as i 
		ON e.EMPLOYEE_ID=i.EMPLOYEE_REF_ID 
		WHERE I.INCENTIVE_AMOUNT>3000