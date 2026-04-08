USE ukg;

CREATE TABLE IF NOT EXISTS customers1 (
    id INT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(100),
    city VARCHAR(50) DEFAULT 'pune',
    created_at DATE,
    is_active ENUM('active','inactive') DEFAULT 'inactive',

    CONSTRAINT pk_customers PRIMARY KEY (id),
    CONSTRAINT uq_customers_email UNIQUE (email),
    CONSTRAINT uq_customers_phone UNIQUE (phone)
);

DESC CUSTOMERS1;

INSERT INTO customers1 
VALUES 
(105,'Amit','amit@gmail.com','9876500001',DEFAULT,'2022-01-10','active'),
(106,'Rohit','rohit@gmail.com','9876500002',DEFAULT,'2021-05-15','inactive'),
(107,'Neha','neha@gmail.com','9876500003',DEFAULT,'2020-03-20','active'),
(108,'Pooja','pooja@gmail.com','9876500004',DEFAULT,'2019-07-25','inactive'),
(109,'Kunal','kunal@gmail.com','9876500005',DEFAULT,'2018-11-30','active'),
(110,'Meena','meena@gmail.com','9876500006',DEFAULT,'2023-02-14','active'),
(111,'Suresh','suresh@gmail.com','9876500007',DEFAULT,'2024-04-18','inactive'),
(112,'Anita','anita@gmail.com','9876500008',DEFAULT,'2017-09-09','active'),
(113,'Vikas','vikas@gmail.com','9876500009',DEFAULT,'2016-12-12','inactive'),
(114,'Ritika','ritika@gmail.com','9876500010',DEFAULT,'2025-06-01','active');

SELECT * FROM customers1;


CREATE TABLE IF NOT EXISTS orders1 (
    order_id INT AUTO_INCREMENT,
    id INT NOT NULL,
    order_date DATE DEFAULT (CURRENT_DATE),
    total_amount DECIMAL(10,2) CHECK (total_amount >= 0),
    status ENUM('complete','incomplete','cancelled','pending') DEFAULT 'incomplete',
    CONSTRAINT pk_orders PRIMARY KEY (order_id),
    CONSTRAINT fk_orderscustomers 
        FOREIGN KEY (id) 
        REFERENCES customers1(id)
        ON DELETE CASCADE
);

DESC ORDERS1;

INSERT INTO orders1 (order_id, id, order_date, total_amount, status)
VALUES
(5, 105, '2026-06-01', 650, 'complete'),
(6, 106, '2026-06-02', 450, 'pending'),
(7, 107, '2026-06-03', 900, 'complete'),
(8, 108, '2026-06-04', 300, 'cancelled'),
(9, 109, '2026-06-05', 1200, 'complete'),
(10,110, '2026-06-06', 750, 'incomplete'),
(11,111, '2026-06-07', 820, 'pending'),
(12,112, '2026-06-08', 1500, 'complete'),
(13,113, '2026-06-09', 400, 'cancelled'),
(14,114, '2026-06-10', 980, 'complete');


SELECT * FROM orders1;


Create table IF NOT EXISTS products (
product_id INT AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
sku CHAR(10) NOT NULL,
price DECIMAL(10,2) CHECK (price > 0),
stock INT DEFAULT 0,
created_at DATE NOT NULL,
weight FLOAT NOT NULL,
description TEXT,

CONSTRAINT pk_products PRIMARY KEY (product_id),
CONSTRAINT fk_products_sku UNIQUE (sku)
);


DESC products;


INSERT INTO products 
(name, sku, price, stock, created_at, weight, description)
VALUES
('Laptop', 'SKU0000001', 55000.00, 10, '2026-04-01', 1.8, '15 inch business laptop'),
('Smartphone', 'SKU0000002', 25000.00, 25, '2026-04-02', 0.45, 'Android smartphone with 8GB RAM'),
('Headphones', 'SKU0000003', 3500.00, 50, '2026-04-03', 0.30, 'Wireless Bluetooth headphones'),
('Keyboard', 'SKU0000004', 1200.00, 40, '2026-04-04', 0.70, 'Mechanical gaming keyboard'),
('Mouse', 'SKU0000005', 800.00, 60, '2026-04-05', 0.20, 'Wireless optical mouse'),
('Monitor', 'SKU0000006', 15000.00, 15, '2026-04-06', 3.5, '24 inch Full HD monitor'),
('Printer', 'SKU0000007', 9500.00, 8, '2026-04-07', 5.2, 'All-in-one inkjet printer'),
('Tablet', 'SKU0000008', 18000.00, 12, '2026-04-08', 0.60, '10 inch Android tablet'),
('External HDD', 'SKU0000009', 5000.00, 30, '2026-04-09', 0.25, '1TB external hard drive'),
('Router', 'SKU0000010', 2200.00, 20, '2026-04-10', 0.40, 'Dual band WiFi router');


select * from products;