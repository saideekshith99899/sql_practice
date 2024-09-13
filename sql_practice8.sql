CREATE DATABASE planett;
USE planett;



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
ADD FOREIGN KEY(branch_id)
REFERENCES branch(branch_id)
ON DELETE SET NULL;


ALTER TABLE employee
ADD FOREIGN KEY(super_id)
REFERENCES employee(emp_id)
ON DELETE SET NULL;


CREATE TABLE client (
client_id INT PRIMARY KEY,
client_name VARCHAR(20),
branch_id INT,
FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE SET NULL

);


CREATE TABLE works_with (
emp_id INT,
client_id INT,
total_sales INT,
PRIMARY KEY(emp_id,client_id),
FOREIGN KEY(emp_id) REFERENCES employee(emp_id) ON DELETE CASCADE,
FOREIGN KEY (client_id) REFERENCES client(client_id) ON DELETE CASCADE

);

CREATE TABLE branch_supplier (

branch_id INT,
supplier_name VARCHAR(20),
supply_type VARCHAR(20),
PRIMARY KEY(branch_id,supplier_name),
FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE

);


INSERT INTO employee VALUES(100,"sai","hello",'2001-10-23','M',40000,NULL,NULL);

INSERT INTO branch VALUES(1,'corporaet',100,'2002-10-23');

UPDATE employee
SET branch_id = 1
WHERE emp_id = 100;

SELECT * FROM employee;


SELECT * FROM branch;


INSERT INTO employee VALUES(101,'jan','levison','2003-12-23','M',4000,100,1);


INSERT INTO employee VALUES(102,'michael','scott','1923-7-3','M',40000,100,2);


DELETE FROM employee WHERE emp_id = 101;

DELETE FROM employee WHERE emp_id = 100;


INSERT INTO employee VALUES(100,"David","Wallace","1967-11-17","M",250000,NULL,1);
INSERT INTO employee VALUES(101,"jan","Levinson","1961-05-11","F",110000,100,1);
INSERT INTO employee VALUES(102,"michale","scott","1961-05-11","M",110000,100,1);
INSERT INTO employee VALUES(103,"angels","martin","1961-05-11","F",110000,100,1);
INSERT INTO employee VALUES(104,"kelly","kapoor","1961-05-11","F",110000,100,1);
INSERT INTO employee VALUES(105,"stanly","Lhudson","1961-05-11","M",110000,100,1);
INSERT INTO employee VALUES(106,"josh","porter","1961-05-11","M",110000,100,1);
INSERT INTO employee VALUES(107,"andy","bernard","1961-05-11","M",110000,100,1);
INSERT INTO employee VALUES(108,"jim","halpert","1961-05-11","M",110000,100,1);

SELECT * FROM employee;

SELECT COUNT(emp_id)
FROM employee;

SELECT COUNT(super_id)
FROM employee;

SELECT COUNT(emp_id)
FROM employee WHERE sex = 'F';

SELECT COUNT(emp_id)
FROM employee WHERE sex = "M";

SELECT AVG(salary)
FROM employee
WHERE sex = "M";


SELECT SUM(salary)
FROM employee;

SELECT SUM(salary) FROM employee WHERE sex ="F";

SELECT SUM(salary) FROM employee WHERE sex ="M";

SELECT COUNT(sex)
FROM employee;


SELECT COUNT(sex) , sex
FROM employee
GROUP BY sex
ORDER BY sex;


SELECT SUM(emp_id), emp_id
FROM works_with
GROUP BY emp_id;


INSERT INTO branch VALUES(10,"corporate",100,"2006-02-09");
INSERT INTO branch VALUES(20,"scranton",102,"1992-04-06");
INSERT INTO branch VALUES(30,"stamford",106,"1998-02-13");

SELECT * FROM branch;

SELECT first_name
FROM employee
UNION
SELECT branch_name 
FROM branch;




