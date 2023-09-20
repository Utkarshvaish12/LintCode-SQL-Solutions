create procedure find(in countryname nvarchar(2))
begin
select * from teachers where country=countryname;
end;

call find('CN');