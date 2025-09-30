-- Query 9: Channel contributing most to gross sales in FY 2021
SELECT c.channel,
       SUM(g.gross_price * s.sold_quantity) AS gross_sales,
       SUM(g.gross_price * s.sold_quantity) / (SELECT SUM(gross_price * sold_quantity)
                                              FROM fact_sales_monthly s2
                                              JOIN fact_gross_price g ON s2.product_code = g.product_code
                                              WHERE s2.fiscal_year = 2021) * 100 AS percentage_contribution
FROM fact_sales_monthly s
JOIN dim_customer c ON s.customer_code = c.customer_code
JOIN fact_gross_price g ON s.product_code = g.product_code
WHERE s.fiscal_year = 2021
GROUP BY c.channel
ORDER BY gross_sales DESC
LIMIT 1;
