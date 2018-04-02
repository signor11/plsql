declare
v_loid departments.location_id%type :=&p_loc;
v_deptid departments.department_id%type :=&p_deptno;
e_invalid_dept exception;
begin
 update departments
 set location_id = v_loid
 where department_id = v_deptid;
 if sql%notfound then
 raise_application_error(-20001,'Department'||v_deptid||
                            ' is an invalid department');
 dbms_output.put_line('Department'||v_deptid||
                            ' is an invalid department');
 end if;
 commit;
end;
/
