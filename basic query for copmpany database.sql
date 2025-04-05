-- find all employees
SELECT * 
FROM employee;

-- find all employees ordered by salary
SELECT * 
FROM employee
ORDER BY salary; 

-- find all employees ordered by sex then name
SELECT * 
FROM employee
ORDER BY sex, first_name, last_name;

-- find first 5 employees in the table
SELECT * 
FROM employee
LIMIT 5;

-- find first and last names of all employees
SELECT first_name, last_name
FROM employee;

-- find forename and surname of all employees
SELECT first_name as forename, last_name as surname 
FROM employee;

-- find out all the different gender
SELECT DISTINCT sex
FROM employee;
  
-- find the number of employees
SELECT COUNT(emp_id)
FROM employee;

-- find the number of female employees born after 1970
SELECT COUNT(emp_id)
FROM employee
WHERE sex = 'F' AND birth_date > 1971-01-01;

-- find the average of all employee's salaries
SELECT AVG(salary)
FROM employee;

-- find the sum of all employee's salaries
SELECT SUM(salary)
FROM employee; 

-- find out how many males and femmales there are
SELECT COUNT(sex), sex
FROM employee
GROUP BY sex;

-- find the total sales of each salesman
SELECT SUM(total_salary), emp_id
FROM works_with
GROUP BY emp_id;