SELECT c.customerid,customername,address,
COUNT(DISTINCT bouquetid) "number of different bouquetid"
FROM bouquetorder b INNER JOIN customer c
ON c.customerid=b.customerid
GROUP BY c.customerid,customername,address
HAVING COUNT(DISTINCT bouquetid)>1