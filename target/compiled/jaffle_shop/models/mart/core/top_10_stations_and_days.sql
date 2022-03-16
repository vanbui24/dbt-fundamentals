-- top 10 station order by day of the week 

with citibike as (
    
    select * from analytics.dbt_vbui.stg__citibike

),

citibike_top_10 as (
    
    select 

      START_STATION_NAME,
      count(*) as number_of_trips
    
    from analytics.dbt_vbui.stg__citibike
    group by 1
    order by 2 desc
    limit 10

),


final as (

    select
        
        station,
        dayofweek(start_time) as day_of_week,
        count(*) as number_of_trips

    from (select 

        t1.START_STATION_NAME as station,
        *

      from citibike as t1
      join citibike_top_10 as t2 on t2.START_STATION_NAME = t1.START_STATION_NAME
        )
      group by 1, 2
      order by 1, 2

)

select * from final