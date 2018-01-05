create table tb(num integer(5) primary key, emp_name varchar(10), city varchar(10));
insert into tb values (1,'ABC', 'Pune');
insert into tb values (2,'DEF', 'Nagpur');
insert into tb values (3,'PQR', 'Pune');
insert into tb values (4,'STU', 'Mumbai');
insert into tb values (5,'XYZ', 'Nagpur');
insert into tb values (6,'KLM', 'Mumbai');
select * from tb;

/* Horizontal */
create view v1 as select * from tb where city='Pune';
create view v2 as select * from tb where city='Nagpur';
create view v3 as select * from tb where city='Mumbai';

select * from v1 union select * from v2 union select * from v3;

/* Vertical */

create view v11 as select num, emp_name from tb;
create view v22 as select num, city from tb;

select * from v11, v22 where v11.num=v22.num;

/*Mixed*/

create view FM1 as select num,city from tb where city='Pune';
create view FM2 as select num,city from tb where city='Nagpur';
create view FM3 as select num,city from tb where city='Mumbai';
create view FM4 as select num,emp_name from tb;

create view FU as select * from FM1 union select * from FM2 union select * from FM3;

select FU.num, emp_name, city from FU, FM4 where FU.num = FM4.num;



