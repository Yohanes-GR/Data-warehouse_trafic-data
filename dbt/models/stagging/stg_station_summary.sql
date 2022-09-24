{{ config (
    materialized="view"
)}}

with station_summary as (

    select
        station_id,
        flow_99,
        flow_max,
        flow_total,
        n_obs

    from {{ source('stationSummary', 'dimStationSummary') }}

)

select * from station_summary