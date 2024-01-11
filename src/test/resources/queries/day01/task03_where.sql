select * from EMPLOYEES;
--where clause applies the given conditions to filter results (works like if condition in Java)
select first_name, last_name, salary from EMPLOYEES where first_name = 'David';
select first_name, last_name, salary from EMPLOYEES where first_name = 'David' and last_name = 'Lee';
select * from EMPLOYEES where salary > 6000;
select * from EMPLOYEES where salary <= 6000;
select * from EMPLOYEES where salary < 6000 or salary = 6000;       --Does the exact same thing with the line above