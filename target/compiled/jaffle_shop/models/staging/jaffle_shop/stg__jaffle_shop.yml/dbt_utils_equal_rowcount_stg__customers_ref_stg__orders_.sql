

with a as (

    select count(*) as count_a from analytics.dbt_vbui.stg__customers

),
b as (

    select count(*) as count_b from analytics.dbt_vbui.stg__orders

),
final as (

    select
        count_a,
        count_b,
        abs(count_a - count_b) as diff_count
    from a
    cross join b

)

select * from final

