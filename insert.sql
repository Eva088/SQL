#INSERT

insert into employees(emp_no, birth_date, first_name, last_name, gender, hire_date)
values
(999901, '1986-04-21', 'John', 'Smith', 'M', '2011-01-01');

select * from employees
order by emp_no desc; 




INSERT INTO employees

VALUES

(

    999903,

    '1977-09-14',

    'Johnathan',

    'Creek',

    'M',

    '1999-01-01'

);

insert into titles(emp_no, title, from_date)
values(999903, 'Senior Engineer', '1997-10-01');


#Sorting the records from the titles table in descending order

select * from titles
order by emp_no desc; 


select * from dept_emp;

insert into dept_emp(emp_no, dept_no, from_date, to_date)
values(999903, 'd005', '1997-10-1','9999-01-01');

select * from departments;

#creating a new department called 'Business Analysis' and registering it under number 'd010'

insert into departments(dept_no, dept_name)
values('d010', 'Business Analysis');

#creating the 'dept_emp_dup' table

CREATE TABLE dept_emp_dup (
    emp_no INT NOT NULL,
    dept_no CHAR(4) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
    PRIMARY KEY (emp_no , dept_no)
);

#Inserting the entre data from the dept_emp into dept_emp_dup table

insert into dept_emp_dup(emp_no, dept_no, from_date, to_date)
select * from dept_emp;

select * from dept_emp_dup;
