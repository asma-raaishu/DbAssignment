CREATE DATABASE DBMS4
USE DBMS4
/*1*/CREATE TABLE CUSTOMERS(Cust_id varchar(10) PRIMARY KEY,  Fname Varchar(30) not null, Lname varchar(30), Area char(2) not null, Phone int)
insert into customers values('A01', 'Ivan', 'Ross', 'SA', 6125467),
('A02' ,'Vandana', 'Ray', 'MU', 5560379),('A03', 'Pramada', 'Jauguste', 'DA', 4560389 ),('A04', 'Basu', 'Navindi', 'BA', 6125401),
('A05', 'Ravi', 'Shridhar', 'NA', null),('A06', 'Rukmini', 'Aiyer', 'GH', 5125274)
select*from customers
/*1*/create table Movie (Mv_no int primary key, Cust_id varchar(10), Title varchar(50) not null,  Star char(2) not null,
 Price int check(100<=Price<=250),foreign key(Cust_id) references Customers(Cust_id) on delete cascade)  
insert into movie values(1, 'A02', 'Bloody', 'JC', 181),
(2, 'A04', 'The Firm', 'TC', 200),(3, 'A01', 'Pretty Woman', 'RG', 151),(4, 'A06', 'Home Alone', 'MC', 150),(5, 'A05', 'The Fugitive', 'MF', 200),
(6, 'A03', 'Coma', 'MD', 100),(7, 'A02', 'Dracula', 'GO', 150),
(8, 'A06', 'Quick Change','BM', 100),(9, 'A03', 'Gone with the Wind','CB', 200),(10, 'A05', 'Carry on Doctor','LP', 100)
select*from movie
/*5*/select Title from movie where (100<=Price<=200)
/*6*/select Cust_id from movie where (Star='JC' or Star='MC' or Star='TC')
/*7*/select*from customers where Area like '%A%'
/*8*/select Title from movie where (Price<=180) and (Title like '______')
/*9*/ select Title,Price,Price*(10/100) as incremented_price from movie 
/*10*/select concat(Fname," ",Lname,' stays in ',Area,' and his phone number is ',Phone) as customer_details from customers
/*11*/alter table customers modify Lname varchar(30) not null
/*12*/select concat(Fname," ",Lname) as customer_name from customers where Phone is null
/*13*/update customers set phone=6784674 where cust_id='A05'
/*14*/select distinct cust_id from customers
/*15*/alter table movie modify Star char(2) null
/*16*/ delete from customers where Fname='Ivan'
/*17*/ delete from movie where Title='Bloody'
/*18*/drop table customers
/*19*/drop table movie