{{
    config(
        materialized='view'
    )
}}
select
    customer_id,
    upper(customer_name) as customer_name,
    email,
    status,
    updated_at
from dbt_db.RAW.CUSTOMERS