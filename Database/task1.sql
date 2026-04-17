create database SchoolDB;

use SchoolDB;

CREATE TABLE Student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender ENUM ('M','F'),
    dob DATE,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15) UNIQUE,
    city VARCHAR(50) Default 'Pune',
    admission_date DATE,
    course VARCHAR(50) NOT NULL,
    marks INT CHECK(marks >= 0 AND marks <= 100)
);


INSERT INTO Student 
(first_name, last_name, gender, dob, email, phone, city, admission_date, course, marks)
VALUES
('Amit', 'Sharma', 'M', '2005-05-10', 'amit@gmail.com', '9876543210', 'Pune', '2024-06-01', 'Python', 85),
('Neha', 'Patil', 'F', '2006-03-12', 'neha@gmail.com', '9876543211', 'Mumbai', '2024-06-01', 'Java', 90),
('Rahul', 'Kumar', 'M', '2005-07-22', 'rahul@gmail.com', '9876543212', 'Delhi', '2024-06-01', 'C++', 78),
('Sneha', 'Joshi', 'F', '2006-01-15', 'sneha@gmail.com', '9876543213', 'Pune', '2024-06-01', 'Python', 88),
('Vikas', 'Singh', 'M', '2005-09-30', 'vikas@gmail.com', '9876543214', 'Nagpur', '2024-06-01', 'Java', 72),
('Pooja', 'Desai', 'F', '2006-11-05', 'pooja@gmail.com', '9876543215', 'Surat', '2024-06-01', 'C++', 81),
('Arjun', 'Reddy', 'M', '2005-02-18', 'arjun@gmail.com', '9876543216', 'Hyderabad', '2024-06-01', 'Python', 95),
('Kiran', 'Nair', 'F', '2006-08-09', 'kiran@gmail.com', '9876543217', 'Kochi', '2024-06-01', 'Java', 67),
('Rohit', 'Verma', 'M', '2005-12-25', 'rohit@gmail.com', '9876543218', 'Bhopal', '2024-06-01', 'C++', 74),
('Anjali', 'Mehta', 'F', '2006-04-14', 'anjali@gmail.com', '9876543219', 'Ahmedabad', '2024-06-01', 'Python', 89);


SELECT * FROM Student;


DESC Student;