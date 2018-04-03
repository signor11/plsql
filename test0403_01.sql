create or replace function emp_out
(p_empid employees.employee_id%type)
 return varchar2
is
p_years number;
begin
select months_between(sysdate,hire_date)/12 
into p_years
from employees
where employee_id = p_empid;
if p_years >= 30 then
 return ('A');
elsif p_years >= 25 then
 return ('B');
else 
 return('new employee'); 
end if;
end emp_out;
/
