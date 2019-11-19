CREATE or replace VIEW emp_job_view 
AS 
select e.employee_id, e.last_name, e.first_name, j.job_title
from employees e
join jobs j
join job_history jh
on jh.job_id = j.job_id
on jh.employee_id = e.employee_id
union all
select e.employee_id, e.last_name, e.first_name, j.job_title
from employees e
join jobs j 
on e.job_id = j.job_id
order by employee_id;