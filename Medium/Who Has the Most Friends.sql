select id, count(id) as num
from (select requester_id as id from RequestAccept
union all select accepter_id as id from RequestAccept) as s
group by id 
order by num desc 
limit 1;