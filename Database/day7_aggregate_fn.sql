Show DATABASES;
USE STUDENT;

CREATE TABLE IF NOT EXISTS students_info (
    id INT AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    course VARCHAR(30) NOT NULL,
CONSTRAINT pk_student_id PRIMARY KEY(id)
);

DESC students_info;


INSERT INTO students_info (name, course) VALUES
('A', 'Java'),
('B', 'Python'),
('C', 'Java'),
('D', 'Python'),
('E', 'Java');

SELECT * FROM students_info;


select course, count(*) as no_of_studs
from students_info 
group by course;


select name
from students_info
where course='java';


