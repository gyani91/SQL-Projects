create table persons (p_id int(2), fname varchar(10), lname varchar(20), address varchar(20), city varchar(10), primary key(p_id));
create table orders (o_id int(2), orderno int(10), p_id int(2), primary key(o_id));
insert into persons values (1,'Anjali','Vasani','Gandhinagar','Nagpur');
insert into persons values (2,'Sumeet','Gyanchandani','Jaripatka','Nagpur');
insert into persons values (3,'Pradeep','Thawani','Jaripatka','Nagpur');
insert into persons values (4,'Monica','Manwani','Alaye','Itarsi');
insert into orders values (1,77,2);
insert into orders values (2,88,3);
insert into orders values (3,22,1);
insert into orders values (4,99,3);
insert into orders values (5,12,45);
select * from persons inner join orders on persons.p_id=orders.p_id order by persons.lname;
select * from persons left join orders on persons.p_id=orders.p_id order by persons.lname;
select * from persons right join orders on persons.p_id=orders.p_id order by persons.lname;
SELECT * FROM persons LEFT JOIN orders ON persons.p_id=orders.p_id UNION SELECT * FROM persons RIGHT JOIN orders ON persons.p_id=orders.p_id;
/* Substitute for Full Outer Join in Mysql */


select city from persons where p_id>2 union select p_id from orders where o_id<3;

select * from persons right join orders on persons.p_id=orders.p_id where persons.lname is null;
select * from persons right join orders on persons.p_id=orders.p_id where persons.lname is not null;
select persons.fname, persons.lname, ifnull(persons.address,0), orders.orderno from persons right join orders on persons.p_id=orders.p_id;
select persons.fname, persons.address, coalesce(persons.lname,0), orders.orderno from persons right join orders on persons.p_id=orders.p_id;


insert into orders(orderno) select p_id from persons where city='Itarsi';
select * from orders;
