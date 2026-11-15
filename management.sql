create database student_management;
use student_management;
create table student_management.students
(
id INT PRIMARY KEY,
studentname varchar(50),
department varchar(50),
semester int,
marks int
);
insert into student_management.students (id, studentname, department, semester, marks)
VALUES
(1, 'Ripa', 'CSE', 3, 85),
(2, 'Samira', 'CSE', 2, 78),
(3, 'Rahim', 'EEE', 4, 82),
(4, 'Nusrat', 'CSE', 3, 91),
(5, 'Tanvir', 'BBA', 5, 74),
(6, 'Sadia', 'CSE', 2, 88),
(7, 'Fahim', 'EEE', 3, 69),
(8, 'Mim', 'BBA', 4, 80),
(9, 'Arif', 'CSE', 5, 95),
(10, 'Jannat', 'EEE', 2, 76);
SELECT * FROM student_management.students;
SELECT * FROM student_management.students
WHERE studentname = 'Ripa';
UPDATE student_management.students
SET marks = 90
WHERE id = 1;
SELECT * FROM student_management.students;
DELETE FROM student_management.students
WHERE id = 10;
SELECT * FROM student_management.students;
SELECT COUNT(*) AS total_students
FROM  student_management.students;
SELECT AVG(marks) AS average_marks
FROM  student_management.students;
SELECT MAX(marks) AS highest_mark,
	   MIN(marks) AS lowest_marks
FROM student_management.students;   
SELECT department, COUNT(*) AS total_students
FROM student_management.students
GROUP BY department;    
SELECT * FROM student_management.students

