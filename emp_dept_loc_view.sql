CREATE or replace VIEW emp_dept_view
AS
SELECT l.city, d.department_name, e.first_name, e.last_name
FROM locations l, Departments d, Employees e
WHERE (l.location_id = d.location_id) AND (e.department_id = d.department_id);
