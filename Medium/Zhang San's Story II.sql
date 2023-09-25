select name
from classes
where id in (select class_id from students where name='zhangsan');