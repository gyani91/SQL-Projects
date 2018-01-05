create database mydb;
create table employee (emp_id int (10), name char (10), salary int (10), primary key(emp_id));
create index Nindex on employee(name);

insert into employee values (001,'Anjali',55000);
alter table employee add (address varchar (20));
select * from employee;
alter table employee drop address;
select * from employee;

alter table employee modify salary varchar(4);
insert into employee values (006,'Neha','Conc MBA');
insert into employee values (007,'Suman','House Wife');

rename table employee to emplo;
select * from emplo;

delete from employee where emp_id >4;
truncate employee;
drop table employee;