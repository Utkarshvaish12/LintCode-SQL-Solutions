with cte as (
    select height,
    lead(height,1) over() h1,
    lead(height,2) over() h2
    from players
)

select height
from cte
where height=h1 and height=h2;