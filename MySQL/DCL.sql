create table trial3 (a int(4), b int(4));

insert into trial3 values (1,1);
commit;
insert into trial3 values (2,2);
select * from trial3;

insert into trial3 values (3,3);
savepoint my_sp_1;

insert into trial3 values (4,4);
rollback to my_sp_1;

select * from trial3;

grant all on trial3 to test;
revoke select on trial3 from test;

