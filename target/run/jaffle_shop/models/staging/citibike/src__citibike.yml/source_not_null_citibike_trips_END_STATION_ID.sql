select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from citibike.public.trips
where END_STATION_ID is null



      
    ) dbt_internal_test