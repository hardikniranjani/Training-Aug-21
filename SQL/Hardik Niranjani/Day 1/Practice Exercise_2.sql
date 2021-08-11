CREATE TABLE JobHistory
(
	EmployeeId INT NOT NULL,
	StartDate  DATETIME NOT NULL,
	EndDate DATETIME NOT NULL CHECK(EndDate LIKE '--/--/----'),
	Job_Id INT NOT NULL,
	Department_Id INT NOT NULL
);

SELECT * FROM JobHistory