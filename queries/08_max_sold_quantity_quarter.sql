-- Query 8: Quarter of 2020 with maximum total sold quantity
SELECT CONCAT('Q', QUARTER(date)) AS quarter,
       SUM(sold_quantity) AS total_sold_quantity
FROM fact_sales_monthly
WHERE YEAR(date) = 2020
GROUP BY QUARTER(date)
ORDER BY total_sold_quantity DESC
LIMIT 1;
