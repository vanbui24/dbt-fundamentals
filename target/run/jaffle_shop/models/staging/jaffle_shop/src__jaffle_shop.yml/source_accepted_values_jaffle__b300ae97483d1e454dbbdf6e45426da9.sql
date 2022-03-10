select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        STATUS as value_field,
        count(*) as n_records

    from raw.jaffle_shop.orders
    group by STATUS

)

select *
from all_values
where value_field not in (
    'completed','shipped','returned','return_pending','placed'
)



      
    ) dbt_internal_test