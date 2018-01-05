SELECT floraloutletid,SUM(quantity) "total quantity" 
FROM bouquetorder GROUP BY floraloutletid
HAVING SUM(quantity)>3