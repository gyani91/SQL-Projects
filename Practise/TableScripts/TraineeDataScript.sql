delete  from customer cascade constraints purge;
delete from floraloutlet cascade constraints purge;
delete  from bouquet cascade constraints purge;
delete  from bouquetorder cascade constraints purge;

insert into customer values('C1001','Susan','Frankfurt');
insert into customer values('C1002','George','Manchester');
insert into customer values('C1003','Mary','Belgrade');
insert into customer values('C1004','Jack','Italy');
insert into customer values('C1005','Alena','Venice');
insert into customer values('C1006','Jane','Poland');

insert into floraloutlet values('F2001','Floral Paradise','Frankfurt');
insert into floraloutlet values('F2002','Fresh Blossoms','Manchester');
insert into floraloutlet values('F2003','Floral Shoppers Stop','Belgrade');
insert into floraloutlet values('F2004','Blooming Buds','Italy');
insert into floraloutlet values('F2005','Floral Wishes ','Venice');
insert into floraloutlet values('F2006','Lovely Florets','Poland');

insert into bouquet values('B1001','Rose Special',2000);
insert into bouquet values('B1002','Gerbera Special',1500);
insert into bouquet values('B1003','Mixed Seasonal Flowers',2500);
insert into bouquet values('B1004','Mixed Blended Flowers',1800);
insert into bouquet values('B1005','Welcome Special',1000);
insert into bouquet values('B1006','Wedding Special',3000);


insert into bouquetorder values('O1001','C1003','F2001','B1004','Courier service',500,2,4100);
insert into bouquetorder values('O1002','C1004','F2004','B1003','Door delivery',300,1,2800);
insert into bouquetorder values('O1003','C1006','F2006','B1004','Door delivery',300,3,5700);
insert into bouquetorder values('O1004','C1002','F2001','B1001','Online delivery',700,1,2700);
insert into bouquetorder values('O1005','C1001','F2001','B1005','Online delivery',700,1,1700);
insert into bouquetorder values('O1006','C1006','F2003','B1006','Online delivery',700,4,12700);
insert into bouquetorder values('O1007','C1005','F2005','B1006','Online delivery',700,4,12700);
insert into bouquetorder values('O1008','C1004','F2002','B1006','Online delivery',700,1,3700);
insert into bouquetorder values('O1009','C1004','F2002','B1006','Online delivery',700,1,3700);
insert into bouquetorder values('O1010','C1006','F2006','B1004','Door delivery',300,3,7000);

commit;




