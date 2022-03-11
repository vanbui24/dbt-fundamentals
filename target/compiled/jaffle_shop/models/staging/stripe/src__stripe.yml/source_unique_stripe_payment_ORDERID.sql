
    
    

select
    ORDERID as unique_field,
    count(*) as n_records

from raw.stripe.payment
where ORDERID is not null
group by ORDERID
having count(*) > 1


