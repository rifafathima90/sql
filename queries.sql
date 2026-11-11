CREATE TABLE Employees (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Department VARCHAR(30),
    City VARCHAR(30),
    Salary INT,
    Age INT
);
INSERT INTO Employees VALUES
(101, 'Arun', 'IT', 'Kochi', 35000, 25),
(102, 'Meera', 'HR', 'Calicut', 28000, 24),
(103, 'Rahul', 'Finance', 'Chennai', 40000, 28),
(104, 'Anjali', 'Sales', 'Kochi', 30000, 26),
(105, 'Nikhil', 'IT', 'Calicut', 45000, 29),
(106, 'Sneha', 'HR', 'Bangalore', 32000, 27),
(107, 'Vishnu', 'Sales', 'Chennai', 25000, 23),
(108, 'Diya', 'Finance', 'Kochi', 38000, 30); 
select * from Employees;
update Employees set city = 'Calicut' where Emp_Name = 'Rahul';
select * from employees;
delete from employees where Department = 'IT';
select * from employees;
select Department ,COUNt(Emp_ID) as emp_ids
from employees 
GROUP BY Department;
select city,sum(Salary) as totalsalary
from employees 
group by city;