 -- Create the database
CREATE DATABASE univercity;

-- Use the database
USE univercity;

-- Drop existing tables if they exist to start fresh
DROP TABLE IF EXISTS teacher;
DROP TABLE IF EXISTS dept;
DROP TABLE IF EXISTS student;

-- Create the dept table with an id column
CREATE TABLE dept (
    id INT PRIMARY KEY AUTO_INCREMENT,  -- Ensure the id column is present and set as the primary key
    name VARCHAR(70)
);
INSERT INTO dept (id, name)
VALUES
(101, "Science"),
(102, "English"),
(103, "Mathematics");
-- update the value
UPDATE dept
set id=105
where id=101;

select * from dept;


-- Create the student table
CREATE TABLE student (
    roll_no INT PRIMARY KEY,
    name VARCHAR(70),
    marks INT NOT NULL,
    grade VARCHAR(3),
    city CHAR(50)
);

-- Create the teacher table with a foreign key to dept.id
CREATE TABLE teacher (
    id INT PRIMARY KEY,
    name VARCHAR(70),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

INSERT INTO teacher(id, name, dept_id)
VALUES
(101, "John Smith", 101),  -- dept_id 101 exists in dept table
(102, "Jane Doe", 102),    -- dept_id 102 exists in dept table
(103, "Richard Roe", 103); -- dept_id 103 exists in dept table

SELECT * FROM teacher;

insert into teacher(id,name,dept_id)
values
(101, "teacher",101),
(103, "math",103);


-- Insert data into the student table
INSERT INTO student (roll_no, name, marks, grade, city)
VALUES
(1, "Gafrujama", 95, "O", "Bihar"),
(2, "Ayesha", 88, "A", "Delhi"),
(3, "Rajesh", 92, "A", "Mumbai"),
(4, "Neha", 85, "B", "Kolkata"),
(5, "Amit", 78, "B", "Chennai"),
(6, "Priya", 91, "A", "Bangalore"),
(7, "Vikram", 89, "B", "Hyderabad"),
(8, "Sonal", 94, "A", "Pune"),
(9, "Karan", 76, "C", "Ahmedabad"),
(10, "Meera", 82, "B", "Jaipur"),
(11, "Rohit", 87, "B", "Lucknow");

-- Select all data from the student table
SELECT * FROM student;

-- Select the count of students and their cities where the maximum marks are greater than 90
SELECT COUNT(name), city FROM student
GROUP BY city
HAVING MAX(marks) > 90;



-- add the column and related quueries USING ALTER KEY

alter table student
add column age INT;




-- TO USING DROPO THE COLUMN 
ALTER TABLE STUDENT
DROP COLUMN AGE;

-- TO ADD THYE COLUMN 
ALTER TABLE STUDENT 
ADD COLUMN AGE INT NOT NULL DEFAULT 19;


SELECT * FROM STUDENT;
































































































