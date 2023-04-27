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

SELECT * FROM student;

UPDATE student
SET major = 'Bio'
WHERE major = 'Biology';

UPDATE student
SET major = 'Comp Sci'
WHERE major = 'Computer Science';

UPDATE student
SET major = 'Comp Sci'
WHERE student_id = 4;

UPDATE student
SET major = 'Biochemistry'
WHERE major = 'Bio' OR major = 'Chemistry';

UPDATE student
SET st_name = 'Tom',
WHERE student_id = 1;

UPDATE student
SET major = 'undecided';

DELETE FROM student
WHERE student_id = 5;

DELETE FROM student
WHERE st_name = 'Tom' AND major = 'undecided';

DELETE FROM student;