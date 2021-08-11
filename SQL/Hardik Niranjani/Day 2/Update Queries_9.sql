--Update Queries(9)

UPDATE employees_1
SET MinimumSalary=MinimumSalary+2000,
MaximumSalary=MaximumSalary +2000,
Salary=Salary+(Salary*.20),
commission=commission +.10
WHERE job_id='PU_CLERK';
