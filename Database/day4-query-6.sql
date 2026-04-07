CREATE TABLE student5(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL
);

DESC student5;

INSERT INTO student5 (name) VALUES("Mahesh");
INSERT INTO student5 (name) VALUES("Shankar");
INSERT INTO student5 VALUES(2,"Alok");
INSERT INTO student5 (name) VALUES("Alok");
INSERT INTO student5 (id,name) VALUES(5,"Sanchita");
INSERT INTO student5 (name) VALUES("Muskan Deshmukh");
INSERT INTO student5 (id,name) VALUES(4,"Tejas");

INSERT INTO student4 VALUES(1,"Mahesh");
INSERT INTO student4 VALUES(1,"Alok");





INSERT INTO student4(id,name) VALUES(4,"Sahil");
INSERT INTO student4(id,name) VALUES(5,"Shankar");





SELECT * FROM student4;