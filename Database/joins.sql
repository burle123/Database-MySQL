use ukg;

desc customer3;

desc order3;

-- INNER JOIN

SELECT c.c_id, c.name, c.city, o.o_id, o.amount
FROM customer3 c
INNER JOIN order3 o
ON c.c_id = o.c_id;

-- LEFT JOIN

SELECT c.c_id, c.name, o.o_id, o.amount
FROM customer3 c
LEFT JOIN order3 o
ON c.c_id = o.c_id;

-- RIGHT JOIN

SELECT c.c_id, c.name, o.o_id, o.amount
FROM customer3 c
RIGHT JOIN order3 o
ON c.c_id = o.c_id;

-- Find Customers with NO Orders

SELECT c.c_id, c.name
FROM customer3 c
LEFT JOIN order3 o
ON c.c_id = o.c_id
WHERE o.c_id IS NULL;

-- Find Orders with Invalid Customer

SELECT o.o_id, o.c_id
FROM order3 o
LEFT JOIN customer3 c
ON o.c_id = c.c_id
WHERE c.c_id IS NULL;

-- Total Amount per Customer

SELECT c.name, SUM(o.amount) AS total_amount
FROM customer3 c
JOIN order3 o
ON c.c_id = o.c_id
GROUP BY c.name;