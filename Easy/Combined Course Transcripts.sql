SELECT c1.name,c1.score as score1,c2.score as score2
from course1_score as c1
inner join course2_score as c2 on c1.name=c2.name
order by c1.name;