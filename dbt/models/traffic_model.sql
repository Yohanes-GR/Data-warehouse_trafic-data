{{ config(materialized='table') }}
   SELECT  
        track_id, 
        type, 
        traveled_d,
        avg_speed, 
        lat, 
        lon,
        speed, 
        lon_acc, 
        lat_acc, 
        time
        
   FROM  
        traffic 