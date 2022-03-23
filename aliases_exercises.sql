USE employees;

-- 1

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees LIMIT 10;

SELECT CONCAT(first_name, ' ', last_name) AS full_name, CONCAT(birth_date) AS DOB
FROM employees LIMIT 10;





