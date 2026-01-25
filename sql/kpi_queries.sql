-- Total Revenue
SELECT SUM(sales) AS total_revenue FROM orders_clean;

-- Total Profit
SELECT SUM(profit) AS total_profit FROM orders_clean;

-- Orders Count
SELECT COUNT(DISTINCT order_id) AS total_orders FROM orders_clean;

-- Average Order Value
SELECT SUM(sales) / COUNT(DISTINCT order_id) AS avg_order_value
FROM orders_clean;
