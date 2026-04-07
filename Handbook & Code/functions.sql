use starteruser;
-- select * from user;
-- insert into user(name,id,date_of_birth,email,gender,salary,created_at) values
-- ('jay',6,'2006-04-20','jay@gmail.com','female',50000,default),
-- ('Yash',3,'2003-06-20','yash@gmail.com','male',60000,default),
-- ('Sahil',4,'2002-06-20','sahil@gmail.com','male',70000,default);
-- select * from user where gender = 'male';
-- select * from user where date_of_birth <= '2010-06-20';
-- select * from user where id > 3;
-- select * from user where id between 2 and 5;
-- select * from user where gender = 'male' and salary > 50000;
-- select * from user where gender = 'male' or salary > 50000;
-- select * from user where gender = 'male' and salary > 50000 order by date_of_birth asc;
-- select * from user where gender = 'male' and salary > 50000 order by date_of_birth desc;
-- select * from user where gender = 'male'  order by date_of_birth asc limit 2;
SET SQL_SAFE_UPDATES = 0;
-- update user set salary=salary+100000 where salary > 50000;
-- delete from user where salary = 50000;
-- select * from user;
-- delete from user where salary <6000;
-- select * from user;
-- SELECT COUNT(*) FROM user;
-- select * from user;
-- SELECT COUNT(*) FROM user WHERE gender = 'Female';
-- SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM user;
-- SELECT SUM(salary) AS total_payroll FROM user;
-- SELECT AVG(salary) AS avg_salary FROM user;
-- SELECT name, LENGTH(name) AS name_length FROM user;
-- SELECT name, LOWER(name) AS lowercase_name FROM user;
-- SELECT name, UPPER(name) AS uppercase_name FROM user;

-- SELECT CONCAT(name, ' <', email, '>') AS user_contact FROM user;
-- SELECT NOW();
-- SELECT name, YEAR(date_of_birth) AS birth_year FROM user;
-- SELECT name, DATEDIFF(CURDATE(), date_of_birth) AS days_lived FROM user;
-- SELECT name, TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) AS age FROM user;

-- SELECT id, MOD(id, 2) AS remainder FROM user;
-- SELECT name, gender,
--        IF(gender = 'Male', 'Yes', 'No') AS is_male
-- FROM user;


 