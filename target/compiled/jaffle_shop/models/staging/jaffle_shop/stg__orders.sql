select
    id as order_id,
    user_id as customer_id,
    order_date,
    status as status

from raw.jaffle_shop.orders



where order_date >= dateadd('day', -11113, current_timestamp)

