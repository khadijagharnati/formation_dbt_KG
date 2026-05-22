SELECT 
    product_id,
    name,
    category,
    is_active
FROM {{ source('duckdb_source', 'raw_products') }}
WHERE product_id IS NOT NULL