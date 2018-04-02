declare
 cursor c_emp_cursor is
  select salary from employees
  order by salary desc;
  v_emp_record c_emp_cursor%rowtype;
  begin
  open c_emp_cursor;
  loop
  fetch c_emp_cursor into v_emp_record;
  exit when c_emp_cursor%rowcount > 5;
  insert into top_dogs
  values(v_emp_record.salary);
  end loop;
  close c_emp_cursor;
 end;
/
