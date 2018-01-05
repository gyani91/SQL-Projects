select ucase(name) from employee;
select lcase(name) from employee;
select *, mid(name,3,3)from employee;

select *, length(name) from employee;
select *, round(salary,0) from employee;

select now() from employee;
SELECT *, FORMAT(now(),'DD-MM-YYYY') AS JoiningDate FROM employee;
