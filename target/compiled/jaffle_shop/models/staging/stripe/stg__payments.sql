select
    orderid as order_id,
    paymentmethod as payment_method,
    status as status, 
    round( 1.0 * amount / 100, 3) as usd_amount,
    amount * 0.89 /100 as eur_amount

from raw.stripe.payment
where status = 'success'