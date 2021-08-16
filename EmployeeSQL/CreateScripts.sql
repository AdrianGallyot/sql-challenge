
CREATE TABLE employees (
	emp_no INT NOT NULL
	, emp_title_id VARCHAR NOT NULL
	, birth_date DATE NOT NULL
	, first_name VARCHAR NOT NULL
	, last_name VARCHAR NOT NULL
	, sex VARCHAR NOT NULL
	, hire_date DATE NOT NULL
	, PRIMARY KEY (emp_no));


CREATE TABLE Departments (
    dept_no  VARCHAR  NOT NULL,
    dept_name VARCHAR NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE salaries (
    emp_no  INT  NOT NULL,
    salary INT   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no"
     )
);


CREATE TABLE titles (
    "title_id"  varchar  NOT NULL,
    "title" varchar   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

CREATE TABLE Dept_emp (
    "emp_no" INT NOT NULL,
    "dept_no" varchar NOT NULL,
    CONSTRAINT "pk_Dept_emp" PRIMARY KEY (
        "emp_no"
     )
);


CREATE TABLE Dept_Manager (
    emp_no INT NOT NULL,
    dept_no  VARCHAR  NOT NULL,
    CONSTRAINT "pk_Dept_Manager" PRIMARY KEY (
        "emp_no"
     )
);

ALTER TABLE Dept_Manager
    OWNER to postgres;