PROMPT Enter the Employee you are looking for
ACCEPT emp VARCHAR2(30) PROMPT "Enter the Employee name"
SELECT first_name, last_name, department_id
FROM Employees
WHERE first_name = &emp;