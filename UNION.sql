-- find a list of employee and branch name
SELECT first_name
FROM employee
UNION
SELECT branch_name
FROM branch;

-- find a list of employee and branch supplier name
SELECT first_name, branch_id
FROM employee
UNION
SELECT supplier_name, branch_id
FROM branch_supplier;

-- find list of all money spent or earned by the company
SELECT SUM(salary)
FROM employee
UNION
SELECT SUM(total_salary)
FROM works_with;