select name 
from customer
where referrer_id <> 1 OR referrer_id is null;