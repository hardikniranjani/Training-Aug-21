	--(13)--
	--Write a query to get first name, hire date and experience of the employees.


   SELECT FirstName, HireDate, 
	CONVERT(varchar(3),DATEDIFF(MONTH, HireDate, GETDATE())/12) +' years '+
    CONVERT(varchar(2),DATEDIFF(MONTH, HireDate, GETDATE()) % 12)+ ' months' 
    AS EXPERIENCE FROM Employees