--FIND OUT COUNTRY NAME AND REGION NAME FROM COUNTRIES AND REGION TABLE
select country_name, region_name
from countries c
         inner join regions r on c.region_id = r.region_id;;
--FIND OUT FIRST_NAME AND JOB_TITLE FROM JOBS AND EMPLOYEES TABLE
select first_name, job_title
from employees e
         inner join jobs j on e.job_id = j.job_id;
--FIND OUT DEPARTMENT_NAME AND CITY
select department_name, city
from departments d
         inner join locations l on d.location_id = l.location_id;
--FIND OUT ALL CITIES  AND COUNTRY NAMES
select city, country_name
from locations l
         inner join countries c on l.country_id = c.country_id;
--FIND OUT FIRST_NAME, LAST NAME, DEPARTMENT ID, DEPARTMENT NAME FOR DEPARTMENT ID 80 OR 40
select first_name, last_name, e.department_id, department_name
from employees e
         inner join departments d on e.department_id = d.department_id
where e.department_id in (40, 80);
--FIND OUT CITY, COUNTRY_NAME OF THAT CITY, REGION_NAME OF THAT CITY
select city, country_name, region_name
from locations l
         inner join countries c on l.country_id = c.country_id
         inner join regions r on c.region_id = r.region_id;
--FIND OUT EMPLOYEES FIRST_NAME, JOB_TITLE, DEPARTMENT_NAME, CITY
select first_name, job_title, department_name, city
from employees e
         inner join jobs j on e.job_id = j.job_id
         inner join departments d on e.department_id = d.department_id
         inner join locations l on d.location_id = l.location_id;
--FIND OUT EMPLOYEES FIRST_NAME, JOB_TITLE, DEPARTMENT_NAME, CITY, COUNTRY_NAME, REGION_NAME
select first_name, job_title, department_name, city, country_name, region_name
from employees e
         inner join jobs j on e.job_id = j.job_id
         inner join departments d on e.department_id = d.department_id
         inner join locations l on d.location_id = l.location_id
         inner join countries c on l.country_id = c.country_id
         inner join regions r on c.region_id = r.region_id;
--FIND OUR EMPLOYEES FIRST_NAME, LAST NAME, DEPARTMENT ID AND ALL DEPARTMENTS
--INCLUDING WHERE DO NOT HAVE ANY EMPLOYEE.
select first_name, last_name, d.department_id, department_name
from employees e
         right join departments d on e.department_id = d.department_id;
--FIND OUT ALL DEPARTMENT_NAME, LOCATION_ID, AND COUNTRY_ID
--INCLUDING THOSE LOCATIONS WITH NO DEPARTMENT
select department_name, l.location_id, country_id
from departments d
         right join locations l on d.location_id = l.location_id;
--FIND OUT DEPARTMENT_NAME, LOCATION_ID, AND COUNTRY_NAME
--INCLUDING THOSE COUNTRIES WITH NO DEPARTMENT
select department_name, l.location_id, country_name
from departments d
         inner join locations l on d.location_id = l.location_id
         right join countries c on l.country_id = c.country_id;
select department_name, l.location_id, country_name
from departments d
         inner join locations l on d.location_id = l.location_id
         right join countries c on l.country_id = c.country_id;
--FIND OUT EMPLOYEES FIRST_NAME, DEPARTMENT ID AND DEPARTMENT NAME
-- INCLUDING THOSE DOES NOT HAVE DEPARTMENT
-- INCLUDING THOSE DEPARTMENTS DOES NOT HAVE ANY MATCHING EMPLOYEES
select first_name, d.department_id, department_name
from employees e
         full join departments d on e.department_id = d.department_id;