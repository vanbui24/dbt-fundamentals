with citibike as (
    
    select * from {{ ref('stg__citibike') }}

),

# stacked barchart (gender/sex)
# number of trips Y-axis
# day of the week X-axis (monday to sunday )
#  

select 
  membership_type,
  count(*) as number_of_trips
  
from {{ ref('stg__citibike') }}
where membership_type is not null
group by membership_type 
order by 2 desc

select

  date_trunc('day', start_time)

from {{ ref('stg__citibike') }}