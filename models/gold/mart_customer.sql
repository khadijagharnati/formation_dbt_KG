SELECT
    customer_id,
    country,
    status,
    signup_date,
    email
FROM {{ ref('stg_customers') }}