select distinct student_id, device_id 
from online_class_situations
where (student_id,date) in (select s.student_id,min(s.date) from online_class_situations as s 
where s.student_id=student_id and s.course_number>0
group by s.student_id);