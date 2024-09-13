CREATE DATABASE planet;

USE planet;
CREATE TABLE mars (
	student_id INT PRIMARY KEY,
    name VARCHAR(20),
	major VARCHAR(20)

);

DESCRIBE mars;

SELECT * FROM mars;

INSERT INTO mars VALUES (1,"deekshith","ECE");
INSERT INTO mars VALUES ( 2,"rohit","ECE");
INSERT INTO mars VALUES(3, " nitin", "ECE");


SELECT name, major 
FROM mars
WHERE major = 'ECE';

INSERT INTO mars VALUES(4,"sairam","MECH");


SELECT * FROM mars
WHERE student_id <=2
LIMIT 1;

SELECT * 
FROM mars
WHERE name IN ("deekshith");


SELECT * 
FROM mars
WHERE name in ("nitin");


SELECT * 
FROM mars
WHERE major IN ("ECE") AND Student_id >2 ;

SELECT * FROM mars;

DROP TABLE mars;


CREATE TABLE employee (
	emp_id INT PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    birth_day DATE,
    sex VARCHAR(1),
    salary INT,
    super_id INT,
    branch_id INT
);



SELECT * FROM employee;

DESCRIBE employee;

CREATE TABLE branch(
branch_id INT PRIMARY KEY,
branch_name VARCHAR(20),
mgr_id INT,
mgr_start_date DATE,
FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL
);

ALTER TABLE employee
ADD FOREIGN KEY(brance_id)
REFERENCES branch(brance_id)
ON DELETE SET NULL;


ALTER TABLE employee
ADD FOREIGN KEY(super_id)
REFERENCES employee(emp_id)
ON DELETE SET NULL;



