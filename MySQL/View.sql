create table employee2 (emp_name varchar(10), dept varchar(10), salary int(10), primary key(emp_name));
insert into employee2 values ('Anjali', 'CSE', 40000);
insert into employee2 values ('Gyani', 'CSE', 80000);
insert into employee2 values ('Neha', 'ETC', 40000);
insert into employee2 values ('Monica', 'CSE', 60000);
insert into employee2 values ('Deepak', 'CSE', 40000);
insert into employee2 values ('Mayur', 'ETC', 50000);
select * from employee2;
select emp_name, salary from employee2 order by salary;

create view emp as select emp_name , salary from employee2 where salary>45000;
select * from emp;
create view final as select emp_name , salary from emp where salary<70000;
select * from final;

create or replace view final as select salary from emp where salary<90000;
select * from final;

drop view emp;
select * from emp;