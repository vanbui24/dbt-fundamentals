select
    orderid as order_id,
    amount/100 as amount

from {{ source('stripe', 'payments')}}