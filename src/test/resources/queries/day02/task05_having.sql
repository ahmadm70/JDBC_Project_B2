select * from employees;
select job_id, avg (salary) from employees where salary > 5000 group by job_id;
select job_id, avg (salary) from employees group by job_id having avg (salary) > 5000;
select department_id from employees group by department_id having count (*) > 5;
select first_name, count (*) as "TOTAL_NUMBER" from employees group by first_name having count (*) > 1;
--Aliases --> naming columns AS we want