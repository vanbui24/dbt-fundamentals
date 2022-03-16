with citibike as (
    
    select * from {{ ref('stg__citibike') }}

),

weather as (

    select * from {{ ref('stg__weather') }}

),

final as (

select
    
    START_STATION_NAME,
    START_STATION_LATITUDE,
    START_STATION_LONGITUDE,     
    START_TIME,
    t1.weather as conditions
 
from citibike
left join weather as t1 on date_trunc('hour', observation_time) = date_trunc('hour', start_time)

)

select * from final