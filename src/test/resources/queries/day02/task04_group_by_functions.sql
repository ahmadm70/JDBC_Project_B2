select * from employees;
select job_id from employees;
select min (salary) from employees where job_id = 'IT_PROG';
select max (salary) from employees where job_id = 'IT_PROG';
select avg (salary) from employees where job_id = 'IT_PROG';
select avg (salary) from employees where job_id = 'SA_REP';
select distinct job_id from employees;
select job_id from employees group by job_id;       --Does the exact same thing with the line above
select job_id, avg (salary), min (salary), max (salary), count (*) from employees group by job_id;
select sum (salary) from employees group by department_id;
select round (avg (salary), 2), min (salary), max (salary), sum (salary), count (*) from employees group by department_id;