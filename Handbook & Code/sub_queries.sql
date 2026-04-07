-- SELECT id, name, salary
-- FROM user
-- WHERE salary > (
--     SELECT AVG(salary) FROM user
-- );

-- SELECT id, name, referred_by_id
-- FROM user
-- WHERE referred_by_id IN (
--     SELECT id FROM user WHERE salary > 75000
-- );

-- SELECT name, salary,
--   (SELECT AVG(salary) FROM user) AS average_salary
-- FROM user;

-- SELECT gender as 'Gender', AVG(salary) AS average_salary
-- FROM user
-- GROUP BY gender;

-- SELECT referred_by_id, COUNT(*) AS total_referred
-- FROM user
-- WHERE referred_by_id IS NOT NULL
-- GROUP BY referred_by_id;

-- SELECT gender, AVG(salary) AS avg_salary
-- FROM user
-- GROUP BY gender
-- HAVING AVG(salary) > 75000;

-- SELECT referred_by_id, COUNT(*) AS total_referred
-- FROM user
-- WHERE referred_by_id IS NOT NULL
-- GROUP BY referred_by_id
-- HAVING COUNT(*) >= 1;

SELECT gender as 'Gender',avg(salary) as 'AVG SAL',count(*) AS 'total_users'
FROM user
GROUP BY gender WITH ROLLUP;