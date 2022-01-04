show databases;
create database student_details;
CREATE TABLE student_details (
    student_id INT NOT NULL,
    student_fname VARCHAR(20),
    student_sname VARCHAR(20),
    age INT,
    course VARCHAR(20),
    PRIMARY KEY (student_id)
);

explain student_details;
INSERT INTO student_details (student_id, student_fname, student_sname, age, course)
VALUES
(1, "Imaan", "Good", 21, "Computer Science"),
(2, "Leslie", "Knope", 22, "Accountant"),
(3, "Dwight","Schrute", 23, "English"),
(4, "Donna", "Meagle", 24, "Early years "),
(5, "April", "Ludgate", 22, "Computer Science")
;
SELECT * FROM student_details;

CREATE TABLE courses(
courseID INT NOT NULL PRIMARY KEY,
student_id INT, 
teacherID INT NOT NULL,
teacherName VARCHAR(80)
);

EXPLAIN courses;
INSERT INTO courses (student_id, CourseID, teacherID, teacherName)
VALUES
(3, 20, 01, "Kylie smith"),
(2, 31, 02, "John patel"),
(1, 22, 05, "Aisha Ali"),
(4, 45, 04, "Alexander Plukie"),
(5, 25, 03, "Aisha Ali")
;
SELECT * FROM courses;
-- Updated teacher ID 
UPDATE courses
SET teacherID = 05
WHERE CourseID = 22;

SELECT student_details.student_fname , courses.CourseID
FROM student_details
INNER JOIN courses
ON student_details.student_id = courses.student_id;

-- selecting data 
SELECT *
FROM student_details
INNER JOIN courses
WHERE student_details.student_id = courses.student_id AND courses.teacherID = 05;

select * FROM courses
WHERE teacherID between 01 and 03;

-- Update Teacher name 
UPDATE courses
SET teacherName= 'Bella Brown'
WHERE courseId = 22;

SELECT * FROM courses;
