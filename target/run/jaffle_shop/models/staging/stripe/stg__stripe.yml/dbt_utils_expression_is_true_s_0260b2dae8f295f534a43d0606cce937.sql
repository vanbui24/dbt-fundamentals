select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      

with meet_condition as (
    select * from analytics.dbt_vbui.stg__payments where eur_amount <= usd_amount
)

select
    *
from meet_condition

where not(eur_amount <= usd_amount)


      
    ) dbt_internal_test