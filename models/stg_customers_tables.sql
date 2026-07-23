{{
    config(materialized='table')
}}

select *
from (
    select
        cast(customer_id as varchar) as customer_id,
        upper(customer_name) as customer_name,
        email,
        status,
        updated_at,
        row_number() over (
            partition by customer_id
            order by updated_at desc
        ) as rn
    from {{ source('banking', 'CUSTOMERS') }}
) c
where rn = 1
  and email is not null