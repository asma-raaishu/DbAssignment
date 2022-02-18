create database age_calculation
use age_calculation
create table students_details(name varchar(255),id int primary key,birthdate date);
insert into students_details values('radha',031,'1992-04-03');
select curdate()
select*from students_details;
select*,year(curdate())-year(birthdate) as age from students_details;           
				