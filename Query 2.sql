DROP TABLE student_update_delete;
CREATE DATABASE student_update_delete;
USE student_update_delete;
CREATE TABLE student_update_delete(student_id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(20), major VARCHAR(20));
SELECT * FROM student_update_delete;
INSERT INTO student_update_delete(name,major) VALUES('PRATHAM','DATA SCIENCE'); 
INSERT INTO student_update_delete(name,major) VALUES('jay','cyber security'); 
INSERT INTO student_update_delete(name,major) VALUES('harpal','biolopgy'); 
INSERT INTO student_update_delete(name,major) VALUES('dhruvil','cyber security'); 
INSERT INTO student_update_delete(name,major) VALUES('smit','IT'); 
INSERT INTO student_update_delete(name,major) VALUES('krutika','gaming'); 

-- update and delete data
SET SQL_SAFE_UPDATES = 0;
UPDATE student_update_delete
SET name = 'payal',major = 'CS'
WHERE student_id = 6;
UPDATE student_update_delete
SET name = 'krutika',major='gaming'
WHERE student_id=7;
DELETE FROM student_update_delete
WHERE student_id=8;






