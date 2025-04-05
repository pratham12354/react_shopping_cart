DROP TABLE emploee;
DROP TABLE branch;
DROP TABLE clients;
DROP TABLE works_with;
DROP TABLE branch_supplier;

CREATE DATABASE employee;
CREATE DATABASE branch;
CREATE DATABASE clients;
CREATE DATABASE works_with;
CREATE DATABASE  branch_supplier;

USE employee;
USE branch;
USE clients;
USE works_with;
USE branch_supplier;

CREATE TABLE employee(
emp_id INT PRIMARY KEY,
first_name VARCHAR(40),
last_name VARCHAR(40),
birth_date DATE,
sex VARCHAR(1),
salary INT,
super_id INT,
branch_id INT
);

CREATE TABLE branch(
branch_id INT PRIMARY KEY,
branch_name VARCHAR(40),
mgr_id INT,
mgr_start_date DATE,
FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL
);

CREATE TABLE clients(
client_id INT PRIMARY KEY,
client_name VARCHAR(40),
branch_id INT,
FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE SET NULL
);

CREATE TABLE works_with(
emp_id INT,
client_id INT,
total_salary INT,
PRIMARY KEY(emp_id, client_id),
FOREIGN KEY (emp_id) REFERENCES employee(emp_id) ON DELETE CASCADE,
FOREIGN KEY (client_id) REFERENCES clients(client_id) ON DELETE CASCADE
);

CREATE TABLE branch_supplier(
branch_id INT,
supplier_name VARCHAR(40),
supply_type VARCHAR(40),
PRIMARY KEY(branch_id, supplier_name),
FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE
);

ALTER TABLE employee
ADD FOREIGN KEY(branch_id)
REFERENCES branch(branch_id)
ON DELETE SET NULL;
ALTER TABLE employee
ADD FOREIGN KEY(super_id)
REFERENCES employee(emp_id)
ON DELETE SET NULL;

SELECT * FROM employee;
SELECT * FROM branch;
SELECT * FROM clients;
SELECT * FROM works_with;
SELECT * FROM branch_supplier;

-- COROPORATE
INSERT INTO employee VALUES(100, 'David', 'Wallace', '1967-11-17', 'M', 250000, NULL, NULL );
INSERT INTO branch VALUES(1, 'corporate', 100, '2006-02-09');
UPDATE employee
SET branch_id = 1
WHERE emp_id = 100;
INSERT INTO employee VALUES(101, 'Jan', 'Levension', '1961-05-11', 'F', 110000, 100, 1 );

-- scranton
INSERT INTO employee VALUES(102, 'Michale', 'Scott', '1964-03-15', 'M', 75000, 100, NULL);
INSERT INTO branch VALUES(2, 'Scranton', 102, '2006-02-06');
UPDATE employee
SET branch_id = 2
WHERE emp_id = 102;
INSERT INTO employee VALUES(103, 'Angelia', 'Martin', '1971-06-25', 'F', 63000, 102, 2);
INSERT INTO employee VALUES(104, 'Kelly', 'Kapoor', '1980-02-05', 'F', 55000, 102, 2);
INSERT INTO employee VALUES(105, 'Stanely', 'Hudson', '1958-02-19', 'M', 69000, 102, 2);

-- Stamford
INSERT INTO employee VALUES(106, 'Josh', 'porter', '1969-09-05', 'M',  78000, 100, NULL);
INSERT INTO branch VALUES(3, 'Stamford', 106, '1996-02-13');
UPDATE employee
SET branch_id = 3
WHERE emp_id = 106;
INSERT INTO employee VALUES(107, 'Andy', 'Bernard', '1973-07-22', 'M', 65000, 106, 3);
INSERT INTO employee VALUES(108, 'Jim', 'Halpert', '1978-10-01', 'M', 71000, 106, 3);

-- client
INSERT INTO clients VALUES(400, 'Durmore Highschool', 2);
INSERT INTO clients VALUES(401, 'Lackwon Country', 2);
INSERT INTO clients VALUES(402, 'FedEX', 3);
INSERT INTO clients VALUES(403, 'John Daly Law LLC', 3);
INSERT INTO clients VALUES(404, 'Scarten Whitepages', 2);
INSERT INTO clients VALUES(405, 'Times Newspaper', 3);
INSERT INTO clients VALUES(406, 'FedEX', 2);

-- Works_with
INSERT INTO works_with VALUES(105, 400, 55000);
INSERT INTO works_with VALUES(102, 401, 267000);
INSERT INTO works_with VALUES(108, 402, 22500);
INSERT INTO works_with VALUES(107, 403, 5000);
INSERT INTO works_with VALUES(108, 403, 12000);
INSERT INTO works_with VALUES(105, 404, 33000);
INSERT INTO works_with VALUES(107, 405, 26000);
INSERT INTO works_with VALUES(102, 406, 105000);
INSERT INTO works_with VALUES(105, 406, 10000);

-- Branch Supplier
INSERT INTO branch_supplier VALUES(2, 'Hammer Mil', 'paper');
INSERT INTO branch_supplier VALUES(2, 'Uni-Ball', 'Writing');
INSERT INTO branch_supplier VALUES(3, 'Patrion Paper', 'paper');
INSERT INTO branch_supplier VALUES(2, 'J T Forms-Labels', 'Custom Forms');
INSERT INTO branch_supplier VALUES(3, 'Uni-Ball', 'Writing');
INSERT INTO branch_supplier VALUES(3, 'Hammer Mil', 'paper');
INSERT INTO branch_supplier VALUES(3, 'Stamford Labels', 'Custom Forms');
