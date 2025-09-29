/*
===============================================================================
Measures Exploration (Key Metrics)
===============================================================================
Purpose:
    - To calculate aggregated metrics (e.g., totals, averages) for quick insights.
    - To identify overall trends or spot anomalies.

SQL Functions Used:
    - COUNT(), SUM(), AVG()
===============================================================================
*/

Find the total sales
SELECT 
SUM(sales_amount) AS total_sales
FROM  gold.fact_sales

-- Find how many times items are sold
SELECT 
SUM(quantity) AS total_quantity
FROM  gold.fact_sales

-- Find the average selling price
SELECT 
AVG(price) AS average_price
FROM gold.fact_sales

-- Find the total number of orders
SELECT
COUNT(DISTINCT(order_number)) AS total_orders
FROM gold.fact_sales

-- Find the total number of products 
SELECT COUNT(DISTINCT(product_key)) AS product_number FROM gold.dim_products

-- Find the total number of customers
SELECT 
COUNT(customer_key) as customer_number
FROM gold.dim_customers

-- Find the total number of customers that has placed an order 
SELECT 
COUNT(DISTINCT(customer_key)) as customer_number
FROM gold.fact_sales

-- Generate a report that shows all key metrics of the business

SELECT 'Total Sales' as measure_name, SUM(sales_amount) AS measure_value FROM  gold.fact_sales
UNION ALL
SELECT 'Total Quantity', SUM(quantity) FROM  gold.fact_sales
UNION ALL
SELECT 'Average Price', AVG(price) FROM gold.fact_sales
UNION ALL
SELECT 'Total Nr.Orders', COUNT(DISTINCT(order_number)) FROM gold.fact_sales
UNION ALL
SELECT 'Total Nr.Products', COUNT(DISTINCT(product_key)) FROM gold.dim_products
UNION ALL
SELECT 'Total Nr.Customer', COUNT(customer_key) FROM gold.dim_customers
UNION ALL
SELECT 'Total Nr. Of Customer Ordered', COUNT(DISTINCT(customer_key)) FROM gold.fact_sales
