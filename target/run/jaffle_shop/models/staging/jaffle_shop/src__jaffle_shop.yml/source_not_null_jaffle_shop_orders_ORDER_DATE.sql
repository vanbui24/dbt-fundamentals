select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from raw.jaffle_shop.orders
where ORDER_DATE is null



      
    ) dbt_internal_test