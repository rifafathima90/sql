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
select Department,
avg(Salary) as avg_salary
from Employees
group by Department
having avg_salary > 50000;
select Department, count(*) as total_emp,
avg(Salary) as avg_salary
from Employees
group by Department
HAVING count(*) >=2 and avg_salary >50000;
select Department, sum(salary)
from Employees
where salary > 40000
group by Department 
having sum(salary) > 100000


