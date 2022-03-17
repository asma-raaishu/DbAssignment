create database Assignment
use Assignment
/*1*/create table CUSTOMER(Cust_id varchar(15),Fname varchar(15),Lname varchar(15),Area char(2),Phone int(10),DOB date,Payment float)
/*2*/DESCRIBE TABLE CUSTOMER
insert into CUSTOMER values('A01', 'Ivan',' Ross', 'SA', 6125467, '1986-01-15', 800.50),
('A02',' Vandana','Ray','MU', 5560379 ,'1987-12-20', 1000.75),
('A03', 'Pramada', 'Jauguste', 'DA', 4560389, '1967-07-25', 500.00),
('A04', 'Basu', 'Navindi', 'BA', 6125401,'1956-02-03',860.00),
('A05', 'Ravi', 'Shridhar', 'NA', null, '1989-02-15', 500.50),
('A06', 'Rukmini', 'Aiyer', 'GH', 5125274, '1987-07-23',1500.5)
/*3*/SELECT *FROM CUSTOMER
/*4*/INSERT INTO CUSTOMER VALUES('A07','Aravind','kanna','IJ',6877459,CURDATE(),660.40)
/*5*/SELECT*FROM CUSTOMER
/*6*/UPDATE CUSTOMER SET Phone=5624567 where Cust_id='A02'
update customer Set Phone=6355876 where Cust_id='A04'
/*7*/update customer SET DOB='1979-04-15' WHERE Cust_id='A03'
update customer SET DOB='1966-03-22' WHERE Cust_id='A05'
/*8*/select*from customer
/*9*/delete from customer where Cust_id='A01'
delete from customer where Cust_id='A05'
/*10*/delete from customer where Cust_id='A02'
/*10*/delete from customer where Cust_id='A03'
/*10*/delete from customer where Cust_id='A04'
/*10*/delete from customer where Cust_id='A06'
/*10*/delete from customer where Cust_id='A07'
/*11*/insert into CUSTOMER values('A01', 'Ivan',' Ross', 'SA', 6125467, '1986-01-15', 800.50),
('A02',' Vandana','Ray','MU', 5560379 ,'1987-12-20', 1000.75),
('A03', 'Pramada', 'Jauguste', 'DA', 4560389, '1967-07-25', 500.00),
('A04', 'Basu', 'Navindi', 'BA', 6125401,'1956-02-03',860.00),
('A05', 'Ravi', 'Shridhar', 'NA', null, '1989-02-15', 500.50)
/*12*/UPDATE CUSTOMER SET Fname='Navjid' where Cust_id='A01'
/*13*/delete from customer where Cust_id='A03' 
select*from customer