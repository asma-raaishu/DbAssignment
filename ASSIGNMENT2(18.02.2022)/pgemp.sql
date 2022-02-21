create database pgemp
use pgemp
create table demp(emp_id int primary key,first_name varchar(255),
phno varchar(255),job_id varchar(255),salary int,department_id int);
insert into demp values(3204,'saran','8755675322','data-analyst',50000,2023);
select * from demp
SELECT MAX(salary)                     /* query to get the maximum salary of an employee working as a Programmer.*/
FROM demp
WHERE job_id = 'IT-programmer';
