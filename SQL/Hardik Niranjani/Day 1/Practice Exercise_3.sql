CREATE TABLE jobs
(
	JobId INT CONSTRAINT pkJobId PRIMARY KEY,
	JobTitle varchar(20) NOT NULL DEFAULT '',
	MinSalary decimal(5,0) DEFAULT 8000,
	MaxSalary decimal(8,0) DEFAULT NULL
);

	SELECT * FROM jobs