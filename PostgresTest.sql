CREATE DATABASE school;

CREATE TABLE subject (
                         id SERIAL PRIMARY KEY,
                         name VARCHAR(50),
                         koef DECIMAL);

INSERT INTO subject (
    name,koef)
VALUES
('Maths',7),
('Physics',6),
('Biology',4),
('Chemistry',5);

CREATE TABLE audience (
                          id SERIAL PRIMARY KEY,
                          name VARCHAR(50),
                          seats INT,
                          subject_id INT);

INSERT INTO audience (
    name,seats)
VALUES
('101-Maths',30),
('102-Physics',20),
('103-Biology',40),
('104-Chemistry',35);

CREATE TABLE teacher (
                         id SERIAL PRIMARY KEY,
                         name VARCHAR(50),
                         dateOfBirth DATE NOT NULL,
                         subject_id INT);

INSERT INTO teacher (
    name,dateOfBirth,subject_id)
VALUES
('Olga Mykolaivna','1979-02-01',1),
('Dmytro Bogdanovych','1982-03-04',2),
('Oleg Ivanovych','1988-01-05',3),
('Andrii Petrovych','1968-01-01',4);

CREATE TABLE student (
                         id SERIAL PRIMARY KEY,
                         name VARCHAR(50),
                         dateOfBirth DATE,
                         class VARCHAR(20));

INSERT INTO student (
    name,dateOfBirth,class)
VALUES
('Petro','2004-05-05','11-A'),
('Bogdan','2005-01-02','10-B'),
('Anton','2006-04-04','9-V'),
('Borys','2008-07-07','7-A');


ALTER TABLE audience add FOREIGN KEY(id) REFERENCES subject(id);

ALTER TABLE teacher add FOREIGN KEY(subject_id) REFERENCES subject(id);

CREATE TABLE teacher_student(
                                teacher_id int,student_id int,
                                CONSTRAINT id PRIMARY KEY(student_id, teacher_id),
                                FOREIGN KEY (student_id) REFERENCES student(id),
                                FOREIGN KEY (teacher_id) REFERENCES teacher(id));

INSERT INTO teacher_student(teacher_id,student_id)
VALUES (1,1),(1,2),(1,3),(1,4),(2,2),(2,3),(2,4),(3,1),(3,3),(4,1),(4,4);

SELECT * FROM teacher WHERE dateOfBirth > '1980-01-01';

SELECT * FROM  student WHERE not name LIKE 'B%';

SELECT * FROM  subject ORDER BY koef;

SELECT * FROM  teacher ORDER BY dateOfBirth LIMIT 1;

SELECT count(id) FROM audience;

SELECT sum(seats) FROM audience;

ALTER TABLE teacher RENAME COLUMN name TO teacher_name;

SELECT * FROM  teacher JOIN subject s ON teacher.subject_id = s.id WHERE s.name = 'Physics';

SELECT student.name, student.dateOfBirth, student.class FROM student
    JOIN teacher_student ts ON ts.student_id = student.id
    JOIN teacher t ON t.id = ts.teacher_id
WHERE teacher_name = 'Olga Mykolaivna';

SELECT * FROM teacher
                  JOIN teacher_student ts ON ts.teacher_id = teacher.id
                  JOIN student s ON s.id = ts.student_id
WHERE  s.name = 'Petro';

SELECT audience.id, audience.name FROM audience JOIN subject s ON s.id = audience.id WHERE s.name = 'Biology';

SELECT audience.id, audience.name FROM audience JOIN subject s ON s.id = audience.id
                                                JOIN teacher t ON s.id = t.subject_id WHERE teacher_name = 'Dmytro Bogdanovych';

SELECT * FROM teacher
                  JOIN subject s ON s.id = teacher.subject_id
                  JOIN audience a ON s.id = a.id
WHERE a.id =4;

