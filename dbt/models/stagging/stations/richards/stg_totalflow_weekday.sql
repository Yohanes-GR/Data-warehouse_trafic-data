{{ config (
    materialized="view"
)}}

with totalflow_weekday as (

    select
        weekday,
        SUM(totalflow) as totalflow

    from {{ source('richards', 'dimRichardStation') }}

    group by weekday order by totalflow desc

)

select * from totalflow_weekday