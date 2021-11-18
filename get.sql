select employees.first_name, salaries.salary 
from employees, salaries 
where salaries.salary > 20000 
and employees.emp_no = salaries.emp_no;

-- inner join
select first_name, salary 
from employees 
inner join salaries 
on employees.emp_no = salaries.emp_no 
and salary > 20000;

select 
	employees.first_name, salaries.salary 
from employees, salaries 
where employees.emp_no = salaries.emp_no 
and salaries.salary < 10000;

--inner join
select first_name, salary 
from employees inner join salaries
on employees.emp_no = salaries.emp_no
and salary < 10000

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

select title 
from titles 
where to_date between '2019-1-1' and '2020-1-1';

select ucase(first_name) from employees;

SELECT E.first_name, E.last_name, D.dept_name
FROM employees E 
JOIN (
	SELECT emp_no, dept_no, from_date 
	FROM dept_emp 
	WHERE from_date IN (
		SELECT MAX(from_date) 
		FROM dept_emp 
		GROUP BY emp_no
	)
) recent_depts ON E.emp_no = recent_depts.emp_no 
JOIN departments D ON recent_depts.dept_no = D.dept_no 
ORDER BY E.emp_no;

select distinct first_name from employees;


