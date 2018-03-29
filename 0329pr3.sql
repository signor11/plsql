select manager_id,count(employee_id),min(salary) from employees
group by manager_id
having manager_id is not null and min(salary)>5000
/
