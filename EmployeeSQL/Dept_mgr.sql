SELECT DISTINCT(e.Emp_no), dm.dept_no, D.dept_name, E.first_name, E.last_name
FROM dept_manager DM
INNER JOIN departments D 
ON D.dept_no = dm.dept_no
INNER JOIN employees e
ON E.emp_no = dm.emp_no