CREATE DATABASE XYZ_COMPANY;
USE XYZ_COMPANY;
CREATE TABLE employee(
ID INT PRIMARY KEY,
NAME VARCHAR(70),
SALARY FLOAT


);
INSERT INTO employee
(ID, NAME, SALARY)
VALUES
(1,"GAFRU",20000),
(2,"ADAM",10000),
(3,"ROHAN",30000),
(4,"SANJEEDA",2000);

SELECT * FROM employee