create table emp (emp_no integer(3), emp_name varchar(20), sal integer(5), tax integer(5), mgr_no integer(3), dept_no integer(3));
insert into emp values (1,'Sumeet',30000, 10000, 2, 3);
insert into emp values (2,'Dhiraj',90000, 30000, 3, 2);
insert into emp values (3,'Mayur',95000, 40000, 3, 3);
insert into emp values (4,'Bharti',40000, 10000, 2, 2);
insert into emp values (5,'Pradeep',10000, 0, 3, 3);

select * from emp;

delete from emp;

select * from emp where dept_num<=10;
select emp_name, sal, tax, emp_no from emp where dept_no>2;
select * from emp where dept_no>2;

create view e1 as select emp_no, emp_name, dept_no from emp;

select * from e2;

create view e2 as select emp_no, emp_name from emp where dept_no>2;

select * from emp where emp_no=3;
select * from emp where emp_no=3 and dept_no=3;
select emp_no from emp where mgr_n0=2;
select * from emp where emp_name like 'd%';







