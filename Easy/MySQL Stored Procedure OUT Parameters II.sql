create procedure find(in Teacher int,out total int)
begin
SELECT COUNT(DISTINCT NAME) INTO total 
FROM courses 
where teacher_id=Teacher 
group by teacher_id;
end;

CALL find(3,@total);
select @total;