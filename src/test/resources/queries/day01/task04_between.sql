select * from EMPLOYEES;
--between clause applies the given range to filter results, given ranges are included
select first_name, salary from EMPLOYEES where salary between 7000 and 10000;       --7000 and 10000 included
select first_name, salary from EMPLOYEES where salary >= 7000 and salary <= 10000;      --Same thing without between clause
select first_name, last_name, salary from EMPLOYEES where salary > 7000 and department_id = 80;
select * from EMPLOYEES where job_id = 'IT_PROG' or job_id = 'SA_REP';