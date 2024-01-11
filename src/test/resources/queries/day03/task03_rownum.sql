select * from employees;
select * from employees where rownum < 6 order by salary desc;      --Returns us 5 highest salaries
select * from (select distinct salary from employees order by salary desc) where rownum < 10;
select min (salary) from (select distinct salary from employees order by salary desc) where rownum < 6;