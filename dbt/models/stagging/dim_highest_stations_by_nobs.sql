{{ config (
    materialized="table"
)}}

with higest_stations_by_nobs as (

    select
        station_id, SUM(n_obs) as total_observation
    from {{ source('stationSummary', 'dimStationSummary') }}
        group by station_id order by total_observation desc

)

SELECT * FROM higest_stations_by_nobs
