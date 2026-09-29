--Write a query to create a database named company.
create database company;
use company;
--Write a query to create an employees table with id, name, salary, and joining_date.
create table employees(
    id int primary key auto_increment,
    name varchar(30),
    salary decimal(7,4),
    joining_date date
);
--Write a query to insert 5 employees into the employees table.
INSERT INTO employees (name, salary, joining_date)
VALUES
('Arun', 25000, '2024-01-15'),
('Rahul', 30000, '2024-03-10'),
('Priya', 28000, '2024-05-20'),
( 'Karthik', 35000, '2023-11-05'),
( 'Divya', 32000, '2024-07-01');
--Write a query to display all employees from the table.
select * from employees;
drop table employees;

alter table employees
modify salary decimal(10,2)

--Write a query to display employees whose salary is greater than 30,000.
select * from employees
where salary>30000

--Write a query to display employees whose name starts with A.
select * from employees
where name like 'A%';

--Write a query to display employees in descending order of salary.
select * from employees
order by salary desc;

--Write a query to display the top 3 highest-paid employees.
select * from employees
order by salary desc
limit 3;

--Write a query to update the salary of an employee whose id = 3.
update employees
set salary=60000
where id=3;

--Write a query to delete an employee whose id = 5.
delete from employees
where id=5;