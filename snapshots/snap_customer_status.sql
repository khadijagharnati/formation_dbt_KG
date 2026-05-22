{% snapshot snap_customer_status %}

{{
    config(
      target_schema='snapshots',
      unique_key='customer_id',
      strategy='check',
      check_cols=['email', 'country'],
    )
}}

SELECT
    customer_id,
    email,
    country
from {{ ref('mart_customer') }}

{% endsnapshot %}