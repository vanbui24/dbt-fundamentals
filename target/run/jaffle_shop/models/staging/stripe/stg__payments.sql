
  create or replace  view analytics.dbt_vbui.stg__payments 
  
   as (
    select
    orderid as order_id,
    paymentmethod as payment_method,
    status as status,
    amount/100 as amount

from raw.stripe.payment
  );
