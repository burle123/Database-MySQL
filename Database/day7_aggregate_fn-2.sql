show databases;

use employee;

CREATE TABLE IF NOT EXISTS employee_info (
    id INT AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    department VARCHAR(30) NOT NULL,
    salary bigint,
CONSTRAINT pk_student_id PRIMARY KEY(id)
);


INSERT INTO employee_info (name,department,salary) values
('Shantanu','IT',50000),
('Sahil','HR',40000),
('Anish','HR',70000),
('Amey','Marketing',30000),
('Ayush','Marketing',23000),
('Datta','HR',60000),
('Chinu','IT',80000),
('Yash','IT',50000);


select department, sum(salary) as total_salary
from employee_info
group by department;

select name,salary
from employee_info
where department='HR';

select * from employee_info
where salary >= 50000;

select name from employee_info
where salary < 50000;

select name, salary from employee_info
where salary between 40000 and 50000;

select department,count(*) as employee_count
from employee_info
group by department;


select department,sum(salary) as total_salary
from employee_info
group by department;

select department,avg(salary) as avg_salary
from employee_info
group by department;


select department,max(salary) as max_salary
from employee_info
group by department;


select department ,count(*) as Total_count
from employee_info
where department='IT'
group by department;


select department ,count(*) as Total_Emp
from employee_info
group by department
having Total_Emp >=2;


select department ,max(salary)as Max_Sal
from employee_info
group by department;


select department ,min(salary)as Min_Sal
from employee_info
group by department;


select department ,count(*) as Total_Emp, sum(salary) as Total_Sal, avg(salary) as Avg_Sal, min(salary) as Min_Sal, max(salary) as Max_Sal
from employee_info
group by department;