CREATE TABLE student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    st_name VARCHAR(20),
    major VARCHAR(20)
);

INSERT INTO student(st_name, major) VALUES('Jack', 'Biology');
INSERT INTO student(st_name, major) VALUES('Kate', 'Sociology');
INSERT INTO student(st_name, major) VALUES('Claire', 'Chemistry');
INSERT INTO student(st_name, major) VALUES('Jack', 'Biology');
INSERT INTO student(st_name, major) VALUES('Mike', 'Computer Science');

DROP TABLE student;
SELECT * FROM student;

SELECT st_name, student.major
FROM student
ORDER BY student_id DESC;

SELECT *
FROM student
ORDER BY major ASC, student_id DESC
LIMIT 4;

-- <>, <, >, <=, >=, AND, OR
SELECT *
FROM student
WHERE major IN ('Biology', 'Computer Science') AND student_id >3
OR st_name <> 'Kate';