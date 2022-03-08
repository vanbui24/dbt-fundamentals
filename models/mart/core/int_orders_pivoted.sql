{% set payment_methods = ['bank_transfer', 'credit_card', 'coupon', 'gift_card'] %}

with payments as (

    select * from {{ ref('stg__payments')}}

),

pivoted as (
    select
        order_id,
        {% for payment_method in payment_methods %}
        sum(case when payment_method = '{{ payment_method }}' then usd_amount else 0 end) as {{ payment_method }}_amount
        {%- if not loop.last -%},
        
        {% endif %}
        {% endfor %}

    from payments
    where status = 'success'
    group by order_id

)

select * from pivoted