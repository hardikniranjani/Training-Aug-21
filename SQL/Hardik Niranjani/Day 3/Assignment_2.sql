
--(2)--

--Write a query to display the FirstName and Salary for all employees. 
--Format the salary to be 10 characters long, left-padded with the $ symbol. Label the column SALARY.


 SELECT FirstName, CONCAT(REPLICATE('$', 1),' ',Salary) "SALARY"  FROM Employees;