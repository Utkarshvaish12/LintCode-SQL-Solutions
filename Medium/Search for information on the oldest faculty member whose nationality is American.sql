select *
from teachers
where country='USA' AND age=(select max(age) from teachers where country='USA')