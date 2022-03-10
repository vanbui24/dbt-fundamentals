select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from raw.jaffle_shop.customers
where LAST_NAME is null



      
    ) dbt_internal_test