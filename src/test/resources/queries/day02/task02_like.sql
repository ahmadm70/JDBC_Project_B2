select * from employees;
select first_name from employees where first_name like 'Alex%';
select first_name from employees where first_name like '%am';
select * from employees where first_name like 'B____';      --Each underscore represents one character
select first_name from employees where first_name like '__z__';
select * from employees where first_name like '%z%';
select * from employees where first_name like '_____';
select * from employees where first_name like '_a%';
select last_name from employees where first_name like '%l';
select * from jobs where job_title like '%Manager';