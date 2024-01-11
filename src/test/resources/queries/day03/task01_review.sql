select * from employees;
select count (distinct location_id) from departments;
select location_id, count (*) from departments group by location_id order by location_id;
select count (location_id) from locations group by country_id;
select region_id, count (*) from countries group by region_id order by region_id desc;