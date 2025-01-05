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


#IS NOT NULL OPERATOR

SELECT 
    *
FROM
    employees
WHERE
    first_name IS NOT NULL; 

#retrieving the names of all departments whose department number value is not null

SELECT 
    dept_name
FROM
    departments
WHERE
    dept_no IS NOT NULL;
    
#Other Comparison Operators

#Retrieving a list with data about all female employees who were hired in the year 2000 or after

SELECT 
    *
FROM
    employees
WHERE
    gender = 'F'
        AND hire_date >= '2000-01-01';

#Extracting a list with all employees' salaries higher than $150,000 per annum

SELECT 
    *
FROM
    salaries
WHERE
    salary > 150000;

#SELECT DISTINCT

SELECT DISTINCT
    (gender)
FROM
    employees; 

#Obtaining a list with all different 'hire dates' from the 'employees' table

SELECT DISTINCT
    (hire_date)
FROM
    employees;
    
#AGGREGATION FUNCTIONS 

/*Applied on multiple rows of a single column of a table and return an output of a single value*/

#Finding the number of employees registered

SELECT 
    COUNT(EMP_NO)
FROM
    EMPLOYEES; 

#Retrieving distinct first names 

SELECT 
    COUNT(DISTINCT (first_name))
FROM
    employees;

#Number of annual contracts with a value >= 100000 registered in the salaries table

select count(*) from salaries
where salary >= 100000; 


#Number of managers in the employees database

SELECT 
    COUNT(*)
FROM
    dept_manager; 
    
#Order By

#Selecting all data from the 'employeees' table and ordering it by the 'hire date' in descending order

SELECT 
    *
FROM
    employees
ORDER BY hire_date DESC; 

/*Retrieving all data from the employees table, sorted so that the data about the youngest individual is at the
top of the list and the data about the eldest is at the bottom*/

SELECT 
    *
FROM
    employees
ORDER BY birth_date DESC;

#Group By, AS

SELECT 
    first_name, COUNT(first_name) as names_count
FROM
    employees
GROUP BY first_name
order by first_name;

#Using Aliases (AS)


select count(emp_no) as emps_with_same_salary, salary from salaries
where salary > 80000
group by salary
order by salary; 

#Having Clause

#Extract all first names that appear more than 250 times in the 'employees' table

select first_name, count(first_name) from employees
group by first_name
having count(first_name) > 250;  

#Selecting all employees whose average salary > 120000

select emp_no, avg(salary) as average_salary from salaries
group by emp_no
having avg(salary) > 120000
order by emp_no;

#Retrieve the average contract salary for each employee whose average salary is higher than $70,000. Sort the output by employee number in ascending order

select emp_no, avg(salary) from salaries
group by emp_no
having avg(salary) > 70000
order by emp_no; 

#Where vs Having

#Extract a list of all names that are encountered less than 200 times. 
#Let the data refer to people hired after the 1st of January 1999

SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
WHERE
    hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name) < 200
order by first_name;

#Select the employee numbers of all individuals who have signed more than 1 contract after the 1st of January 2000.

select emp_no from dept_emp
where from_date > '2000-01-01'
group by emp_no
having count(from_date) > 1
order by emp_no;

#Limit

select * from salaries
order by emp_no desc
limit 5;

#Select the first 100 rows from the 'dept_emp' table

select * from dept_emp
limit 100; 

#Ordered by employee number (emp_no) in descending order, retrieve the first five rows of output from the department-employees table (dept_emp).

select * from dept_emp
order by emp_no desc
limit 5; 