{{ config (
    materialized="view"
)}}

with stations_summary_dbt as (
    select * from {{ source('stationSummary', 'dimStationSummary') }}
),

final as (
    select * from stations_summary_dbt
)

SELECT * FROM final

-- https://ocdsdeploy.readthedocs.io/en/latest/deploy/redash.html
-- superset run -p 8088 --with-threads --reload --debugger
-- https://superset.apache.org/docs/installation/installing-superset-from-scratch
