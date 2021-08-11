CREATE TABLE countries
(
	CountryId INT NOT NULL,
	CountryName varchar(30) CHECK(CountryName IN('India','Italy','China')),
	RegionId decimal(10,0) NOT NULL UNIQUE(CountryId,RegionId)

);

INSERT INTO countries
VALUES (1,'India', 64),(2,'Italy',65),(3,'India',66)


SELECT * FROM countries