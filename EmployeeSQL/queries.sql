-- QUERIES FOR SQL CHALLENGE -- 

-- QUERY #1: "List the following details of each employee: employee number, last name, first name, sex, and salary."
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
LEFT JOIN salaries as s ON e.emp_no=s.emp_no
ORDER BY salary DESC;

-- QUERY #2: "List first name, last name, and hire date for employees who were hired in 1986."
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date > '1985-12-31' AND hire_date < '1987-01-01'
ORDER BY hire_date;

-- QUERY #3: "List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name."
SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees as e
JOIN dept_manager as dm ON e.emp_no=dm.emp_no
JOIN departments as d ON dm.dept_no=d.dept_no;

-- QUERY #4: "List the department of each employee with the following information: employee number, last name, first name, and department name." 
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
JOIN dept_emp as de ON e.emp_no=de.emp_no
JOIN departments as d ON de.dept_no=d.dept_no;

-- QUERY #5: "List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- QUERY #6: "List all employees in the Sales department, including their employee number, last name, first name, and department name." 
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
JOIN dept_emp as de ON e.emp_no=de.emp_no
JOIN departments as d ON de.dept_no=d.dept_no
WHERE dept_name = 'Sales';

-- QUERY #7: "List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name."
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
JOIN dept_emp as de ON e.emp_no=de.emp_no
JOIN departments as d ON de.dept_no=d.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

-- QUERY #8: "In descending order, list the frequency count of employee last names, i.e., how many employees share each last name."
SELECT last_name, COUNT(last_name) as frequency_count
FROM employees
GROUP BY last_name
ORDER BY frequency_count DESC;










