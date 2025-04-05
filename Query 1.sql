DROP TABLE student;
CREATE DATABASE student;
USE student;
-- create data and  before create table we can create abve database 
CREATE TABLE student(student_id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(20) NOT NULL,major VARCHAR(20));
SELECT * FROM student;
INSERT INTO student VALUES(1,'Jack','Biology');
INSERT INTO student VALUES(2,'rohan','physics');
INSERT INTO student VALUES(3,'pratham','computer');
INSERT INTO student VALUES(4,'jay','security');
INSERT INTO student(name,major) VALUES('harpal','biology');
INSERT INTO student VALUES(6,'jay','SECURITY');



