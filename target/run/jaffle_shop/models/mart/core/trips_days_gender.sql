

      create or replace transient table analytics.dbt_vbui.trips_days_gender  as
      (with citibike as (
    
    select * from analytics.dbt_vbui.stg__citibike

),


final as (

    select
        
        dayofweek(start_time) as day_of_week,
        sex,
        count(*) as number_of_trips

    from citibike
    group by 1, 2
    order by 1, 2

)

select * from final
      );
    