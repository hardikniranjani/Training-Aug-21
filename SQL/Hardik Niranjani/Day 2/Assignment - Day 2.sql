--Update Queries(1)
ALTER TABLE Employees
DROP CONSTRAINT ukEmail
UPDATE Employees SET email='not available'
SELECT * FROM Employees


--Update Queries(2)
UPDATE employees SET email='not available', CommissionPct=0.10
SELECT * FROM Employees


--Update Queries(3)
UPDATE employees SET email='not available', CommissionPct=0.10 WHERE DepartmentId=110
SELECT * FROM Employees


--Update Queries(4)
UPDATE employees SET email='not avaliable' WHERE DepartmentId = 80 AND CommissionPct<0.20
SELECT * FROM Employees


--Update Queries(5)
UPDATE Employees
SET Email = 'not available'
FROM Employees as e
JOIN Departments as d
ON e.DepartmentID = d.DepartmentID
AND d.DepartmentName = 'Accounting'
SELECT * FROM Employees


--Update Queries(6)
UPDATE Employees SET Salary = 8000 WHERE EmployeeID = 105 AND Salary < 5000
SELECT * FROM Employees


--Update Queries(7)
UPDATE Employees SET JobId= 'SH_CLERK' WHERE EmployeeID=118 AND DepartmentID=30 AND NOT JobId LIKE 'SH%'
SELECT * FROM Employees


--Update Queries(8)
UPDATE Employees SET Salary= CASE DepartmentID 
	WHEN 40 THEN Salary+(Salary*0.25)
	WHEN 90 THEN Salary+(Salary*0.15)
	WHEN 110 THEN Salary+(Salary*0.10)
	ELSE Salary
	END
	WHERE DepartmentID IN (10,90,118,110,40)
SELECT * FROM Employees



--Update Queries(9)
UPDATE Employees 
SET Salary += (Salary * 20 /100) + 2000, CommissionPct += 0.10
WHERE JobId LIKE 'PU_CLERK' 
SELECT * FROM Employees

-------------------------------------------------------------------------------------------------------------

--Basic Select Queries(1)
SELECT * FROM Employees


--Basic Select Queries(2)
SELECT FirstName, LastName FROM Employees


--Basic Select Queries(3)
SELECT FirstName "Employee Name" FROM Employees


--Basic Select Queries(4)
SELECT FirstName FROM Employees WHERE FirstName = 'Steven'


--Basic Select Queries(5)
SELECT FirstName FROM Employees WHERE FirstName = 'Neena' OR FirstName = 'Lex'


--Basic Select Queries(6)
SELECT FirstName FROM Employees WHERE FirstName != 'Neena' OR FirstName != 'Neena'


--Basic Select Queries(7)
SELECT * FROM Employees WHERE Salary BETWEEN 5000 AND 8000


--Basic Select Queries(8)
SELECT FirstName,LastName, Salary, Salary*0.12 "PF" FROM Employees


--Basic Select Queries(9)
SELECT FirstName FROM Employees WHERE FirstName LIKE 'N%'


--Basic Select Queries(10)
SELECT DISTINCT DepartmentId FROM Employees


--Basic Select Queries(11)
SELECT * FROM Employees ORDER BY FirstName DESC


--Basic Select Queries(12)
SELECT DepartmentId, FirstName, LastName, Salary FROM Employees ORDER BY Salary ASC


--Basic Select Queries(13)
SELECT TOP 2 Salary FROM Employees

