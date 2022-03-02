select
    orderid as order_id,
    paymentmethod as payment_method,
    status as status, 
    {{ cents_to_dollar('amount', 3) }} as usd_amount,
    {{ usd_to_eur('amount') }} as eur_amount

from {{ source('stripe', 'payment')}}
where status = 'success'