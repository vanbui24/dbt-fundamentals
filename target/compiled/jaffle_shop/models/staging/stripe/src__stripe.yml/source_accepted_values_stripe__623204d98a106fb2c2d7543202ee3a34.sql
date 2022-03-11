
    
    

with all_values as (

    select
        PAYMENTMETHOD as value_field,
        count(*) as n_records

    from raw.stripe.payment
    group by PAYMENTMETHOD

)

select *
from all_values
where value_field not in (
    'credit_card','coupon','bank_transfer','gift_card'
)


