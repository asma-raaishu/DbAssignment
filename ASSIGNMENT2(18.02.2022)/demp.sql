create database deptemp
use deptemp
create table demp(emp_id int,first_name varchar(255),email varchar(255),
phno varchar(255),hire_date date,job_id int not null primary key,salary int,department_id int);
insert into demp values(101,'vikas','vikas@gmail.com','8765679831','2001-12-02',2001,30000,1200);
insert into demp values(102,'varun','varun@gmail.com','9076579432','2004-02-02',2002,32000,1300);
insert into demp values(103,'kavin','kavin@yahoo.com','7765879031','2003-10-22',2003,45000,1400);
insert into demp values(104,'sheela','sheela@gmail.com','9995679831','2002-08-26',2004,36000,1500);
insert into demp values(105,'sahana','sahana@yahoo.com','9899679831','2004-09-07',2005,40000,1600);
insert into demp values(106,'sam','sam@gmail.com','9765679831','2003-10-12',2006,36000,1700);
insert into demp values(107,'shamu','shamu@gmail.com','8865679831','2003-10-12',2007,46000,1800);
insert into demp values(108,'karan','karan@gmail.com','9765679832','2001-12-11',2008,56000,1900);
insert into demp values(109,'samantha','samantha@gmail.com','9965679831','2002-07-13',2009,46000,2000);
insert into demp values(113,'sara','sara@gmail.com','8765679831','2004-08-22',2013,66000,1300);
                                                                /*Write a query to get the average salary for 
                                                                all departments employing more than 3 employees*/
select * from demp;
update demp set department_id=1200 where emp_id=111
SELECT department_id, AVG(salary), COUNT(*) 
FROM demp 
GROUP BY department_id
HAVING COUNT(*) >3;