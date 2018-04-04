create or replace procedure newdeptid
(b_checkid in departments.department_id%type,
b_checkname in departments.department_name%type)
is
countdept number;
begin
select count(*) 
into countdept 
from departments
where department_id = b_checkid or department_name = b_checkname;
if countdept>=1 then
 dbms_output.put_line('already exists');
else 
 insert into departments(department_id,department_name)
 values (b_checkid,b_checkname);
 commit;
 dbms_output.put_line('Mission Success');
end if;
exception 
 when others then
 dbms_output.put_line('Error occurred');
end newdeptid;
/
