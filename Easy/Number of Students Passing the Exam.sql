select s.class,count(s.sno) as pass_count
from students as s
join score as s1 on s1.sno=s.sno
where s1.course1>=60 and s1.course2>=60 and s1.course3>=60 
group by s.class;