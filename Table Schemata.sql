CREATE TABLE titles (
  title_id VARCHAR(5) PRIMARY KEY,
  title VARCHAR(50) NOT NULL
);

CREATE TABLE employees (
  emp_no INT PRIMARY KEY,
  emp_title_id VARCHAR(5),
  birth_date DATE,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  sex CHAR(1),
  hire_date DATE,
  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);


CREATE TABLE departments (
  dept_no CHAR(4) PRIMARY KEY,
  dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE dept_emp (
  emp_no INT,
  dept_no CHAR(4),
  PRIMARY KEY (emp_no, dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries (
  emp_no INT,
  salary INT,
  PRIMARY KEY (emp_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);



CREATE TABLE dept_manager (
  dept_no CHAR(4),
  emp_no INT,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SET datestyle = 'ISO, MDY';

