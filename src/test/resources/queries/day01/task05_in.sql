select * from EMPLOYEES;
--in clause
select * from EMPLOYEES where job_id = 'IT_PROG' or job_id = 'SA_REP' or job_id = 'ST_MAN' or job_id = 'MK_REP';
select * from EMPLOYEES where job_id in ('IT_PROG', 'SA_REP', 'ST_MAN', 'MK_REP');      --Does the exact same thing with the line above
select city from LOCATIONS where country_id in ('IT', 'US', 'UK');
select postal_code, city from LOCATIONS where country_id not in ('IT', 'US');
select * from EMPLOYEES where employee_id in (134, 123, 145, 146);
select * from EMPLOYEES where department_id is null;
select * from EMPLOYEES where department_id is not null;