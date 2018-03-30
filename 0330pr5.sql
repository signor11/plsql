select e.department_id, d.department_name, round(avg(e.salary),0) deptavg
from employees e join departments d
on (d.department_id = e.department_id)
group by e.department_id, d.department_name
having avg(salary) = 
(select max(avg(salary)) from employees group by department_id)
/
