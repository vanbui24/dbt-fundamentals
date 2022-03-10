
    
    

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


