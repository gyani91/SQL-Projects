SELECT b.bouquetid,bouquetname,
NVL(TO_CHAR(amount),'No Order Placed')"amount"
FROM bouquet b LEFT OUTER JOIN bouquetorder bo
ON b.bouquetid=bo.bouquetid
GROUP BY b.bouquetid,bouquetname,
NVL(TO_CHAR(amount),'No Order Placed')