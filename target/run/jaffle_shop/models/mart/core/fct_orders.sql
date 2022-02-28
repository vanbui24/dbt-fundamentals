

      create or replace transient table analytics.dbt_vbui.fct_orders  as
      (with payments as (
    
    select * from analytics.dbt_vbui.stg__payments

), 

orders as (

    select * from analytics.dbt_vbui.stg__orders

),


order_payments as (

    select
        order_id,
        sum(amount) as amount

    from payments
    
    group by 1

),



final as (

    select
        orders.order_id,
        orders.customer_id,
        coalesce(order_payments.amount, 0) as amount

    from orders

    left join order_payments using (order_id)

)

select * from final
      );
    