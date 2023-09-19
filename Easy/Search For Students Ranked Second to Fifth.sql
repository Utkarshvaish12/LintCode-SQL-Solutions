SELECT row_number() over() as score_rank, sno, (course1 + course2 + course3) as total_score
from score
order by total_score desc,sno asc
limit 1,4;