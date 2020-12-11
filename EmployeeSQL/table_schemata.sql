-- TABLE SCHEMATA FOR SQL CHALLENGE --

-- create table for departments, then check to see that the data from the csv file was properly imported.

CREATE TABLE departments (
dept_no VARCHAR,
dept_name VARCHAR
);

SELECT *
FROM departments;

-- create table for dept_emp, then check to see that the data from the csv file was properly imported.

CREATE TABLE dept_emp (
emp_no INT,
dept_no VARCHAR
);

SELECT *
FROM dept_emp;

-- create table for dept_manager, then check to see that the data from the csv file was properly imported.

CREATE TABLE dept_manager (
dept_no VARCHAR,
emp_no INT
);

SELECT *
FROM dept_manager;

-- create table for employees, then check to see that the data from the csv file was properly imported.

CREATE TABLE employees (
emp_no INT,
emp_title_id VARCHAR,
birth_date DATE,
first_name VARCHAR,
last_name VARCHAR,
sex VARCHAR,
hire_date DATE
);

SELECT *
FROM employees;

-- create table for salaries, then check to see that the data from the csv file was properly imported.

CREATE TABLE salaries (
emp_no INT,
salary INT
);

SELECT *
FROM salaries;

-- create table for titles, then check to see that the data from the csv file was properly imported.

CREATE TABLE titles (
title_id VARCHAR,
title VARCHAR
);

SELECT *
FROM titles;







