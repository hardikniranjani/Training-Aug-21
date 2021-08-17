

--(1)--
--Get difference between JOINING_DATE and INCENTIVE_DATE from employee and incentives table

SELECT e.JOINING_DATE,i.INCENTIVE_DATE FROM Employee AS e
	JOIN  Incentives AS i
	ON e.EMPLOYEE_ID = i.EMPLOYEE_REF_ID