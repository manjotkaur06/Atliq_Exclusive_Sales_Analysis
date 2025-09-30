-- Query 7: Gross sales per month for Atliq Exclusive
SELECT YEAR(s.date) AS year,
       MONTH(s.date) AS month,
       SUM(g.gross_price * s.sold_quantity) AS gross_sales
FROM fact_sales_monthly s
JOIN fact_gross_price g ON s.product_code = g.product_code
JOIN dim_customer c ON s.customer_code = c.customer_code
WHERE c.customer = 'Atliq Exclusive'
GROUP BY YEAR(s.date), MONTH(s.date)
ORDER BY year, month;
