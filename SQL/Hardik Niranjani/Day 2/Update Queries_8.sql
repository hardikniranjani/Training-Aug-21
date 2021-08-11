--Update Queries(8)

UPDATE employees_1 SET Salary= CASE Department_Id 
	WHEN 40 THEN Salary+(Salary*0.25)
	WHEN 90 THEN Salary+(Salary*0.15)
	WHEN 110 THEN Salary+(Salary*0.10)
	ELSE Salary
	END
	WHERE Department_Id IN (10,90,118,110,40);

SELECT * FROM employees_1