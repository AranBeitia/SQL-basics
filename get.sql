select 
	employees.first_name, salaries.salary 
from employees, salaries 
where salaries.salary > 20000 
and employees.emp_no = salaries.emp_no;

select 
	employees.first_name, salaries.salary 
from employees, salaries 
where employees.emp_no = salaries.emp_no 
and salaries.salary < 10000;

select 
	employees.*, salaries.* 
from employees inner join salaries 
on employees.emp_no = salaries.emp_no 
where salaries.salary between 14000 and 50000;

select count(emp_no) from employees;

select emp_no 
from (
	select emp_no 
	from dept_emp 
	group by emp_no 
	having count(emp_no)> 1
) employees;
