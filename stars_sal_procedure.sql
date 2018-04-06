create or replace procedure stars_sal
(p_empid in employees.employee_id%type)
is
v_sal emp.sal%type;
begin
select sal
into v_sal
from emp
where empno = p_empid;
dbms_output.put_line(v_sal);
/*update emp
set stars = lpad('*',v_sal/1000,'*')
where empno = p_empid;
commit;*/
end stars_sal;
/
