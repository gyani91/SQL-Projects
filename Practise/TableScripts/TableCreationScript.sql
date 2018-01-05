
DROP TABLE customer CASCADE CONSTRAINTS purge;
DROP TABLE floraloutlet CASCADE CONSTRAINTS purge;
DROP TABLE bouquet CASCADE CONSTRAINTS purge;
DROP TABLE bouquetorder CASCADE CONSTRAINTS purge;

create table customer(
customerid VARCHAR2(5) PRIMARY KEY CHECK(customerid LIKE 'C%'),
customername VARCHAR2(20),
address VARCHAR2(20));

create table floraloutlet(
floraloutletid VARCHAR2(5) PRIMARY KEY CHECK(floraloutletid LIKE 'F%'),
outletname VARCHAR2(20),
location VARCHAR2(20));

create table bouquet
(bouquetid VARCHAR2(5) PRIMARY KEY CHECK(bouquetid LIKE 'B%'),
bouquetname VARCHAR(40),
price NUMBER);

create table bouquetorder(
orderid VARCHAR2(5) PRIMARY KEY,
customerid VARCHAR2(5)  REFERENCES customer(customerid),
floraloutletid VARCHAR2(5)  REFERENCES floraloutlet(floraloutletid),
bouquetid VARCHAR2(5)  REFERENCES bouquet(bouquetid),
ordertype VARCHAR2(30),
ordercharge NUMBER,
quantity NUMBER,
amount NUMBER);
