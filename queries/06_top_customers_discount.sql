-- Query 6: Top 5 customers in India with highest average pre-invoice discount for FY 2021
SELECT c.customer,
       AVG(f.pre_invoice_discount_pct) AS avg_discount_pct
FROM fact_pre_invoice_deductions f
JOIN dim_customer c ON f.customer_code = c.customer_code
WHERE f.fiscal_year = 2021
  AND c.sub_zone = 'India'
GROUP BY c.customer
ORDER BY avg_discount_pct DESC
LIMIT 5;
