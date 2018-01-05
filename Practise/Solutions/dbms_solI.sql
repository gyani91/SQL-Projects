SELECT customername,outletname,bouquetname
FROM customer c INNER JOIN bouquetorder bo
ON c.customerid=bo.customerid
INNER JOIN bouquet b
ON b.bouquetid=bo.bouquetid
INNER JOIN floraloutlet f
ON f.floraloutletid=bo.floraloutletid
WHERE b.bouquetid=
(SELECT bouquetid FROM bouquetorder GROUP BY bouquetid
HAVING COUNT(bouquetid)=
(SELECT MAX(COUNT(bouquetid)) FROM bouquetorder GROUP BY bouquetid
))
GROUP BY customername,outletname,bouquetname