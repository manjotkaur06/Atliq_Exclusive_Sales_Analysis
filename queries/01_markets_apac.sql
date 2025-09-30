-- Query 1: Identify APAC markets for Atliq Exclusive
SELECT DISTINCT market, region
FROM dim_customer
WHERE customer = 'Atliq Exclusive'
  AND region = 'APAC';
