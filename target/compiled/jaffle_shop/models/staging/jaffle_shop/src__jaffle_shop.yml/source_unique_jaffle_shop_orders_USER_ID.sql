
    
    

select
    USER_ID as unique_field,
    count(*) as n_records

from raw.jaffle_shop.orders
where USER_ID is not null
group by USER_ID
having count(*) > 1


