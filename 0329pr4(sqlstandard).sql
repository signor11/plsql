select e.last_name, d.department_name, e.salary
from employees e, departments d, job_grades j
where e.department_id = d.department_id
and e.salary between j.lowest_sal and j.highest_sal
/
