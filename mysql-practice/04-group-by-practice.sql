USE mysql_practice;

SELECT city, COUNT(*) AS student_count
FROM students
GROUP BY city;

SELECT courses.course_name, AVG(enrollments.score) AS average_score
FROM courses
LEFT JOIN enrollments
    ON courses.course_id = enrollments.course_id
GROUP BY courses.course_id, courses.course_name;
SELECT courses.course_name,
       COUNT(enrollments.enrollment_id) AS enrollment_count
FROM courses
LEFT JOIN enrollments
    ON courses.course_id = enrollments.course_id
GROUP BY courses.course_id, courses.course_name
HAVING COUNT(enrollments.enrollment_id) >= 2;