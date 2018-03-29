select last_name, to_char(hire_date,'day') hiredate , months_between(sysdate,hire_date) month from employees
order by to_char(hire_date-1,'D')
/
