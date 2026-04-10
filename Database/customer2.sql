USE ukg;
SHOW TABLES;

DROP TABLE IF EXISTS customer2;


CREATE TABLE IF NOT EXISTS customer2(
	c_id INT AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL,
	city VARCHAR(50) NOT NULL DEFAULT 'pune',
	CONSTRAINT pk_customer2 PRIMARY KEY (c_id)
);

DESC customer2;

SELECT * FROM customer2;


INSERT INTO customer2 (name, city) VALUES 
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

SELECT * FROM customer2;