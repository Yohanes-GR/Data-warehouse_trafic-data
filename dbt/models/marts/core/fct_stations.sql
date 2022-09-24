{{ config (
    materialized="table"
)}}

with stations as  (
    select * from {{ ref('stg_station' )}}
),

summary as (
    select * from {{ ref('stg_station_summary') }}
),

station_by_length as (
    select
        station_id,
        sum(station_length) as station_max_length

    from stations
    group by 1
),

final as (

    select
        summary.station_id,
        summary.flow_99,
        summary.flow_max,
        summary.flow_total,
        summary.n_obs

    from summary
    left join station_by_length using (station_id)
)

select * from final