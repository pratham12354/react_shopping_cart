DROP TABLE student_basic_query;
CREATE DATABASE student_basic_query;
USE student_basic_query;
CREATE TABLE student_basic_query(student_id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(20), major VARCHAR(20));

-- All select regarding functions
SELECT name 
 FROM student_basic_query;
 SELECT name,major
 FROM student_basic_query;
 SELECT name,major
 FROM student_basic_query
 ORDER BY name ASC;
  SELECT *
 FROM student_basic_query
 ORDER BY student_id DESC;
SELECT *
FROM student_basic_query
ORDER BY student_id DESC
 LIMIT 2;
 SELECT name,major
FROM student_basic_query
WHERE major='DATA SCIENCE' or major = 'cyber security';
 SELECT name,student_id
FROM student_basic_query
WHERE name IN ('PRATHAM','jay','krutika','harpal');
 SELECT *
 FROM student_basic_query
 WHERE student_id <= 3;



-- instert the values in table
INSERT INTO student_basic_query(name,major) VALUES('PRATHAM','DATA SCIENCE'); 
INSERT INTO student_basic_query(name,major) VALUES('jay','cyber security'); 
INSERT INTO student_basic_query(name,major) VALUES('harpal','biolopgy'); 
INSERT INTO student_basic_query(name,major) VALUES('dhruvil','cyber security'); 
INSERT INTO student_basic_query(name,major) VALUES('smit','IT'); 
INSERT INTO student_basic_query(name,major) VALUES('krutika','gaming'); 