CREATE TABLE student9(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
age INT NOT NULL CHECK (age >= 18),
status VARCHAR(20) NOT NULL DEFAULT 'active'
);



DESC student9;

INSERT INTO student9 (name,age) VALUES("Mahesh",21);
INSERT INTO student9 (name,age,status) VALUES("Nilesh", 25, 'Inactive');


SELECT * FROM student9;