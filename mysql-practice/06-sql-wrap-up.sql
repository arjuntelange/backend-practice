USE mysql_practice;

-- Filtering

SELECT student_id, first_name, last_name 
FROM students 
WHERE first_name LIKE 'A%';

SELECT student_id, first_name, last_name, city
FROM students 
WHERE city IN ("Mumbai", "Pune");

SELECT enrollment_id, student_id, score 
FROM enrollments 
WHERE score BETWEEN 80 AND 95;

SELECT student_id, first_name, city 
FROM students 
WHERE city IS NULL;

-- Subquery

SELECT * 
FROM enrollments
WHERE score > (SELECT AVG(score) FROM enrollments);

-- CTE (Common Table Expression)

WITH above_average As (
    SELECT * 
    FROM enrollments
    WHERE score > (SELECT AVG(score) FROM enrollments)
)

SELECT * FROM above_average;

-- Constraint

ALTER TABLE courses
ADD CONSTRAINT chk_positive CHECK (fee > 0);

-- Index

CREATE INDEX idx 
ON students (last_name);

-- Transaction

START TRANSACTION;

USE mysql_practice;

INSERT INTO students(first_name, last_name, email, city, joined_on) 
VALUES ('Sanskruti', 'Ganje', 'sanskruti@example.com', 'Latur', '2007-04-03');

SELECT * FROM students WHERE email = 'sanskruti@example.com';

COMMIT;