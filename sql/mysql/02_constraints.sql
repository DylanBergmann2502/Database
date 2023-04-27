CREATE TABLE student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    st_name VARCHAR(20) UNIQUE NOT NULL,
    major VARCHAR(20) DEFAULT 'undecided'
);

INSERT INTO student VALUES(1,'Jack','Biology');

INSERT INTO student(st_name) VALUES('Kate');

SELECT * FROM student;