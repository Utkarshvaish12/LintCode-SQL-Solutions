create procedure find(in a int)
begin
select * from teachers where age=a;
end;
call find(21);