SELECT e.emp_no, last_name, first_name, sex, s.salary
from employees e 
INNER JOIN salaries s 
on s.emp_no = E.emp_no