use company;
--Write a query to find the second-highest salary from the employees table.
select name,salary from employees
where salary=(select max(salary) as second_highest_salary from employees
where salary<(select max(salary) from employees)
);

alter table employees
add dept_id varchar(10);

update employees
set dept_id=1
where id=4;

--Write a query to find the average salary of employees in each department.
select department,avg(salary) as average_salary from employees
group by department;

select * from employees

INSERT INTO employees (name, salary, joining_date)
VALUES( 'Divya', 32000, '2024-07-01');

--Write a query to display departments having more than 3 employees.
select department,count(*) as employee_count from employees
group by department
having count(*)>3;

ALTER TABLE employees
DROP COLUMN department;

create table departments(
    dept_id int,
    dept_name varchar(10)
);
insert into departments
values(1,"AI&DS"),
(2,"CSE"),
(3,"IT");
select * from departments


--Write a query to display the employee name and department name using an INNER JOIN.
select e.name,d.dept_name from employees as e
inner join departments as d
on e.dept_id=d.dept_id;

--Display all employees, including those who don't belong to any department, using LEFT JOIN
select e.name,d.dept_name from employees as e
left join departments as d
on e.dept_id=d.dept_id;

--Write a query to find employees whose salary is greater than the average salary using a subquery.
select name,salary from employees
where salary>(select avg(salary) from employees
);

--Find the highest salary in each department
select dept_id,max(salary) as max_salary from employees
group by dept_id;

--Find the highest salary in each department
SELECT dept_id, MAX(salary) AS highest_salary
FROM employees
GROUP BY dept_id;