{{
    config(
        materialized='table'
    )
}}

select
    customer_id,
    customer_name,
    {{ audit_columns() }}
from {{ ref('stg_customers') }}