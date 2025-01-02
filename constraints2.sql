#Running a query to create the 'sales' table

create table sales
(
	purchase_number int auto_increment, 
    date_of_purchase date,
    customer_id int, 
    item_code varchar(10),
	primary key (purchase_number)
);

#Dropping the 'customers' table

drop table customers

#Recreating the 'customers' table

create table customers(
	customer_id INT, 
    first_name varchar(255), 
    last_name varchar(255),
    email_address varchar(255),
    number_of_complaints int,
primary key(customer_id)
); 

#Creating the 'items' table

create table items (
item_code varchar(255),
item varchar(255),
unit_price numeric(10,2),
company_id varchar(255)
); 

#Creating the 'companies' table

create table companies(
company_id varchar(255),
company_name varchar(255), 
headquarters_phone_number int(12)
); 

#PRIMARY KEY

#Adding item_code as a primary key on 'items' table

alter table items
add primary key (item_code);

#Adding company_id as a primary key on 'companies' table

alter table companies
add primary key (company_id);

#FOREIGN KEY

#Adding customer_id as a foreign key on sales table

alter table sales
add foreign key (customer_id) references customers(customer_id) on delete cascade; 

#Dropping the 'sales', 'customers', 'items' and 'companies' table from the sales database

drop table sales;
drop table customers;
drop table items;
drop table companies; 

#UNIQUE CONSTRAINT

#Adding the email_address column as a unique key to the customers table

create table customers (
	customer_id int,
    first_name varchar(255),
    last_name varchar(255),
    email_address varchar(255),
    number_of_complaints int, 
primary key (customer_id)
); 

alter table customers
add unique key (email_address); 

#Deleting the unique key

alter table customers
drop index email_address; 

#Dropping the customers table and recreating it

drop table customers; 

create table customers(
	customer_id int auto_increment, 
    first_name varchar(255),
    last_name varchar(255),
    email_address varchar(255),
    number_of_complaints int, 
primary key (customer_id)
); 


#Adding a 'gender' column in the customers table and inserting a new record in it. 

alter table customers
add column gender ENUM ('M', 'F') after last_name; 

insert into customers(first_name, last_name, gender, email_address, number_of_complaints)
values ('John', 'Mackinley', 'M', 'john.mckinley@365careers.com', 0);


#DEFAULT CONSTRAINT

#adding a default constraint of 0 to the number_of_complaints column of customers table
alter table customers
change column number_of_complaints number_of_complaints int default 0; 

#creating a new customer and adding values for first_name, last_name, and gender
insert into customers(first_name, last_name, gender)
values ('Peter', 'Figaro', 'M');

select * from customers;  

#Dropping the default constraint

alter table customers 
alter column number_of_complaints drop default;


#Recreating the 'companies' table

create table companies(
	company_id varchar (255),
    company_name varchar (255) default 'X', 
    headquarters_phone_number varchar(255),
unique key (headquarters_phone_number)
); 

alter table companies
add primary key (company_id);

drop table companies; 

#NOT NULL Constraint

#creating the table 'companies' and adding a not null constraint to the company name

create table companies
(
	company_id int auto_increment,
    headquarters_phone_number varchar(255),
    company_name varchar(255) not null,
primary key (company_id)
); 

#modifying the not null constraint to null 
alter table companies
modify company_name varchar(255) null; 

#Changing the constraint to not null again

alter table companies
change column company_name company_name varchar(255) not null;

#Inserting values into the 'companies' table

insert into companies(headquarters_phone_number, company_name)
values('+1 (202) 555-0196', 'Company A');

select * from companies;  


#adding the null constraint to the headquarters_phone_number field in the 'companies' table

alter table companies
modify headquarters_phone_number varchar(255) null;    

#dropping the constraint

alter table companies
change column headquarters_phone_number headquarters_phone_number varchar(255) not null; 
