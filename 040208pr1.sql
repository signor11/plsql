declare
 v_name varchar2(10);
 v_sal number:=&sal;
 begin
 select last_name,salary into v_name,v_sal from employees
 where salary = v_sal;
  insert into messages
  values(v_name||' '||v_sal);
  commit;
 exception
  when too_many_rows then
   insert into messages
   values('More than one employee with a salary of <'||v_sal||'>');
   commit;
  when no_data_found then
   insert into messages
   values('No employee with a salary of <'||v_sal||'>');
   commit;
  when others then
   insert into messages
   values('Some other error occurred');
   commit;
 end;
/
