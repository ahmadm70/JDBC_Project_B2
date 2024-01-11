--Display full addresses from locations table in a single column
select street_address || ', ' || city || ', ' || state_province || ', ' || postal_code || ', ' || country_id
from locations;
--Display all information of the employee who has the minimum salary in employees table
select *
from employees
where salary = (select min(salary) from employees);
--Display the second minimum salary from the employees
select min(salary)
from employees
where salary != 2100;
select min(salary)
from employees
where salary != (select min(salary) from employees);
--Display all information of the employee who has the second minimum salary
select *
from employees
where salary = (select min(salary) from employees where salary != 2100);
select *
from employees
where salary = (select min(salary) from employees where salary != (select min(salary) from employees));
--List all the employees who are making above the average salary;
select *
from employees
where salary > (select avg(salary) from employees);
--List all the employees who are making less than the average salary
select *
from employees
where salary < (select avg(salary) from employees);
--Display manager name of 'Neena'
select *
from employees
where first_name = 'Neena';
--Find the 3rd maximum salary from the employees table (do not include duplicates)
select min(salary)
from (select distinct salary from employees order by salary desc)
where rownum <= 3;
--Find the 5th maximum salary from the employees table (do not include duplicates)
select min(salary)
from (select distinct salary from employees order by salary desc)
where rownum <= 5;
--Find the 7th maximum salary from the employees table (do not include duplicates)
select min(salary)
from (select distinct salary from employees order by salary desc)
where rownum <= 7;
--Find the 10th maximum salary from the employees table (do not include duplicates)
select min(salary)
from (select distinct salary from employees order by salary desc)
where rownum <= 10;
--Find the 3rd minimum salary from the employees table (do not include duplicates)
select max(salary)
from (select distinct salary from employees order by salary)
where rownum <= 3;
--Find the 5th minimum salary from the employees table (do not include duplicates)
select max(salary)
from (select distinct salary from employees order by salary)
where rownum <= 5;
--Find the 7th maximum salary from the employees table (do not include duplicates)
select max(salary)
from (select distinct salary from employees order by salary)
where rownum <= 7;
--Find the 10th maximum salary from the employees table (do not include duplicates)
select max(salary)
from (select distinct salary from employees order by salary)
where rownum <= 10;