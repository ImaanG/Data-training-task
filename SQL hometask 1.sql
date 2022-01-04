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
show databases;
explain student_details
