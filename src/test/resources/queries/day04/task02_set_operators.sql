select * from employees;
create table developers (
    id_number integer primary key,
    full_name varchar(30),
    salary integer
);
create table testers (
    id_number integer primary key,
    full_name varchar(30),
    salary integer
);
insert into developers values (1, 'Mike', 125000);
insert into developers values (2, 'John', 105000);
insert into developers values (3, 'Steven', 75000);
insert into developers values (4, 'Maria', 100000);
insert into testers values (1, 'Ahmad', 150000);
insert into testers values (2, 'Nihad', 115000);
insert into testers values (3, 'Aslan', 140000);
insert into testers values (4, 'Gavin', 130000);
insert into testers values (5, 'Steven', 100000);
select * from developers;
select * from testers;
commit;
--Union unites information from different tables, but doesn't take duplicates
select full_name from developers union select full_name from testers;
update developers set full_name = 'Steve';
select full_name from developers union select full_name from testers;
--Union all takes all rows, duplicates included as well
select full_name from developers union all select full_name from testers;
select id_number from developers union all select salary from testers;
select salary from developers minus select salary from testers;
--Minus returns records from first query which aren't presented in second query
select full_name from developers minus select full_name from testers;
--Intersect returns records which are presented in both queries
select full_name from developers intersect select full_name from testers;
