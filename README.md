# Atliq Exclusive Sales Analysis

This project analyzes sales data for the customer **"Atliq Exclusive"** in the **APAC region**, identifying market trends, top-performing products, and insights for strategic business decisions.

---


---

## Dataset Overview

The project uses six tables:

| Table | Description |
|-------|-------------|
| `dim_customer` | Customer details |
| `dim_product` | Product information |
| `fact_sales_monthly` | Monthly sales data |
| `fact_gross_price` | Gross price per product |
| `fact_manufacturing_cost` | Manufacturing cost per product |
| `fact_pre_invoice_deductions` | Pre-invoice discounts |

---

## Key Analysis & Insights

1. **APAC Markets for Atliq Exclusive** – Identified the regions and countries the customer operates in.  
2. **Year-over-Year Product Comparison** – Observed **20% increase** in unique products from FY 2020 to 2021.  
3. **Segment-wise Product Analysis** – Determined unique product counts per segment, sorted by count.  
4. **Segment Growth** – Identified the segment with **most significant increase** in products from 2020 to 2021.  
5. **Manufacturing Cost Analysis** – Highlighted products with **highest and lowest costs**.  
6. **Top Customers by Pre-Invoice Discount** – Identified top 5 customers in India (FY 2021).  
7. **Monthly Gross Sales Analysis** – Tables and plots for high/low-performing months.  
   ![Monthly Gross Sales](images/monthly_sales.png)  
8. **Quarter-wise Sales** – FY 2020 quarter with maximum sold quantity.  
9. **Channel Contribution FY 2021** – Channel contributing most to gross sales and its percentage.  
   ![Channel Contribution](images/channel_sales.png)  
10. **Top 3 Products per Division FY 2021** – Ranked products based on total sold quantities.  
   ![Top Products](images/top_products.png)

---

## How to Run

1. Clone the repository:

```bash
git clone https://github.com/manjotkaur06/Atliq_Exclusive_Sales_Analysis.git
cd Atliq_Exclusive_Sales_Analysis


