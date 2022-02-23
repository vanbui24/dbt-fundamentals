select
    orderid as order_id,
    paymentmethod as payment_method,
    status as status,
    {{ cents_to_dollar('amount') }} as amount

from {{ source('stripe', 'payment')}}