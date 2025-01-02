#selecting all columns from the employees table

SELECT 
    *
FROM
    employees; 
    
#selecting first name and last name from employees table 

SELECT 
    first_name, last_name
FROM
    employees; 
    
#selecting all data from the departments table

SELECT 
    *
FROM
    departments; 

#selecting the dept_no column from the departments table 

SELECT 
    dept_no
FROM
    departments;
 
#WHERE CLAUSE

#selecting information about employees named 'Denis' from employees table
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis';

#selecting information about employees named 'Elvis' from employees table

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Elvis'; 
    
#AND OPERATOR

#selecting records from the employees table where name is 'Denis' and gender is 'M'

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis' AND gender = 'M'; 
    
#Retrieving a list with all female employees whose first name is Kellie

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Kellie' and gender = 'F'; 
    
#OR OPERATOR

select * from employees
where
first_name = 'Denis' or gender = 'F';

#Retrieving a list of all employees whose first name is either Kellie or Aruna

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Kellie'
        OR first_name = 'Aruna'; 
        
#OPERATOR PRECEDENCE

SELECT 
    *
FROM
    employees
WHERE
    last_name = 'Denis'
        AND (gender = 'M' OR gender = 'F'); 

#Retrieving a list with all female employees whose first name is either Kellie or Aruna

SELECT 
    *
FROM
    employees
WHERE
    (first_name = 'Kellie'
        OR first_name = 'Aruna')
        AND gender = 'F'; 

#IN Operator

SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Cathie' , 'Mark', 'Nathan');
    
#NOT IN OPERATOR

SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('Cathie' , 'Mark', 'Nathan');


#Using the IN operator to select all individuals from the 'employees' table whose first name is either 'Dennis' or 'Elvis'

SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Denis' , 'Elvis'); 

#Extracting all records from the 'employees' table, aside from those with employees named John, Mark, or Jacob

SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('John' , 'Mark', 'Jacob'); 
    
#LIKE-NOT LIKE OPERATOR

/*Using the LIKE operator to select the data about all individuals whose first name starts with 'Mark'
and the name can be succeeded by any sequence of characters*/

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mark%');

#Retrieving a list of all employees who have been hired in the year 2000; 

select * from employees
where hire_date LIKE ('2000%'); 

#Retrieving a list of employees whose employee number is written in 5 characters, and starts with '1000'

SELECT 
    *
FROM
    employees
WHERE
    emp_no LIKE ('1000_');

/*Using the like operator with the _ character to retrieve all records from the employees table for employees born in the 1950s*/

select * from employees
where birth_date like ('%195_%');


#WILDCARD CHARACTERS

#Extracting all individuals from the 'employees' table whose first name contains 'Jack'

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%Jack%'); 

#Extracting a list containing the employees that does not contain 'Jack'

SELECT 
    *
FROM
    employees
WHERE
    first_name NOT LIKE ('%Jack%');
    
#BETWEEN - AND - 

#Selecting all the information from the 'salaries' table regarding contracts from 66000 to 77000 dollars per year

select * from salaries
where salary between 66000 and 77000; 

#Retrieve a list with all individuals whose employee number is not between '10004' and '10012'

select * from employees
where emp_no not between '10004' and '10012'; 

#Retrieving the names of all departments with numbers betwee 'd003' and 'd006'

select * from departments
where dept_no between 'd003' and 'd006';