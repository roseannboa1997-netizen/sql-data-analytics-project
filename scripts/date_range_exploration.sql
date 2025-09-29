/*
===============================================================================
Date Range Exploration 
===============================================================================
Purpose:
    - To determine the temporal boundaries of key data points.
    - To understand the range of historical data.

SQL Functions Used:
    - MIN(), MAX(), DATEDIFF()
===============================================================================
*/
Find the first and the last order
SELECT 
MIN(order_date) AS first_order_date,
MAX(order_date) AS lastt_order_date,
DATEDIFF (year, MIN(order_date),MAX(order_date)) AS order_date_years
FROM gold.fact_sales

-- Find the youngest and oldest customer
SELECT 
MIN(birthdate) AS oldest_birthdate,
DATEDIFF (year, MIN(birthdate), GETDATE()) AS oldest_age,
MAX(birthdate) AS youngest_birthdate,
DATEDIFF (year, MAX(birthdate), GETDATE()) AS youngest_age
FROM gold.dim_customers
