create or replace function star_print
(p_name employees.last_name%type) 
return varchar2 
is
v_name employees.last_name%type;
begin
select last_name 
into v_name
from employees 
where last_name = p_name;
v_name := substr(v_name,1,2)||lpad('*',length(v_name)-4,'*')||
          substr(v_name,-2,2);
return v_name;
end star_print;
/
