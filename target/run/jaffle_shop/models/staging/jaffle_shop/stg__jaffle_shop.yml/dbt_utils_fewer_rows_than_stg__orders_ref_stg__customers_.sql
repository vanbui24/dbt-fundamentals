select
      coalesce(row_count_delta, 0) as failures,
      coalesce(row_count_delta, 0) != 0 as should_warn,
      coalesce(row_count_delta, 0) != 0 as should_error
    from (
      



with a as (

    select count(*) as count_our_model from analytics.dbt_vbui.stg__orders

),
b as (

    select count(*) as count_comparison_model from analytics.dbt_vbui.stg__customers

),
counts as (

    select
        count_our_model,
        count_comparison_model
    from a
    cross join b

),
final as (

    select *,
        case
            -- fail the test if we have more rows than the reference model and return the row count delta
            when count_our_model > count_comparison_model then (count_our_model - count_comparison_model)
            -- fail the test if they are the same number
            when count_our_model = count_comparison_model then 1
            -- pass the test if the delta is positive (i.e. return the number 0)
            else 0
    end as row_count_delta
    from counts

)

select * from final


      
    ) dbt_internal_test