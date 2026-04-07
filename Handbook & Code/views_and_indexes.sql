-- CREATE VIEW high_salary_users AS
-- SELECT id, name, salary
-- FROM user
-- WHERE salary > 70000;
-- SET SQL_SAFE_UPDATES = 0;
-- UPDATE user
-- SET salary = 72000
-- WHERE name = 'Raj';
-- SELECT * FROM high_salary_users;
-- DROP VIEW high_salary_users;
-- select * from user;


-- SHOW INDEXES FROM user;
-- CREATE INDEX idx_email ON user(email);
-- SELECT * FROM user WHERE email = 'example@example.com';
-- CREATE INDEX idx_gender_salary ON user(gender, salary);
-- DROP INDEX idx_email ON user;