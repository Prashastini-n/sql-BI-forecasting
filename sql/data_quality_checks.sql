-- Row count validation
SELECT COUNT(*) AS total_rows FROM orders_clean;

-- Date range check
SELECT MIN(order_date), MAX(order_date) FROM orders_clean;

-- Null checks
SELECT COUNT(*) FROM orders_clean
WHERE sales IS NULL OR quantity IS NULL;

-- Negative profit check
SELECT COUNT(*) FROM orders_clean
WHERE profit < 0;
