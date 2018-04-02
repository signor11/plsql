declare
cursor c_emp is 
select last_name, salary,manager_id from employees
where department_id = &deptid;
begin
 for i in c_emp
 loop
 if i.salary<5000 and i.manager_id in(101,125)then
 dbms_output.put_line('<<last_name>> Due for a raise');
 else 
 dbms_output.put_line('<<last_name>> Not due a raise');
 end if;
 end loop;
end;
/
