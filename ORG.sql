create database ORG
show databases
use ORG
create table Employee(Employee_id int not null primary key auto_increment,
First_Name varchar(255),Last_Name varchar(255),Salary int,Joining_date datetime,
department varchar(255));
insert into Employee values(008,'Geetika','Chauhan',90000,'14-04-11 09.00.00','Admin');
Select*from  Employee
update Employee set department='HR' where Employee_id='001';
CREATE TABLE Bonus (Employee_REF_ID INT,BONUS_AMOUNT INT,BONUS_DATE DATETIME,
FOREIGN KEY (Employee_REF_ID)REFERENCES Employee(Employee_ID)
ON DELETE CASCADE);
insert into Bonus values(002,3500,'16-06-11');
select * from Bonus
CREATE TABLE Title (Employee_REF_ID INT,Employee_TITLE CHAR(25),
AFFECTED_FROM DATETIME,FOREIGN KEY (Employee_REF_ID)
REFERENCES Employee(Employee_ID)ON DELETE CASCADE);
insert into Title values(003,'Lead','16-06-11');
select * from Title
select First_Name as Employee_name from Employee/* an SQL query to fetch “FIRST_NAME” from Employee table using the alias name as <EMPLOYEE_NAME>.*/
select upper(First_Name) from Employee/* an SQL query to fetch “FIRST_NAME” from EMPLOYEE table in upper case.*/
Select distinct Department from Employee/*e an SQL query to fetch unique values of DEPARTMENT from EMPLOYEE table.*/
select substring(First_Name,1,3)from Employee/*an SQL query to print the first three characters of FIRST_NAME from EMPLOYEE table.*/
select instr(First_Name,BINARY'a')from Employee where First_Name='Amitabh'/*an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from EMPLOYEE table.*/
select RTRIM(First_Name)from Employee/* an SQL query to print the FIRST_NAME from EMPLOYEE table after removing white spaces from the right side.*/
select ltrim(department)from Employee/*an SQL query to print the DEPARTMENT from EMPLOYEE table after removing white spaces from the left side*/
select distinct length(department)from Employee/* an SQL query that fetches the unique values of DEPARTMENT from EMPLOYEE table and prints its length.*/
select replace(First_Name,'a','A')from Employee/* an SQL query to print the FIRST_NAME from EMPLOYEE table after replacing ‘a’ with ‘A’.*/
select concat(First_Name,' ',Last_Name) as 'Complete_Name' from Employee/*an SQL query to print the FIRST_NAME and LAST_NAME from EMPLOYEE table into a single column COMPLETE_NAME. A space char should separate them.*/
select*from Employee order by First_Name asc/*an SQL query to print all EMPLOYEE details from the EMPLOYEE table order by FIRST_NAME Ascending.*/
select*from Employee order by department desc, First_Name asc/* an SQL query to print all EMPLOYEE details from the EMPLOYEE table order by FIRST_NAME Ascending and DEPARTMENT Descending*/
select*from Employee where First_Name in ('Vipul','Satish')/* an SQL query to print details for EMPLOYEEs with the first name as “Vipul” and “Satish” from EMPLOYEE table.*/
select *from Employee where First_Name not in('Vipul','Satish')/*an SQL query to print details of EMPLOYEEs excluding first names, “Vipul” and “Satish” from EMPLOYEE table.*/
select*from employee where department like 'Admin%'/*an SQL query to print details of EMPLOYEEs with DEPARTMENT name as “Admin”.*/
select*from Employee where First_Name like '%a%'/*an SQL query to print details of the EMPLOYEEs whose FIRST_NAME contains ‘a’.*/
select*from Employee where First_Name like '%a'/*an SQL query to print details of the EMPLOYEEs whose FIRST_NAME ends with ‘a’.*/
select*from Employee where First_Name like'_____h'/*an SQL query to print details of the EMPLOYEEs whose FIRST_NAME ends with ‘h’ and contains six alphabets.*/
select*from Employee where salary between 100000 and 500000/*an SQL query to print details of the EMPLOYEEs whose SALARY lies between 100000 and 500000.*/
select*from Employee where year(joining_date)=2014 and month(joining_date)=2/* an SQL query to print details of the EMPLOYEEs who have joined in Feb’2014.*/
select count(*) from Employee where department='Admin'/* an SQL query to fetch the count of employees working in the department ‘Admin’.*/
select concat(First_Name,'',Last_Name) as Employee_Name,salary from Employee/*an SQL query to fetch EMPLOYEE names with salaries >= 50000 and <= 100000.*/
where Employee_id in (select Employee_id from Employee where salary between 50000 and 100000)
select department,count(Employee_id) no_of_Employees from Employee group by department order by no_of_Employees desc/*an SQL query to fetch the no. of EMPLOYEEs for each department in the descending order.*/
select distinct w.First_Name,T.Employee_title from Employee w inner join Title T on w.Employee_id=T.Employee_ref_id
and T.Employee_Title in ('Manager')/*an SQL query to fetch duplicate records having matching data in some fields of a table.*/
select Employee_Title,Affected_from,count(*) from Title group by Employee_Title,Affected_from having count(*)>1/* an SQL query to print details of the EMPLOYEEs who are also Managers.*/
select*from Employee where mod(Employee_id,2)<> 0;/*an SQL query to show only odd rows from a table*/
select*from Employee where mod(Employee_id,2)= 0;/*an SQL query to show only even rows from a table*/
select curdate() select now() /*an SQL query to show the current date and time.*/
select*from Employee order by Salary desc limit 10;/* an SQL query to show the top n (say 10) records of a table.*/
SELECT distinct Salary from EMPLOYEE a WHERE 3 >= (SELECT count(distinct Salary) from EMPLOYEE b WHERE a.Salary <= b.Salary) order by a.Salary desc;/* an SQL query to fetch three max salaries from 
a table*/