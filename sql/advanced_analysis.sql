-- Monthly Revenue Trend
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(sales) AS revenue
FROM orders_clean
GROUP BY month
ORDER BY month;

-- Region-wise Profit
SELECT
    region,
    SUM(profit) AS total_profit
FROM orders_clean
GROUP BY region
ORDER BY total_profit DESC;

-- Top Products by Revenue
SELECT
    product_id,
    SUM(sales) AS revenue
FROM orders_clean
GROUP BY product_id
ORDER BY revenue DESC
LIMIT 10;
