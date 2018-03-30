declare
 v_countries countries%rowtype;
begin
select * 
into v_countries
from countries
where country_id  = upper('&eid');
dbms_output.put_line(' Country Id : '||v_countries.country_id||chr(10)
||' Country Name: '||v_countries.country_name||' Region: '||
v_countries.region_id);
end;
/
