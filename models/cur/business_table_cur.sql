{{
    config(
        materialized = 'incremental',
        schema = 'CUR'
    )
}}

with cte as (
    select * from {{ source('iceberg_source', 'business_table') }}
)

select * from cte