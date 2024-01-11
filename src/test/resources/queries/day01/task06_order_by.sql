select * from EMPLOYEES;
--order by clause sorts results by the given column
select * from EMPLOYEES order by salary;        --By default, it'll be sorted in ascending order (from lowest to highest)
select * from EMPLOYEES order by salary desc;       --Sorts from highest to lowest
select * from EMPLOYEES order by 8;     --Sorts by column at index 8 (which is salary). Indexes start from 1
select email from EMPLOYEES order by salary;
select email, job_id from EMPLOYEES order by 2;     --Removes everything except email and job id first, then sorts by index 2 (which is job id here)
select * from EMPLOYEES where employee_id < 110 order by first_name;
select * from EMPLOYEES order by first_name, last_name desc;        --Sorts first names first, then sorts last names
select * from EMPLOYEES order by salary desc;