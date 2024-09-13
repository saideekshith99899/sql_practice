
CREATE DATABASE elegance;
USE elegance;
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


INSERT INTO student VALUES(3,"nitin","ECE");

