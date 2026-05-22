SELECT
    t1.order_id,
    t1.customer_id,
    t1.order_date,
    t1.status,
    t1.shipping_country,
    t1.amount AS order_amount,
    t2.country AS customer_name,
    t2.signup_date AS customer_signup_date,
    t2.status AS customer_status
FROM {{ source('duckdb_source', 'raw_orders') }} t1
INNER JOIN {{ ref('stg_customers') }} t2
ON t1.customer_id = t2.customer_id
