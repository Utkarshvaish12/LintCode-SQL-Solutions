select id, datediff(end_date,start_date) as diff
from Tasks
order by diff desc
limit 3;