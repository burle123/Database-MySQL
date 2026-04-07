CREATE TABLE student4(
id INT PRIMARY KEY,
name varchar(100) NOT NULL
);

DESC student4;

INSERT INTO student4 (name) VALUES("Mahesh");


INSERT INTO student4 VALUES(1,"Mahesh");
INSERT INTO student4 VALUES(1,"Alok");

INSERT INTO student4 VALUES(2,"Alok");



INSERT INTO student4(id,name) VALUES(4,"Sahil");
INSERT INTO student4(id,name) VALUES(5,"Shankar");





SELECT * FROM student4;