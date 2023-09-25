select max(height) as height
from (
    select height
    from student_heights
    group by height
    having count(*)=1
) as s;