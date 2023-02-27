-- 1. employee number, last name, first name, sex, and salary of each employee
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
left join salaries as s on
e.emp_no = s.emp_no;

-- 2. first name, last name, and hire date for the employees who were hired in 1986
select first_name, last_name, hire_date
from employees
where hire_date like '%1986';

-- 3. manager of each department along with their department number, department name, 
-- employee number, last name, and first name
select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from dept_manager
left join departments as d on 
dept_manager.dept_no = d.dept_no
left join employees as e on
dept_manager.emp_no = e.emp_no;

-- 4. department number for each employee along with that employee’s employee number, 
-- last name, first name, and department name
select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from dept_emp
left join departments as d on 
dept_emp.dept_no = d.dept_no
left join employees as e on
dept_emp.emp_no = e.emp_no;

-- 5. first name, last name, and sex of each employee whose first name is Hercules and 
-- whose last name begins with the letter B
select first_name, last_name, sex
from employees
where first_name = 'Hercules'
and last_name like 'B%';

-- 6. each employee in the Sales department, including their employee number, last name, 
-- and first name
select employees.emp_no, employees.last_name, employees.first_name
from employees
left join dept_emp on
employees.emp_no = dept_emp.emp_no
where dept_emp.dept_no = 'd007';

-- 7. each employee in the Sales and Development departments, including their employee
-- number, last name, first name, and department name
select departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
from employees
inner join dept_emp on
employees.emp_no = dept_emp.emp_no
inner join departments on 
dept_emp.dept_no = departments.dept_no
where dept_emp.dept_no = 'd007'
or dept_emp.dept_no = 'd005';

-- 8. the frequency counts, in descending order, of all the employee last names (that 
-- is, how many employees share each last name)
select last_name, count(last_name)
from employees
group by last_name
order by count(last_name) DESC;



















