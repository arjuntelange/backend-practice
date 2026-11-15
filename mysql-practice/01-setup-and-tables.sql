CREATE DATABASE IF NOT EXISTS mysql_practice;
USE mysql_practice;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(120) NOT NULL UNIQUE,
    city VARCHAR(60),
    joined_on DATE NOT NULL
);

CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    fee DECIMAL(8, 2) NOT NULL DEFAULT 0.00
);

CREATE TABLE enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    enrolled_on DATE NOT NULL,
    score DECIMAL(5, 2),
    CONSTRAINT fk_enrollments_student FOREIGN KEY (student_id)
        REFERENCES students(student_id),
    CONSTRAINT fk_enrollments_course FOREIGN KEY (course_id)
        REFERENCES courses(course_id),
    CONSTRAINT uq_student_course UNIQUE (student_id, course_id)
);

INSERT INTO students (first_name, last_name, email, city, joined_on) VALUES
    ('Asha', 'Patel', 'asha@example.com', 'Mumbai', '2026-01-10'),
    ('Ravi', 'Shah', 'ravi@example.com', 'Pune', '2026-01-15'),
    ('Mina', 'Das', 'mina@example.com', 'Mumbai', '2026-02-02'),
    ('Kabir', 'Rao', 'kabir@example.com', NULL, '2026-02-12');

INSERT INTO courses (course_name, fee) VALUES
    ('SQL Basics', 1200.00),
    ('Backend Foundations', 2500.00),
    ('Data Modeling', 1800.00);

INSERT INTO enrollments (student_id, course_id, enrolled_on, score) VALUES
    (1, 1, '2026-01-11', 88.50),
    (1, 2, '2026-01-18', 92.00),
    (2, 1, '2026-01-16', 76.00),
    (3, 3, '2026-02-05', 95.50);

SELECT * FROM students;
SELECT * FROM courses;
SELECT * FROM enrollments;