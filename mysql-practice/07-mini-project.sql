USE mysql_practice;

-- List every student with their courses and scores
SELECT
    students.student_id,
    students.first_name,
    students.last_name,
    courses.course_name,
    enrollments.score
FROM students
LEFT JOIN enrollments
    ON students.student_id = enrollments.student_id
LEFT JOIN courses
    ON enrollments.course_id = courses.course_id
ORDER BY students.student_id, courses.course_name;


-- Count enrollments per course, including courses with none
SELECT
    courses.course_id,
    courses.course_name,
    COUNT(enrollments.enrollment_id) AS enrollment_count
FROM courses
LEFT JOIN enrollments
    ON courses.course_id = enrollments.course_id
GROUP BY courses.course_id, courses.course_name
ORDER BY courses.course_id;


-- Show courses whose average score is above the overall average
SELECT
    courses.course_id,
    courses.course_name,
    AVG(enrollments.score) AS average_score
FROM courses
INNER JOIN enrollments
    ON courses.course_id = enrollments.course_id
GROUP BY courses.course_id, courses.course_name
HAVING AVG(enrollments.score) > (
    SELECT AVG(score)
    FROM enrollments
);