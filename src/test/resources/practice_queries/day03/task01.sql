--List all the employees first and last name with their salary in employees table
select first_name, last_name, salary
from employees;
--How many employees have salary less than 5000?
select count(salary)
from employees
where salary < 5000;
--How many employees have salary between 6000 and 7000?
select count(salary)
from employees
where salary between 6000 and 7000;
--List all the different region_ids in countries table
select distinct region_id
from countries;
--Display the salary of the employee Grant Douglas (lastName: Grant,  firstName: Douglas)
select salary
from employees
where last_name = 'Grant'
  and first_name = 'Douglas';
--Display all department information from departments table if the department names: IT, Public Relations, Sales, Executive
select *
from departments
where department_name in ('IT', 'Public Relations', 'Sales', 'Executive');
--Display the maximum salary in employees table
select max(salary)
from employees;
--Display the the minimum salary in employees table
select min(salary)
from employees;
--Display the average salary of the employees;
select avg(salary)
from employees;
select round(avg(salary))
from employees;
--Count the total numbers of the departments in departs table
select count(*)
from departments;
--Sort the start_date in ascending order in job_history's table
select *
from job_history
order by start_date;
--Sort the start_date in descending order in job_history's table
select *
from job_history
order by start_date desc;
--Display all records whose last name contains 2 lowercase 'a's
select *
from employees
where last_name like '%a%a%';
--Display all the employees whose first name starts with 'A'
select *
from employees
where first_name like 'A%';
--Display all the employees whose job_ID contains 'IT'
select *
from employees
where job_id like '%IT%';
--Display all unique job_id that end with CLERK in employee table
select distinct job_id
from employees
where job_id like '%CLERK';
--Display all employees first name starts with A and have exactly 4 characters Total
select *
from employees
where first_name like 'A___';
--Display all the employees whose department id in 50, 80, 100
select *
from employees
where department_id in (50, 80, 100);
--Display all employees who does not work in any one of these department id 90, 60,  100, 130, 120
select *
from employees
where department_id not in (60, 90, 100, 120, 130);
--Divide employees into groups by using their job id
--1. Display the maximum salaries in each groups
select max(salary)
from employees
group by job_id;
--2. Display the minimum salaries in each groups
select min(salary)
from employees
group by job_id;
--3. Display the average salary of each group
select avg(salary)
from employees
group by job_id;
--4. How many employees are there in each group that have minimum salary of 5000?
select count(*)
from employees
where salary >= 5000
group by job_id;
--5. Display the total budgets of each groups
select sum(salary)
from employees
group by job_id;
--Display all job_id and average salary who work as any of these jobs IT_PROG, SA_REP, FI_ACCOUNT, AD_VP
select job_id, avg(salary)
from employees
where job_id in ('IT_PROG', 'SA_REP', 'FI_ACCOUNT', 'AD_VP')
group by job_id;
--Display max salary  for each department
select max(salary)
from employees
group by department_id;
--Display total salary for each department except department_id 50, and where total salary > 30000
select sum(salary)
from employees
group by department_id
having department_id != 50 and sum (salary) <= 30000;