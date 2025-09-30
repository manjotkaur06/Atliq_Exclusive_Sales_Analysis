-- Query 3: Analyze unique product counts per segment
SELECT p.segment,
       COUNT(DISTINCT f.product_code) AS unique_products
FROM dim_product p
JOIN fact_gross_price f
  ON p.product_code = f.product_code
GROUP BY p.segment
ORDER BY unique_products DESC;
