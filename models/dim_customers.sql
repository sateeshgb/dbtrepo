{{ config(materialized='table') }}

select

    customer_id,
    customer_name,
    email,
    status,
    {{ audit_columns() }}

from {{ ref('stg_customers') }}