select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    ORDERID as unique_field,
    count(*) as n_records

from raw.stripe.payment
where ORDERID is not null
group by ORDERID
having count(*) > 1



      
    ) dbt_internal_test