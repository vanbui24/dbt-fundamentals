

with payments as (

    select * from analytics.dbt_vbui.stg__payments

),

pivoted as (
    select
        order_id,
        
        sum(case when payment_method = 'bank_transfer' then usd_amount else 0 end) as bank_transfer_amount,
        
        
        
        sum(case when payment_method = 'credit_card' then usd_amount else 0 end) as credit_card_amount,
        
        
        
        sum(case when payment_method = 'coupon' then usd_amount else 0 end) as coupon_amount,
        
        
        
        sum(case when payment_method = 'gift_card' then usd_amount else 0 end) as gift_card_amount
        

    from payments
    where status = 'success'
    group by order_id

)

select * from pivoted