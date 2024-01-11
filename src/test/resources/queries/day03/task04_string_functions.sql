select * from employees;
--Aliases --> changes the column name
select first_name as "GIVEN NAME", last_name as "SURNAME" from employees;
select first_name, last_name, salary * 12 + 10000 as "ANNUAL_SALARY_AFTER_RAISE" from employees;
--Concatenation --> in Java we use +, in SQL we use || or concat
select email || '@gmail.com' as "EMAIL_ADDRESS" from employees;
select concat (email, '@gmail.com') as "EMAIL_ADDRESS" from employees;
select first_name || ' makes $' || salary || ' salary' as "EMPLOYEE'S SALARY" from employees;
--Lower --> toLowerCase()
select lower (email || '@gmail.com') as "EMAIL_ADDRESS" from employees;
--Upper --> toUpperCase()
select upper (email || '@gmail.com') as "EMAIL_ADDRESS" from employees;
--Initcap --> makes first letter uppercase, rest lowercase
select initcap (first_name) from employees;
--Length --> length()
select first_name, length (first_name) from employees;
select first_name from employees order by length (first_name);
--Substring --> substring()
select first_name, substr (first_name, 0, 2) from employees;
select first_name, last_name, substr (first_name, 0, 1) || substr (last_name, 0, 1) as "INITIALS" from employees;
select first_name from employees where length (first_name) = 6;
select first_name from employees where first_name like '______';
select count (first_name) from employees where length (first_name) = 6;