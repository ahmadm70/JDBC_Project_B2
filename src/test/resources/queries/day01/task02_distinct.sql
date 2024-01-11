select * from EMPLOYEES;
select street_address, postal_code from LOCATIONS;
select first_name from EMPLOYEES;
select distinct first_name from EMPLOYEES;      --distinct clause removes all duplicates
select distinct job_id from EMPLOYEES;
select distinct country_id from LOCATIONS;

select distinct job_id from JOBS;
select  job_id from JOBS;       --Since job_id is primary key for JOBS, we don't need distinct, because there is no duplicates