with 

payments as (
    select * from {{ ref('stg__payments') }}

)

select
    order_id,
    sum(usd_amount) as total_amount
from payments
group by order_id
having total_amount < 0