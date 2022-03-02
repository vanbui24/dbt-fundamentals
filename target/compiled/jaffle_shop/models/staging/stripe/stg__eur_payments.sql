select
    orderid as order_id,
    paymentmethod as payment_method,
    status as status, 
    round( 1.0 * amount / 100, 3) as amount

from raw.stripe.payment