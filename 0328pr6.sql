declare
v_start number:=&input;
v_end number:=&input2;
v_gob number;
begin
for i_row in v_start..v_end loop
for i in 1..9 loop
v_gob := i_row * i;
dbms_output.put_line(i_row||'*'||i||'='||v_gob);
end loop;
end loop;
end;
/
