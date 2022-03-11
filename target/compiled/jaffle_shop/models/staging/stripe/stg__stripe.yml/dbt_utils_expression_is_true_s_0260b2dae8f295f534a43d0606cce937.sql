

with meet_condition as (
    select * from analytics.dbt_vbui.stg__payments where eur_amount <= usd_amount
)

select
    *
from meet_condition

where not(eur_amount <= usd_amount)

