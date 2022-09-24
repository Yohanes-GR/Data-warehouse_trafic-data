{{ config (
    materialized="view"
)}}

with date_by_totalflow as (

    select
        DATE(timestamp_id) as date_value,
        SUM(totalflow) as totalflow

    from {{ source('richards', 'dimRichardStation') }}

    group by date_value order by totalflow desc

)

select * from date_by_totalflow