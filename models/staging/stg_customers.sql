SELECT
    customer_id,
    country,
    signup_date,
    UPPER(status) AS status,
    email
FROM {{ ref('raw_customers') }}
WHERE customer_id IS NOT NULL