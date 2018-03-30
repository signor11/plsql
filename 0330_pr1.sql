select worker.last_name emp, manager.last_name mgr from employees worker join employees manager
on (worker.manager_id = manager.employee_id)
/
