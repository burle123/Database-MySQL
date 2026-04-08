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

