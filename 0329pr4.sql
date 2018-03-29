select e.last_name, d.department_name, e.salary
from employees e join departments d
on e.department_id = d.department_id
join job_grades j
on e.salary between j.lowest_sal and j.highest_sal
/
