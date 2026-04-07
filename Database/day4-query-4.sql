CREATE TABLE student3(
id INT NOT NULL UNIQUE,
name varchar(100) NOT NULL
);

DESC student3;

INSERT INTO student3 VALUES();
INSERT INTO student3 VALUES(1,"Datta");
INSERT INTO student3 VALUES(1,"Alok");
INSERT INTO student3 VALUES(2,"Alok");
INSERT INTO student3 VALUES(3,"Alok");

INSERT INTO student3(id) VALUES(3);
INSERT INTO student3(name) VALUES("Shantanu");


INSERT INTO student3(id,name) VALUES(4,"Sahil");
INSERT INTO student3(id,name) VALUES(5,"Shankar");





SELECT * FROM student2;