select * from employees;
create view sdet as select substr (first_name, 0, 1) || substr (last_name, 0, 1) as "INITIALS" from employees;
select * from sdet;
drop view sdet;
select * from sdet;