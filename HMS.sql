#CREATING DATABASE
create database HOTELMANAGEMENTSYSTEM;

#CREATING TABLE
create table customers
(Cust_ID int, Cust_Name varchar(30), Cust_City varchar(25), Cust_RoomNo int, CheckIn_Time datetime);

#RANDOM DATA
insert into customers
(Cust_ID, Cust_Name, Cust_City, Cust_RoomNo, CheckIn_Time) values
(1,"Reashme","Minneapolis",110,'2022-12-05 10:50:30'),
(2,"Savy","NewJersey",120,'2022-12-05 10:51:32'),
(3,"Naima","Newyork",130,'2022-12-05 10:55:35'),
(4,"Anu","California",140,'2022-12-05 11:00:01'),
(5,"Abhi","SFO",150,'2022-12-05 11:30:10');

#Printing the table
select * from customers;


#Select cities
select distinct city
from customers; 

#count of cities
select count(distinct city)
from customers;

#Least number of quantity
Select min(quantity)
from order_details;

#Highest number of quantity
select max(quantity)
from order_details;

#Total number of quantity
select sum(quantity)
from order_details;

#average of quantity
select avg(quantity)
from order_details;

#printing name of the product in products table
select ProductName 
from products
limit 5,10;

#suppliers table
select *
from suppliers
where suppliername like '_a%';

#details of cutomer who doesn't stay in USA and canada
select *
from customers
where country not in ('USA','Canada');

#Orders between 2000 and 2001
select *
from orders
where (orderdate between '1996-01-01' and '1996-12-31') order by orderdate desc;

#Distinct city and count
select City, count(*) as count
from Customers group by City;

#exclude sanjay and sonia
select * 
from employees
where firstname not in ('sanjay','sonia');

#duplicate for suppliers table
create table supplierdetail as select * from suppliers;

select *
from supplierdetail;

#Delete country is Venezuela
delete from customers where country='Venezuela';
select * 
from customers


