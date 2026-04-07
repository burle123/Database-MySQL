create table customers (id int , name varchar(50) NOT NULL ,email varchar(100) unique ,city varchar(50) default 'pune', CONSTRAINT PK_CUSTOMER PRIMARY KEY(id));



mysql> INSERT INTO customers (id, name, email, city)
    -> VALUES
    -> (101, 'Rahul Sharma', 'rahul@gmail.com', 'Mumbai'),
    -> (102, 'Priya Patel', 'priya@gmail.com', 'Delhi'),
    -> (103, 'Amit Verma', 'amit@gmail.com', 'Pune'),
    -> (104, 'Sneha Joshi', 'sneha@gmail.com', 'Bangalore'),
    -> (105, 'Karan Mehta', 'karan@gmail.com', DEFAULT);


CREATE TABLE orders (
    ->     order_id INT,
    ->     customer_id INT NOT NULL,
    ->     amount DECIMAL(10,2) CHECK (amount > 0),
    ->     order_date DATE,
    ->     CONSTRAINT PK_ORDER PRIMARY KEY (order_id),
    ->     CONSTRAINT FK_CUSTOMER FOREIGN KEY (customer_id)
    ->         REFERENCES customers(id)
    -> );


INSERT INTO orders (order_id, customer_id, amount, order_date)
    -> VALUES
    -> (1, 101, 500.00, '2026-04-01'),
    -> (2, 102, 750.50, '2026-04-02'),
    -> (3, 103, 1200.25, '2026-04-03'),
    -> (4, 104, 300.75, '2026-04-04'),
    -> (5, 105, 950.00, '2026-04-05');



//orphan records error


 INSERT INTO orders (order_id, customer_id, amount, order_date)
    -> VALUES
    -> (11, 121, 500.00, '2026-04-01')
    -> ;
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`ukg`.`orders`, CONSTRAINT `FK_CUSTOMER` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`))