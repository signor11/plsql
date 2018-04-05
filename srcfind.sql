create or replace procedure src_find
(p_sourcetext user_source.name%type) 
is
cursor c_src_cursor is
select text from user_source
where name = upper(p_sourcetext);
begin
for i in c_src_cursor
loop
dbms_output.put_line(i.text);
end loop;
end src_find;
/
