CREATE DATABASE sql_practice;

USE sql_practice;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2),
    joining_date DATE
);

INSERT INTO employees (employee_name, salary, joining_date)
VALUES
('Dhanush', 30000, '2026-01-10'),
('Vijay', 40000, '2026-02-15'),
('Surya', 50000, '2026-03-20');

SELECT * FROM employees;