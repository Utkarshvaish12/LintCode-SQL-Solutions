select distinct a.id
from  boxes a,boxes b
where abs(a.id-b.id)=1
and (a.is_empty=1 and b.is_empty=1)
order by a.id asc;