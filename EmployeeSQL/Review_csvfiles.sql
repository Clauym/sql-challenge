DROP TABLE IF EXIST dept_emp CASCADE;
DROP TABLE IF EXIST departaments CASCADE;
DROP TABLE IF EXIST salaries CASCADE;
DROP TABLE IF EXIST titles CASCADE;
DROP TABLE IF EXIST dept_manager CASCADE;
DROP TABLE IF EXIST employees;


--Table to check if there are duplicates in the csv files
CREATE TABLE departaments (
	dept_no CHAR(4) NOT NULL,
	dept_name VARCHAR(50)
);

SELECT * FROM departaments;

-Query that searches any duplicates in rows

SELECT dept_no, COUNT(dept_no)
FROM departaments
GROUP BY dept_no
HAVING COUNT(dept_no)> 1;



CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no CHAR(4)
);

SELECT * FROM dept_emp;

SELECT emp_no, COUNT(emp_no)
FROM dept_emp
GROUP BY emp_no
HAVING COUNT(emp_no)> 1;



CREATE TABLE dept_manager (
	 dept_no CHAR(4),
	emp_no INT NOT NULL
);

SELECT * FROM dept_manager;

SELECT emp_no, COUNT(emp_no)
FROM dept_manager
GROUP BY emp_no
HAVING COUNT(emp_no)> 1;



CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id CHAR(5),
	birth_date DATE,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	sex VARCHAR(1),
	hire_date DATE
);

SELECT * FROM employees;

SELECT emp_no, COUNT(emp_no)
FROM salaries
GROUP BY emp_no
HAVING COUNT(emp_no)> 1;



CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT
);


SELECT * FROM salaries;

SELECT emp_no, COUNT(emp_no)
FROM salaries
GROUP BY emp_no
HAVING COUNT(emp_no)> 1;



CREATE TABLE titles (
	title_id CHAR(5) NOT NULL,
	title varchar(50)
);

SELECT * FROM titles;

SELECT title_id, COUNT(title_id)
FROM titles
GROUP BY title_id
HAVING COUNT(title_id)> 1;
