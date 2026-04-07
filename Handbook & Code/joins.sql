Use startersql;

-- select  * from user;
-- select * from addresses;

-- SELECT user.name, addresses.city
-- FROM user
-- INNER JOIN addresses ON user.id = addresses.user_id;

-- SELECT user.name, addresses.city
-- FROM user
-- INNER JOIN addresses ON user.id = addresses.user_id;

-- SELECT user.name, addresses.city
-- FROM user
-- LEFT JOIN addresses ON user.id = addresses.user_id;

-- SELECT user.name, addresses.city
-- FROM user
-- Right JOIN addresses ON user.id = addresses.user_id;

-- SELECT 
--   a.id,
--   a.name AS user_name,
--   b.name AS referred_by
-- FROM user a
-- LEFT JOIN user b ON a.referred_by_id = b.id;
-- select * from user;