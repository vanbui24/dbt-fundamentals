select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from raw.stripe.payment
where ORDERID is null



      
    ) dbt_internal_test