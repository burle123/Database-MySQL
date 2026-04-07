CREATE TABLE student7(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
age INT NOT NULL CHECK (age >= 18)
);



DESC student7;

INSERT INTO student7 (name) VALUES("Mahesh");
INSERT INTO student7 (name,age) VALUES("Alok", 25);


SELECT * FROM student7;