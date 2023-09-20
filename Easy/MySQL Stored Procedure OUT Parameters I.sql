create procedure find(in teacherCountry nvarchar(2),out total int)
begin
select count(distinct name) into total from teachers where country=teacherCountry;
end;

call find("CN",@total);
select @total;