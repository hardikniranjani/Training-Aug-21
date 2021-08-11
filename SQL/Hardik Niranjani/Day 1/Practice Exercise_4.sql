CREATE TABLE employees
(
	Employee_Id INT CONSTRAINT pkEmployee_Id PRIMARY KEY,
	FirstName varchar(15) NOT NULL,
	LastName varchar(25) Not Null,
	Email varchar(30) NOT NULL,
	PhoneNumber varchar(15) NOT NULL,
	Hire_Date date NOT NULL,
	Job_Id INT, 
	Salary decimal(6,0) DEFAULT NULL,
	Commission INT DEFAULT NULL,
	Department_Id INT,
);

SELECT * FROM employees