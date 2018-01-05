SELECT orderid,customername,ordercharge 
FROM bouquetorder b INNER JOIN customer c
ON c.customerid=b.customerid
WHERE ordertype='Online delivery'