select * from employees;
select max (salary) from employees;
select * from employees where salary = (select max (salary) from employees);
select max (salary) from employees where salary < 24000;
select * from employees where salary = (select max (salary) from employees where salary < 24000);