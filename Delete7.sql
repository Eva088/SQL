#Delete, Commit, Rollback

use employees;

commit; 

SELECT 
    *
FROM
    titles
WHERE
    emp_no = 999903; 

DELETE FROM employees 
WHERE
    emp_no = 999903;

rollback; 

SELECT 
    *
FROM
    titles
WHERE
    emp_no = 999903;

SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;

delete from departments_dup; #use where clause or else all the rows will be deleted



select * from departments_dup;

rollback;


#Removing the department number 10 recrod from the departments table

DELETE FROM departments 
WHERE
    dept_no = 'd010';

SELECT 
    *
FROM
    departments
WHERE
    dept_no = 'd010';

rollback;


