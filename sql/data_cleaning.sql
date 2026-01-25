CREATE TABLE orders_clean AS
SELECT
    order_id,
    STR_TO_DATE(order_date, '%d/%m/%Y') AS order_date,
    STR_TO_DATE(ship_date, '%d/%m/%Y') AS ship_date,
    customer_id,
    product_id,
    region,
    CAST(REPLACE(REPLACE(sales, '$', ''), ',', '') AS DECIMAL(12,2)) AS sales,
    CAST(REPLACE(REPLACE(profit, '$', ''), ',', '') AS DECIMAL(12,2)) AS profit,
    CAST(quantity AS UNSIGNED) AS quantity
FROM orders_raw;
