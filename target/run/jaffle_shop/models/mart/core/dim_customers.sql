

      create or replace transient table analytics.dbt_vbui.dim_customers  as
      (with customers as (

    select * from analytics.dbt_vbui.stg__customers

),

orders as (

    select * from analytics.dbt_vbui.fct__orders

),


customer_orders as (

    select
        customer_id,
        count(order_id) as number_of_orders,
        sum(amount) as lifetime_value

    from orders
    group by 1

),


final as (

    select
        customers.customer_id,
        customers.first_name,
        customers.last_name,
        coalesce(customer_orders.number_of_orders, 0) as number_of_orders,
        customer_orders.lifetime_value

    from customers

    left join customer_orders using (customer_id)

)

select * from final
      );
    