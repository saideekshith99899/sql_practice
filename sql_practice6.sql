
CREATE DATABASE elegancee;
USE elegancee;
CREATE TABLE student (
student_id INT PRIMARY KEY,
name VARCHAR(20),
major VARCHAR(20)
);

DESCRIBE student;

SELECT * FROM student;

ALTER TABLE student 
ADD gpa DECIMAL;


ALTER TABLE student
DROP gpa;

INSERT INTO student( student_id, name,major)
VALUES
(1,"sai","ece"),
(2,"rohit","ece");

INSERT INTO student VALUES(3,"nitin","ece");


SET SQL_SAFE_UPDATES = 0;

UPDATE student 
SET major = "ECE"
WHERE major = 'ece';


UPDATE student
SET major = "CSE"
WHERE student_id  = 3;

SELECT * FROM student;

DELETE FROM student
WHERE student_id = 3;


DELETE FROM student
WHERE name = 'sai';

INSERT INTO student VALUES(1,"sai", "ece");
INSERT INTO student VALUES(3,"sai nikhil", "ece");
INSERT INTO student VALUES(4,"sairam", "ece");
INSERT INTO student VALUES(5,"sai deekshith", "ece");


SELECT * FROM student
ORDER BY name;

SELECT * FROM student
ORDER BY name DESC
LIMIT 3;

SELECT * FROM student;


