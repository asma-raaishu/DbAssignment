CREATE DATABASE DBMS1
USE DBMS1
/*1*/CREATE TABLE EMP1(ID int(2),Name varchar(10),Basic float,Designation varchar(10) ,Age int(2))
/*2*/alter table emp1 modify Basic int 
/*3*/ alter table emp1 modify Name varchar(15)
/*4*/ create table EMP_trainee(Emp_id int(2),Name varchar(15),Basic int,Designation varchar(10),Age int (2))
/*5*/insert into emp1 values(1, 'Rohit', 6700, 'Manager', 24),
(2, 'Sunil', 6200, 'Engineer', 27),
(3, 'Payal', 6300, 'Engineer', 25),
(4, 'Kunal', 6700, 'Trainee', 28),
(5, 'Sunita', 6230, 'Trainee', 26),
(6, 'Bimal', 7000, 'Trainee', 25)
/*6*/insert into emp_trainee values(4, 'Kunal', 6700, 'Trainee', 28),
(5, 'Sunita', 6230, 'Trainee', 26),
(6, 'Bimal', 7000, 'Trainee', 25)
/*7*/desc emp1
desc emp_trainee
select*from emp1
select*from emp_trainee
/*8*/alter table emp1 add skills varchar(10)
alter table emp1 add DOJ date
alter table Emp_trainee modify Designation varchar(30)
/*9*/update emp_trainee set Designation='Programmer_trainee'where Emp_id=4
/*9*/update emp_trainee set Designation='Programmer_trainee'where Emp_id=5
/*9*/update emp_trainee set Designation='Programmer_trainee'where Emp_id=6
/*10*/ update emp1 set Name=case when ID=1 then 'Kumar' when ID=2 then 'Sujatha' else Name end /*case when else statement is used*/
/*11*/ alter table emp1 modify ID varchar(5)
/*12*/select*from emp1
select*from emp_trainee
/*13*/alter table emp1 rename column Age to Age_in_years
/*14*/ delete from emp1 where Designation='trainee'
/*15*/ alter table emp_trainee drop column Age
/*16*/ alter table emp_trainee drop column Basic,drop column Emp_id
/*17*/ alter table emp1 rename Emp_Mgr_Engr
select*from emp_mgr_engr
describe emp_mgr_engr
/*18*/drop table emp_trainee
/*19*/truncate table emp_mgr_