select * from employees;
select e1.first_name, e1.last_name, e1.manager_id, e2.first_name from employees e1 join employees e2 on e1.manager_id = e2.employee_id;
--TODO check this part again. Also there is a class docuport.sql that I'm missing!