select * from employees;
create table scrumteam (
    empId number primary key,       --Null isn't allowed and can't be duplicate (because it's a primary key)
    firstName varchar(20) not null,     --Can't be null
    jobTitle varchar(15) not null,
    age integer,        --Constrains aren't mandatory, they're optional
    salary integer
);
select * from scrumteam;
insert into scrumteam (empId, firstName, jobTitle, age, salary) values (1, 'Tom', 'Tester', 22, 100000);
insert into scrumteam (empId, firstName, jobTitle, age, salary) values (2, 'Winnie', 'Developer', 28, 800000);
insert into scrumteam values (3, 'James', 'Tester', 31, 125000);        --We can skip providing the column names
insert into scrumteam values (4, 'Ahmad', 'SDET', 26, 120000);
insert into scrumteam values (5, 'Nihad', 'QA', 24, 100000);
insert into scrumteam values (6, 'Aslan', 'SDET', 29, 130000);
insert into scrumteam values (7, 'Gavin', 'Tester', 24, 125000);
insert into scrumteam values (8, 'Ulvi', 'QA', 32, 90000);
insert into scrumteam values (9, 'Feyruz', 'Testing Lead', 29, 150000);
commit;     --Saves the progress
select firstName, salary + 5000 from scrumteam;     --Updates the view, not the database itself
update scrumteam set salary = salary + 5000;        --Updates the database, not only view
select * from scrumteam;
update scrumteam set salary = salary + 2500 where age >= 30;        --Updates value based on condition
update scrumteam set salary = salary + 5000 where jobTitle = 'QA';
select * from scrumteam;
commit;
delete from scrumteam where firstName = 'Winnie';       --Deletes the column based on condition
select * from scrumteam;
commit;
alter table scrumteam add gender varchar(10);
select * from scrumteam;
update scrumteam set gender = 'Male';
select * from scrumteam;
alter table scrumteam add lastname varchar(20);
select * from scrumteam;
alter table scrumteam drop column lastname;
select * from scrumteam;
alter table scrumteam rename column empId to emp_id;
alter table scrumteam rename column firstname to first_name;
alter table scrumteam rename column jobTitle to job_title;
alter table scrumteam rename column salary to annual_salary;
select * from scrumteam;
alter table scrumteam rename to agile_team;
select * from scrumteam;        --That won't work, because we renamed the table
select * from agile_team;
commit;
truncate table agile_team;      --Removes all data from table
select * from agile_team;
drop table agile_team;      --Removes the whole table, not only data
select * from agile_team;
commit;