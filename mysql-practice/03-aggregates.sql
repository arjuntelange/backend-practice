SELECT COUNT(*) FROM students;

SELECT city, COUNT(*) 
FROM students
GROUP BY city;

SELECT AVG(score) FROM enrollments;
SELECT MAX(score) FROM enrollments;
SELECT MIN(score) FROM enrollments;

SELECT courses.course_name, COUNT(enrollments.enrollment_id) AS enrollment_count
FROM courses
LEFT JOIN enrollments
    ON courses.course_id = enrollments.course_id
GROUP BY courses.course_id, courses.course_name;

SELECT courses.course_name, COUNT(enrollments.enrollment_id) AS enrollment_count
FROM courses
LEFT JOIN enrollments
    ON courses.course_id = enrollments.course_id
GROUP BY courses.course_id, courses.course_name
HAVING COUNT(enrollments.enrollment_id) >= 2;

SELECT SUM(fee) FROM courses;

