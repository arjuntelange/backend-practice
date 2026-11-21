USE mysql_practice;

SELECT students.first_name, students.last_name, enrollments.enrollment_id, enrollments.score
FROM students
INNER JOIN enrollments
    ON students.student_id = enrollments.student_id;

SELECT students.first_name, courses.course_name , enrollments.score
FROM students
INNER JOIN enrollments
    ON students.student_id = enrollments.student_id
INNER JOIN courses 
    ON enrollments.course_id = courses.course_id;

SELECT students.first_name, courses.course_name, enrollments.score
FROM students
LEFT JOIN enrollments
    ON students.student_id = enrollments.student_id
LEFT JOIN courses
    ON enrollments.course_id = courses.course_id;