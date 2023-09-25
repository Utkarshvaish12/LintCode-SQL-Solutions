select t.name,t.age,t.country
from teachers as t
where (t.age,t.country) in (select max(age),country from teachers group by country);