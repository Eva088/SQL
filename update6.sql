#UPDATE


SELECT 
    *
FROM
    employees.employees
WHERE
    emp_no = 999901;
    

UPDATE employees.employees 
SET 
    first_name = 'Stella',
    last_name = 'Parkinson',
    birth_date = '1990-12-31',
    gender = 'F'
WHERE
    emp_no = 999901;
    

#UPDATING THE DEPARTMENTS_DUP TABLE


CREATE TABLE departments_dup(
    dept_no VARCHAR(4) NOT NULL,
    dept_name VARCHAR(40)
);

insert into departments_dup(dept_no, dept_name)
select * from departments; 

use employees; 

update departments_dup
set
dept_no = 'd011',
dept_name = 'Quality Control';

select * from employees.departments;

#changing the business analysis department to data analysis

select * from departments; 

update departments
set 
	dept_name = 'Data Analysis'
	where dept_no = 'd010';

select * from departments; 


#Updating the record of employee number 10003 from the employees table

select * from employees;

UPDATE employees 
SET 
    first_name = 'Juan',
    last_name = 'Speed',
    birth_date = '1979-05-05'
WHERE
    emp_no = '10003';
    
select * from employees
where emp_no = '10003';


select * from departments
order by dept_no; 