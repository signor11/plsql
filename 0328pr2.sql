declare
dan number:=&dan;
begin
for i in 1..9 loop
dbms_output.put_line(dan||'*'||i||'='||dan*i);
end loop;
end;
/
