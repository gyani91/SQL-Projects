SELECT c.customerid,customername,SUM(amount)"total amount"
FROM bouquetorder b INNER JOIN customer c
ON c.customerid=b.customerid
GROUP BY c.customerid,customername
HAVING SUM(amount)=
(SELECT MAX(SUM(amount)) 
FROM bouquetorder GROUP BY customerid)
