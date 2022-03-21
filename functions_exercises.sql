USE employees;

SHOW TABLES ;
DESCRIBE employees;



SELECT first_name, last_name
FROM employees
WHERE gender = 'M'
  AND   (first_name IN ('Irena', 'Vidya')
    OR first_name IN ('Maya')
    )
ORDER BY first_name DESC , last_name;



/*SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no;*/

/*SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE first_name LIKE 'M%'
ORDER BY emp_no;*/

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE first_name LIKE 'T%'
ORDER BY emp_no;



SELECT  CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'A%'
   OR  last_name LIKE '%B';

SELECT  CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'H%'
   OR  last_name LIKE '%R';





SELECT  CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
  AND  last_name LIKE '%E';


SELECT *
FROM employees
WHERE last_name LIKE '%q%';


SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';



SELECT first_name, last_name, birth_date
FROM employees
WHERE DATE_FORMAT(birth_date, '%m-%d') IN ('12-25');

 -- #5
/*SELECT first_name, last_name, birth_date, hire_date
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25;*/
SELECT *
FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
  AND MONTH (birth_date) = 12
  AND DAY(birth_date) = 25
ORDER BY hire_date DESC;

-- #6
SELECT first_name, last_name, birth_date, hire_date,
       DATEDIFF (curdate(), hire_date)

FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY year(birth_date), year(hire_date) DESC;