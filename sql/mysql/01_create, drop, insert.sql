CREATE TABLE student (
    student_id INT PRIMARY KEY,
    st_name VARCHAR(20),
    major VARCHAR(20)
);

DESCRIBE student;

DROP TABLE student;

ALTER TABLE student ADD gpa DECIMAL(3,2);

ALTER TABLE student DROP COLUMN gpa;

INSERT INTO student VALUES(1,'Jack','Biology');

INSERT INTO student(student_id, st_name) VALUES(2,'Kate');

SELECT * FROM student;