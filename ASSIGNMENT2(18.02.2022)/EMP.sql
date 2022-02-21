create database empdb
use empdb
create table emp(emp_id int,first_name varchar(255),last_name varchar(255),email varchar(255),
phno varchar(255),hire_date date,job_id int not null primary key,salary int,commision_pct varchar(255),
manager_id int, department_id int);
insert into emp values(1008,'yoki','smit','yokismit@yahoo.com','8787456612','2003-07-22',2206,420000,'008',3008,4218);
select*from emp;
                   /*a query to get the job ID and maximum salary of the employees where maximum salary
                                 is greater than or equal to $40000.*/
SELECT job_id, MAX(salary) 
FROM emp                   
GROUP BY job_id 
HAVING MAX(salary) >=40000;