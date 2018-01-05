select * from employee where salary<(select avg(salary) from employee) group by name;
select count(*) from employee where salary<(select avg(salary) from employee);
select count(distinct salary) from employee where salary<(select avg(salary) from employee);
SELECT salary FROM employee ORDER BY emp_id ASC LIMIT 1;/* substitute for First() */
SELECT salary FROM employee ORDER BY emp_id DESC LIMIT 1;/* substitute for Last() */
select * from employee where salary = (select max(salary) from employee);
select * from employee where salary = (select min(salary) from employee);
select sum(salary) from employee;
select dept, sum(salary) from employee2 group by dept having sum(salary)>30000;


