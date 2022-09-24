{{ config (
    materialized="view"
)}}

with richards as (

    select
        timestamp_id,
        flow1,
        flow2,
        flow3,
        totalflow,
        weekday,
        hour

    from {{ source('richards', 'dimRichardStation') }}

)

select * from richards