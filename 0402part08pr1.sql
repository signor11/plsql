declare
 v_name varchar2(10);
 begin
  select last_name into v_name from employees
 where salary = &sal;
  exception
  when too_many_rows then
 insert into messages
 values('More than one employee with a salary of <salary>');
  when no_data_found then
  insert into messages
  values('No employee with a salary of <salary>');
 end;
/
