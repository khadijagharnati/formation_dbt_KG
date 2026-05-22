SELECT 
    order_id,
    customer_id,
    UPPER(status) AS status,
    amount::DECIMAL(10,2) AS amount,
    created_at::DATE AS order_date,
FROM {{ source('duckdb_source', 'raw_orders') }}
WHERE order_id IS NOT NULL
