select * from employees;
select * from jobs where job_title in ('President', 'Sales Manager', 'Finance Manager');
select * from departments where manager_id is null;
select * from locations where country_id in ('US', 'GB');
select * from locations where country_id not in ('US', 'GB');
select * from countries where region_id = 10 and country_name = 'Belgium';
select * from countries where region_id = 10 and country_name != 'Belgium';
select first_name, last_name from employees where department_id not in (60, 90, 100, 120, 130);