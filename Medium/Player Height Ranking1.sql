select height, 
DENSE_RANK() OVER (ORDER BY height desc) as 'Rank'
from players;