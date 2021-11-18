update employees set first_name= 'Jon' where emp_no = 4;
update employees set first_name= 'Jon' where emp_no = 12;

update departments set dept_name='Back end' where dept_no= 1;
update departments set dept_name='UX design' where dept_no= 2;
update departments set dept_name='DevOps' where dept_no= 3;
update departments set dept_name='Front end' where dept_no= 4;
update departments set dept_name='Marketing' where dept_no= 5;

update salaries set salary= 5000 where emp_no=1 and from_date='1999-1-1';
 update salaries set salary= 8000 where emp_no=11 and from_date='1995-1-1';