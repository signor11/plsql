create or replace function level_check
(p_eid employees.employee_id%type)
return varchar2
is
v_level job_grades.grade_level%type;
begin
select j.grade_level 
into v_level
from employees e join job_grades j
on(e.salary between j.lowest_sal and j.highest_sal)
where e.employee_id = p_eid;
return v_level;
end level_check;
/
