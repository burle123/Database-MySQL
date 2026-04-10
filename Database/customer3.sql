USE ukg;
SHOW TABLES;

DROP TABLE IF EXISTS customer3;


CREATE TABLE IF NOT EXISTS customer3(
	c_id INT AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL,
	city VARCHAR(50) NOT NULL DEFAULT 'pune',
	CONSTRAINT pk_customer2 PRIMARY KEY (c_id)
);

DESC customer3;

SELECT * FROM customer3;


INSERT INTO customer3 (name, city) VALUES 
("sahil", "bhosari"),
("datta", "pune"),   
("shantanu", "sangvi"),
("chinu", "sangali"),
("hamza", "karachi"),
("chotu", "sangam"),
("shidhu", "alandi"),
("raj", "talegaon"),
("jassi", "chikali"),
("pinda", "delhi" );

SELECT * FROM customer3;