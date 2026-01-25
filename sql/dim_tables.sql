CREATE TABLE customers (
    customer_id VARCHAR(20) PRIMARY KEY
);

INSERT INTO customers
SELECT DISTINCT customer_id FROM orders_clean;

CREATE TABLE products (
    product_id VARCHAR(20) PRIMARY KEY
);

INSERT INTO products
SELECT DISTINCT product_id FROM orders_clean;
