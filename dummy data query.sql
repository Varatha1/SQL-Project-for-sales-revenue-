


INSERT INTO customer (customer_id, name_s, email, city, signup_update)
WITH RECURSIVE seq AS (
    SELECT 1 AS n
    UNION ALL
    SELECT n + 1
    FROM seq
    WHERE n < 1000
)
SELECT
    n,
    CONCAT('customer_', n),
    CONCAT('customer', n, '@gmail.com'),
    ELT(1 + MOD(n, 5), 'Chennai', 'Bangalore', 'Mumbai', 'Delhi', 'Hyderabad'),
    DATE_ADD('2022-01-01', INTERVAL MOD(n, 900) DAY)
FROM seq;

INSERT INTO product (product_id, product_name, category, price)
WITH RECURSIVE seq AS (
    SELECT 1 AS n
    UNION ALL
    SELECT n + 1
    FROM seq
    WHERE n <= 100
)
SELECT
    n,
    CONCAT('product_', n),
    ELT(1 + MOD(n, 5), 'Electronics', 'Fashion', 'Home', 'Beauty', 'Sports'),
    ROUND(500 + RAND() * 4500, 2)
FROM seq;

insert into orders
WITH RECURSIVE seq AS 
(
    SELECT 1 AS n
    UNION ALL
    SELECT n + 1
    FROM seq
    WHERE n < 1000
    )
    SELECT 
    n,
    1+ MOD(n,1000),
    date_add('2023-01-01',interval MOD(n,365)DAY),
    round(1000+RAND()*9000,2)
  FROM seq;

insert into orders_items
WITH RECURSIVE seq AS 
(
    SELECT 1 AS n
    UNION ALL
    SELECT n + 1
    FROM seq
    WHERE n < 1000
    )
    SELECT 
    n as orders_items_id,
FLOOR((n-1)/3)+1 as order_id,
MOD(n,100)+1 as product_id,
MOD(n,4) +1 as quantity,
round(500+RAND()*3000,2) AS item_price
FROM seq;


