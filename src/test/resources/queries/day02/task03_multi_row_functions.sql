select * from employees;
select count (manager_id) from employees;       --Doesn't count null values
select count (first_name) from employees;
select count (distinct first_name) from employees;      --Returns total number of first names without duplicates
select count (*) from employees where job_id in ('IT_PROG', 'SA_REP');
select count (department_id) from employees where department_id is null;        --Returns 0, because doesn't count null
select count (*) from employees where department_id is null;
select min (salary) from employees;
select max (salary) from employees;
select avg (salary) from employees;
select round (avg (salary), 2) from employees;
select sum (salary) from employees;