delete from employees
join salaries 
on salaries.emp_no = employees.emp_no
where salary < 6000;

