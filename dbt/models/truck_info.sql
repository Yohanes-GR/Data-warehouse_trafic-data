{{ config(materialized='table') }}
SELECT
    distinct(type) as truck_type,
    AVG(avg_speed) as total_avg_speed, 
    (SUM(traveled_d) / 1000) as total_distance_traveled_km,
    COUNT(type) as total_count

FROM 
  {{ ref('traffic_model') }}
  
GROUP BY
  type