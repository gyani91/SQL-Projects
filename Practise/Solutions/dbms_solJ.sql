SELECT b.bouquetid,bouquetname,
COUNT(orderid) "number of orders"
FROM bouquet b INNER JOIN bouquetorder bo
ON b.bouquetid=bo.bouquetid
GROUP BY b.bouquetid,bouquetname
HAVING COUNT(orderid)=
(SELECT MAX(COUNT(orderid)) FROM bouquetorder
GROUP BY bouquetid HAVING COUNT(orderid)!=
(SELECT MAX(COUNT(orderid)) 
FROM bouquetorder GROUP BY bouquetid))