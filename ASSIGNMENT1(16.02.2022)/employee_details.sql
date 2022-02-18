create database employee_details
use employee_details
create table employee(id int primary key auto_increment,manager_name varchar(255),department_name varchar(255));
insert into employee values(008,'alya','hr')
select * from employee
alter table employee add(exp varchar(255),salary int)
update employee set exp='6-yrs' where id=1
update employee set salary=60000 where id=1
select manager_name,department_name,salary from employee
select manager_name,department_name,salary,exp from employee where (exp>5)
/*query to get department name, manager name,
 and salary of the manager for all managers whose experience is more than 5 years.*/