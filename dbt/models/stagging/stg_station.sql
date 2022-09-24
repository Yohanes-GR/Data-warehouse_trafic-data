{{ config (
    materialized="view"
)}}

with station_information as (

    select
        station_id,
        fwy,
        dir,
        city,
        latitude,
        longitude,
        length as station_length,
        type as station_type,
        name as station_name

    from {{ source('stationSummary', 'dimStation') }}

)

select * from station_information