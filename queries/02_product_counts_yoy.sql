-- Query 2: Compare unique product counts between 2020 and 2021
SELECT fiscal_year,
       COUNT(DISTINCT product_code) AS unique_products
FROM fact_gross_price
WHERE fiscal_year IN (2020, 2021)
GROUP BY fiscal_year;
