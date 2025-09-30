-- Query 5: Products with highest and lowest manufacturing costs
SELECT f.product_code, p.product, f.manufacturing_cost
FROM fact_manufacturing_cost f
JOIN dim_product p ON f.product_code = p.product_code
WHERE f.manufacturing_cost = (SELECT MAX(manufacturing_cost) FROM fact_manufacturing_cost)
   OR f.manufacturing_cost = (SELECT MIN(manufacturing_cost) FROM fact_manufacturing_cost);
