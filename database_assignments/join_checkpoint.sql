
--Drop any existing tables so duplicates are erased
DROP TABLE professor;
DROP TABLE department;
DROP TABLE compensation;

--Create new tables
CREATE TABLE professor (id integer, name text, department_id integer);
COPY professor FROM 'C:/Users/tlyen/bloc/hogwarts/hogwarts-professor.csv' DELIMITER ',' CSV;

CREATE TABLE department (id integer, name text);
COPY department FROM 'C:/Users/tlyen/bloc/hogwarts/hogwarts-department.csv' DELIMITER ',' CSV;

CREATE TABLE compensation (id integer, professor_id integer, salary integer, vacation_days integer);
COPY compensation FROM 'C:/Users/tlyen/bloc/hogwarts/hogwarts-compensation.csv' DELIMITER ',' CSV;

--Check data is uploaded
SELECT * FROM professor;
SELECT * FROM department;
SELECT * FROM compensation;

--Checkpoint exercises
SELECT professor.name, department.name
FROM professor
JOIN department
ON professor.department_id = department.id;

SELECT professor.name, department.name, compensation.vacation_days
FROM professor
JOIN department ON professor.department_id = department.id
JOIN compensation ON professor.id = compensation.professor_id;

UPDATE professor
SET department_id = null
WHERE id = 1;

SELECT department.name, professor.name
FROM department
LEFT OUTER JOIN professor
ON professor.department_id = department.id;

SELECT department.name, professor.name
FROM department
RIGHT OUTER JOIN professor 
ON professor.department_id = department.id;
