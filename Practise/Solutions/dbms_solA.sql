SELECT SUBSTR(customerid,2,LENGTH(customerid)-1)"Customerid",
SUBSTR(floraloutletid,2,LENGTH(customerid)-1)"Floraloutletid"
FROM bouquetorder
WHERE quantity>3;