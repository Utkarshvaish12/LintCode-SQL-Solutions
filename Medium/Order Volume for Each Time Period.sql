SELECT
    customer_id,
    SUM(CASE WHEN DATEDIFF('2023-04-03', order_date) <= 30 THEN 1 ELSE 0 END) AS orders_30d,
    SUM(CASE WHEN DATEDIFF('2023-04-03', order_date) <= 30 THEN amount ELSE 0 END) AS amount_30d,
    SUM(CASE WHEN DATEDIFF('2023-04-03', order_date) <= 60 THEN 1 ELSE 0 END) AS orders_60d,
    SUM(CASE WHEN DATEDIFF('2023-04-03', order_date) <= 60 THEN amount ELSE 0 END) AS amount_60d,
    SUM(CASE WHEN DATEDIFF('2023-04-03', order_date) <= 90 THEN 1 ELSE 0 END) AS orders_90d,
    SUM(CASE WHEN DATEDIFF('2023-04-03', order_date) <= 90 THEN amount ELSE 0 END) AS amount_90d
FROM
    orders
GROUP BY
    customer_id;