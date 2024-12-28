create database if not exists sales; 

USE sales; #indicates you want to apply your queries to this database

#Running a query to create the 'sales' table

create table sales (
purchase_number INT Not null primary key auto_increment,
date_of_purchase Date Not Null,
customer_id INT,
item_code VARCHAR(10) Not Null
);

#Running a query to create the 'customers' table

create table customers(
customer_id INT,
first_name VARCHAR(255), 
last_name VARCHAR(255),
email_address VARCHAR(255),
number_of_complaints int
);

#Selecting all the records from the sales table

##Option 1
use sales;
select * from sales; 

##Option 2
select * from sales.sales; 

#Deleting the 'sales' table 

drop table sales; 
