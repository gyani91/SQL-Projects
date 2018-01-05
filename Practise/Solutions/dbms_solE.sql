SELECT orderid,ordertype,CASE
WHEN amount<4000 THEN 'Low Pay Order'
WHEN amount>=4000 AND amount<=7000 THEN 'Medium Pay Order'
ELSE 'High Pay Order'
END AS "classification"
FROM bouquetorder