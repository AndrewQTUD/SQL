PROMPT Enter the department you are looking for
ACCEPT dept NUMBER PROMPT "Department Number :"
select first_name, last_name, department_id
from employees
WHERE department_id = &dept;