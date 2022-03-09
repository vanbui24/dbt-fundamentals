select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      with 

payments as (
    select * from analytics.dbt_vbui.stg__payments

)

select
    order_id,
    sum(usd_amount) as total_amount
from payments
group by order_id
having total_amount < 0
      
    ) dbt_internal_test