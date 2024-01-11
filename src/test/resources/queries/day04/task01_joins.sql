select * from employees;
create table address (
    address_id integer primary key,
    address varchar(30) not null,
    phone number not null
);
select * from address;
insert into address values (3, '128 Village Dr', 8655680000);
insert into address values (4, '595 Highland Rd', 8655680001);
insert into address values (5, '3033 Goat St', 8655680002);
insert into address values (6, '1024 Ram Creek Dr', 8655680002);
insert into address values (7, '219 Town Avenue', 8655680003);
insert into address values (8, '502 Down St', 8655680004);
select * from address;
commit;
create table customer (
    customer_id integer primary key,
    first_name varchar(20) not null,
    last_name varchar(25) not null,
    address_id integer references address (address_id)
);
select * from customer;
insert into customer values (1, 'Tom', 'Jerry', 3);
insert into customer values (2, 'Winnie', 'Pooh', 4);
insert into customer values (3, 'Mickey', 'Mouse', 5);
insert into customer values (4, 'James', 'Bond', 7);
insert into customer values (5, 'John', 'Smith', 8);
insert into customer values (6, 'Alice', 'Wonder', null);
insert into customer values (7, 'Nami', 'Schneider', null);
select * from customer;
commit;
--Inner join will eliminate non-matching columns, it'll only view matching ones
select first_name, last_name, address, phone from customer inner join address on customer.address_id = address.address_id;
--By default, it'll work as a inner join even if we don't add inner keyword to our syntax
select first_name, last_name, address, phone from customer join address on customer.address_id = address.address_id;
--select first_name, last_name, address, phone, address_id from customer join address on customer.address_id = address.address_id;
select first_name, last_name, address, phone, customer.address_id from customer join address on customer.address_id = address.address_id;
select first_name, last_name, address, phone, address.address_id from customer join address on customer.address_id = address.address_id;
--Left join will eliminate non-matching columns in right table, but will keep everything in left table
select first_name, last_name, address, phone from customer left outer join address on customer.address_id = address.address_id;
--outer keyword is optional
select first_name, last_name, address, phone from customer left join address on customer.address_id = address.address_id;
select first_name, last_name, address, phone from customer left outer join address on customer.address_id = address.address_id where address.address_id is null;
--Right join will eliminate non-matching columns in left table, but will keep everything in right table
select first_name, last_name, address, phone from customer right join address on customer.address_id = address.address_id;
--We can assign shortcut letters for table names
select first_name, last_name, address, phone from customer c right join address a on c.address_id = a.address_id;
--Full join will keep everything in both tables
select first_name, last_name, address, phone from customer c full join address a on c.address_id = a.address_id;