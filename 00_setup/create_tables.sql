DROP TABLE employees CASCADE CONSTRAINTS;
DROP TABLE departments CASCADE CONSTRAINTS;

CREATE TABLE departments (
  dept_id NUMBER PRIMARY KEY,
  dept_name VARCHAR2(50) NOT NULL
);

CREATE TABLE employees (
  emp_id NUMBER PRIMARY KEY,
  emp_name VARCHAR2(100) NOT NULL,
  monthly_salary NUMBER(10,2),
  hire_date DATE NOT NULL,
  dept_id NUMBER REFERENCES departments(dept_id)
);

INSERT INTO departments VALUES (10, 'IT');
INSERT INTO departments VALUES (20, 'HR');
INSERT INTO departments VALUES (30, 'Finance');

INSERT INTO employees VALUES (1, 'Alice', 1200, DATE '2020-03-15', 10);
INSERT INTO employees VALUES (2, 'Bob', 2500, DATE '2018-07-01', 20);
INSERT INTO employees VALUES (3, 'Charlie', 800, DATE '2022-01-10', 10);
INSERT INTO employees VALUES (4, 'David', 5000, DATE '2015-05-20', 30);
COMMIT;
