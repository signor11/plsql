begin
for i in 1..10 loop
dbms_output.put_line(lpad('-',10-i,'-')||rpad('*',i,'*'));
end loop;
end;
/
