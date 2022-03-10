
    
    

with all_values as (

    select
        sex as value_field,
        count(*) as n_records

    from analytics.dbt_vbui.stg__citibike
    group by sex

)

select *
from all_values
where value_field not in (
    '0','1','2'
)


