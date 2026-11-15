USE mysql_practice;

SELECT * FROM students;

SELECT * FROM students
WHERE city = 'Mumbai';

--Show the two most recently joined students
SELECT * FROM students
ORDER BY joined_on DESC
LIMIT 2;

INSERT INTO students (first_name, last_name, email, city, joined_on)
VALUES ('Mayur', 'Jadhav', 'mayur@jadhav21.com', 'Nagpur', '2026-10-12');

SELECT * FROM students
WHERE email = 'mayur@jadhav21.com';

UPDATE students
SET city = 'Pune'
WHERE email = 'mayur@jadhav21.com';

SELECT * FROM students
WHERE email = 'mayur@jadhav21.com';

DELETE FROM students
WHERE email = 'mayur@jadhav21.com';

SELECT * FROM students
WHERE email = 'mayur@jadhav21.com';