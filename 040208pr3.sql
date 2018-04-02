declare
v_cnt number(5); 
v_cntplus v_sal%type :=v_sal+100;
v_cntminus v_sal%type :=v_sal-100;
v_sal employees.salary%type :=&salin;
e_no_emp exception;
e_more_emp exception;
begin
select count(employee_id) into v_cnt from employees
where salary between v_cntminus and v_cntplus;
if v_cnt = 0 then
raise e_no_emp;
elsif v_cnt > 0 then
raise e_more_emp;
end if;
exception
when e_no_emp then
 dbms_output.put_line('There is no employee salary between '||v_cntminus||
                      ' and '||v_cntplus);
when e_more_emp then
 dbms_output.put_line('There is/are'||v_cnt||
                     ' employee(s) with a salary between'||v_cntminus||
                    ' and '||v_cntplus);
when others then
 dbms_output.put_line('Some other error occurred');
end;
/
