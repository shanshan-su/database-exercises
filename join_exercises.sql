USE employees;

-- write a query that shows each department along with the name of the current manager for that department.
--
--
-- +--------------------+--------------------+
-- | Department Name    | Department Manager |
-- +--------------------+--------------------+
-- | Customer Service   | Yuchang Weedman    |
-- | Development        | Leon DasSarma      |
-- | Finance            | Isamu Legleitner   |
-- | Human Resources    | Karsten Sigstam    |
-- | Marketing          | Vishwani Minakawa  |
-- | Production         | Oscar Ghazalie     |
-- | Quality Management | Dung Pesch         |
-- | Research           | Hilary Kambil      |
-- | Sales              | Hauke Zhang        |
-- +--------------------+--------------------+

SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS d
JOIN dept_manager AS de
  ON d.dept_no = de.dept_no
JOIN employees AS e
  ON de.emp_no = e.emp_no
WHERE YEAR(de.to_date) = '9999';

-- Find the name of all departments currently managed by women.
--
-- +------------------+--------------------+
-- | Department Name  | Department Manager |
-- +------------------+--------------------+
-- | Development      | Leon DasSarma      |
-- | Finance          | Isamu Legleitner   |
-- | Human Resources  | Karsten Sigstam    |
-- | Research         | Hilary Kambil      |
-- +------------------+--------------------+

SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS d
JOIN dept_manager AS de
  ON d.dept_no = de.dept_no
JOIN employees AS e
  ON de.emp_no = e.emp_no
WHERE YEAR(de.to_date) = '9999' AND e.gender = 'F';

-- Find the current titles of employees currently working in the Customer Service department.
--
-- +--------------------+-------+
-- | title              | Total |
-- +--------------------+-------+
-- | Senior Staff       | 11268 |
-- | Staff              |  3574 |
-- | Senior Engineer    |  1790 |
-- | Engineer           |   627 |
-- | Technique Leader   |   241 |
-- | Assistant Engineer |    68 |
-- | Manager            |     1 |
-- +--------------------+-------+

SELECT t.title, COUNT(t.title) AS 'Total'
FROM titles t
JOIN dept_emp de
  ON t.emp_no = de.emp_no
JOIN departments d
  ON de.dept_no = d.dept_no
WHERE t.to_date = '9999-01-01' AND d.dept_name = 'Customer Service'
GROUP BY t.title;

-- Find the current salary of all current managers.
--
-- +--------------------+--------------------+--------+
-- | Department Name    | Department Manager | Salary |
-- +--------------------+--------------------+--------+
-- | Customer Service   | Yuchang Weedman    |  58745 |
-- | Development        | Leon DasSarma      |  74510 |
-- | Finance            | Isamu Legleitner   |  83457 |
-- | Human Resources    | Karsten Sigstam    |  65400 |
-- | Marketing          | Vishwani Minakawa  | 106491 |
-- | Production         | Oscar Ghazalie     |  56654 |
-- | Quality Management | Dung Pesch         |  72876 |
-- | Research           | Hilary Kambil      |  79393 |
-- | Sales              | Hauke Zhang        | 101987 |
-- +--------------------+--------------------+--------+

SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
       s.salary AS 'Salary'
FROM departments d
JOIN dept_manager AS de
  ON d.dept_no = de.dept_no
JOIN employees AS e
  ON de.emp_no = e.emp_no
JOIN salaries s
  ON s.emp_no = e.emp_no
WHERE YEAR(de.to_date) = '9999' AND YEAR(s.to_date)  = '9999';

-- Bonus
-- Find the names of all current employees, their department name, and their current manager's name .
--
--
-- +----------------------+------------------+-----------------+
-- | Employee             | Department       | Manager         |
-- +----------------------+------------------+-----------------+
-- | Huan Lortz           | Customer Service | Yuchang Weedman |
-- | Basil Tramer         | Customer Service | Yuchang Weedman |
-- | Breannda Billingsley | Customer Service | Yuchang Weedman |
-- | Jungsoon Syrzycki    | Customer Service | Yuchang Weedman |
-- | Yuichiro Swick       | Customer Service | Yuchang Weedman |
-- ... 240,124 Rows in total

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee',
       d.dept_name AS 'Department',
       m.full_name AS 'Manager'
FROM employees e
JOIN dept_emp de
  ON de.emp_no = e.emp_no
JOIN departments d
  ON d.dept_no = de.dept_no
JOIN dept_manager AS dm
  ON dm.dept_no = d.dept_no
JOIN (SELECT e2.emp_no AS emp_no,
             concat(e2.first_name, ' ', e2.last_name) AS full_name
      FROM employees e2
      JOIN dept_manager dm2
        ON e2.emp_no = dm2.emp_no
      WHERE YEAR(dm2.to_date) = '9999') m
  ON m.emp_no = dm.emp_no
WHERE YEAR(dm.to_date) = '9999' AND YEAR(de.to_date) = '9999'
ORDER BY d.dept_name, CONCAT(e.first_name, ' ', e.last_name);


SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee',
       d.dept_name AS 'Department',
       CONCAT(e2.first_name, ' ', e2.last_name) AS 'Manager'
FROM employees e
     JOIN dept_emp de
          ON de.emp_no = e.emp_no
     JOIN departments d
          ON d.dept_no = de.dept_no
     JOIN dept_manager AS dm
          ON dm.dept_no = d.dept_no
     LEFT OUTER JOIN employees e2
        ON e2.emp_no = dm.emp_no
WHERE YEAR(dm.to_date) = '9999' AND YEAR(de.to_date) = '9999'
ORDER BY d.dept_name, CONCAT(e.first_name, ' ', e.last_name);