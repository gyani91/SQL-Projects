create table passenger (Pass_Num int (10), Name varchar (10), primary key(Pass_Num));
create table cash (Note_Num int (10), primary key(Note_Num), Pass_Num int(10), foreign key (Pass_Num) references passenger(Pass_Num));
insert into passenger values (101,'Gyani');
insert into passenger values (102,'Neha');
insert into cash values (103, 101);
select * from passenger;
select * from cash;
create table trial (Pass_Num int(4) NOT NULL, New_Num int(4), unique (New_Num));
insert into trial values (101, 1);
insert into trial(New_Num) values (10);
insert into trial values (105, 1);
insert into trial values (105, 2);
select * from trial;

create table trial2 (Pass_Num int(4) default 10, New_Num int(4), check (New_Num>500));
insert into trial2 values (101, 600);
insert into trial2(New_Num) values (700);
insert into trial2 values (105, 400);
insert into trial2 values (105, 700);
select * from trial2;

