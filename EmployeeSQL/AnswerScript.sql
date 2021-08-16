--Department of all Employees
SELECT DE.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees E
INNER JOIN dept_emp DE
ON DE.emp_no = e.emp_no
INNER JOIN departments D
ON DE.dept_no = D.dept_no

--Hercules Firstname
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' OR last_name LIKE 'B.%'

--Sales Department Query
SELECT DE.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees E
INNER JOIN dept_emp DE
ON DE.emp_no = e.emp_no
INNER JOIN departments D
ON DE.dept_no = D.dept_no
WHERE D.dept_name = 'Sales'

--Sales and Development Department Query
SELECT DE.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees E
INNER JOIN dept_emp DE
ON DE.emp_no = e.emp_no
INNER JOIN departments D
ON DE.dept_no = D.dept_no
WHERE D.dept_name = 'Sales' OR D.dept_name = 'Development'

--SURNAME cOUNT
SELECT e.last_name, COUNT(*)
FROM employees E
INNER JOIN dept_emp DE
ON DE.emp_no = e.emp_no
INNER JOIN departments D
ON DE.dept_no = D.dept_no
GROUP BY e.last_name
ORDER BY COUNT(*) DESC




