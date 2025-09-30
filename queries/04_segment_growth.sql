-- Query 4: Segment with most significant increase in unique products from 2020 to 2021
WITH product_counts AS (
    SELECT p.segment, f.fiscal_year, COUNT(DISTINCT f.product_code) AS unique_products
    FROM dim_product p
    JOIN fact_gross_price f ON p.product_code = f.product_code
    WHERE f.fiscal_year IN (2020, 2021)
    GROUP BY p.segment, f.fiscal_year
)
SELECT t2021.segment,
       t2021.unique_products - t2020.unique_products AS growth
FROM product_counts t2020
JOIN product_counts t2021
  ON t2020.segment = t2021.segment
WHERE t2020.fiscal_year = 2020
  AND t2021.fiscal_year = 2021
ORDER BY growth DESC
LIMIT 1;
