with citibike as (
    
    select * from {{ ref('stg__citibike') }}

), 

weather as (

    select * from {{ ref('stg__weather') }}

),

weather_trips as (

    select

        weather as conditions,
        observation_time

    from weather

),

final as (

    select 
  
        weather_trips.conditions,
        count(*) as num_trips

    from citibike
    left outer join weather_trips
    on date_trunc('hour', observation_time) = date_trunc('hour', start_time)
    where conditions is not null
    group by 1 order by 2 desc

)

select * from final


