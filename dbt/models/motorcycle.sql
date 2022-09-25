{{ config(materialized='table') }}

with traffic as (
    SELECT
        time,
        traveled_d,
        avg_speed, 
        lat, 
        lon,
        speed, 
        lon_acc, 
        lat_acc
        
    FROM 
        {{ ref('traffic_model') }}

    WHERE
        type = 'Motorcycle'

    ORDER BY
        time
)
SELECT * FROM {{ ref('traffic_model') }}