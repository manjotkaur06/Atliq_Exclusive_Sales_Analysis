-- Query 10: Top 3 products in each division based on total sold quantities for FY 2021
WITH product_sales AS (
    SELECT p.division, p.product, SUM(s.sold_quantity) AS total_sold
    FROM dim_product p
    JOIN fact_sales_monthly s ON p.product_code = s.product_code
    WHERE s.fiscal_year = 2021
    GROUP BY p.division, p.product
)
SELECT division, product, total_sold
FROM (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY division ORDER BY total_sold DESC) AS rn
    FROM product_sales
) ranked
WHERE rn <= 3
ORDER BY division, rn;
