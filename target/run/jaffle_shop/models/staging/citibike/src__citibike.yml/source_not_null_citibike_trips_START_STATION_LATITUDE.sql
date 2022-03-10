select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from citibike.public.trips
where START_STATION_LATITUDE is null



      
    ) dbt_internal_test