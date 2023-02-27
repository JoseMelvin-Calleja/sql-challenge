-- create table of departments 
create table departments (
	dept_no varchar primary key,
	dept_name varchar
);

-- create table of titles
create table titles (
	title_id varchar primary key,
	title varchar
);

-- create table of employees
create table employees (
	emp_no int primary key,
	emp_title_id varchar not null,
	foreign key (emp_title_id) references titles(title_id),
	birth_date varchar,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date varchar
);

-- create table of dept_emp
create table dept_emp (
	emp_no int not null,
	foreign key (emp_no) references employees(emp_no),
	dept_no varchar not null,
	foreign key (dept_no) references departments(dept_no),
	primary key(emp_no, dept_no)
);

-- creat table of dept_manager
create table dept_manager (
	dept_no varchar not null,
	foreign key (dept_no) references departments(dept_no),
	emp_no int not null,
	foreign key (emp_no) references employees(emp_no),
	primary key(dept_no, emp_no)
);

-- create table of salaries 
create table salaries (
	emp_no int not null,
	foreign key (emp_no) references employees(emp_no),
	salary int
);

-- checking tables 
select * from departments;
select * from titles;
select * from employees;
select * from dept_emp;
select * from dept_manager;
select * from salaries;



