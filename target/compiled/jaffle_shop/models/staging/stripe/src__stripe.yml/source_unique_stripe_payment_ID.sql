
    
    

select
    ID as unique_field,
    count(*) as n_records

from raw.stripe.payment
where ID is not null
group by ID
having count(*) > 1


