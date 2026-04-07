CREATE TABLE student8(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
age INT NOT NULL CHECK (age >= 18),
status VARCHAR(20) DEFAULT 'active'
);



DESC student8;

INSERT INTO student8 (name,age) VALUES("Mahesh",21);
INSERT INTO student8 (name,age,status) VALUES("Nilesh", 25, 'Inactive');


SELECT * FROM student7;