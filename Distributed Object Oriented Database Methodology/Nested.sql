create table info (roll_no integer(3), name1 varchar(10), marks integer(3), salary integer(6), dept varchar(3));

insert into info values (1, 'Sumeet', 64, 355000, 'CSE');
insert into info values (2, 'Anjali', 76, 320000, 'CSE');
insert into info values (3, 'Saurabh', 52, 180000, 'ETC');
insert into info values (4, 'Rimjhim', 72, 318000, 'CSE');
insert into info values (5, 'Rupal', 68, 200000, 'ETC');
insert into info values (6, 'Monika', 71, 240000, 'IT');

select name1 from info where dept=(select dept from info where name1='Sumeet');

create view v1 as select * from info where dept = 'CSE';
create view v2 as select * from info where dept = 'IT';
create view v3 as select * from info where dept = 'ETC';

select * from v2 where roll_no not in (select roll_no from info where name1='Anjali' and dept ='CSE');

select * from v2 where roll_no in (select v1.roll_no from v2, v1 where v1.roll_no=v2.roll_no union 
select v2.roll_no from v2, v3 where v3.roll_no = v2.roll_no);

select * from info where roll_no not in (select roll_no from info where roll_no=5);

select dept, min(salary) from info group by dept having min(salary) > (select min(salary) from info where dept='IT');