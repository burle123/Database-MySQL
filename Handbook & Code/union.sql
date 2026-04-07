-- CREATE TABLE admin_users (
--     id INT PRIMARY KEY,
--     name VARCHAR(100),
--     email VARCHAR(100),
--     gender ENUM('Male', 'Female', 'Other'),
--     date_of_birth DATE,
--     salary INT
-- );
-- INSERT INTO admin_users (id, name, email, gender, date_of_birth, salary) VALUES
-- (101, 'Anil Kumar', 'anil@example.com', 'Male', '1985-04-12', 60000),
-- (102, 'Pooja Sharma', 'pooja@example.com', 'Female', '1992-09-20', 58000),
-- (103, 'Rakesh Yadav', 'rakesh@example.com', 'Male', '1989-11-05', 54000),
-- (104, 'Fatima Begum', 'fatima@example.com', 'Female', '1990-06-30', 62000);

-- SELECT name FROM user
-- UNION
-- SELECT name FROM admin_users;

-- SELECT name FROM user
-- UNION ALL
-- SELECT name FROM admin_users;

-- SELECT name, salary FROM user
-- UNION
-- SELECT name, salary FROM admin_users;

-- SELECT name, 'User' AS role FROM user
-- UNION
-- SELECT name, 'Admin' AS role FROM admin_users;

-- SELECT name FROM user
-- UNION
-- SELECT name FROM admin_users
-- ORDER BY name;

-- ALTER TABLE user
-- ADD COLUMN referred_by_id INT;

-- UPDATE user SET referred_by_id = 1 WHERE id IN (2, 3); -- User 1 referred Users 2 and 3
-- UPDATE user SET referred_by_id = 2 WHERE id = 4;       -- User 2 referred User 4

 

