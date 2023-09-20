create view v_teachers as 
select * from teachers 
where age<30
with check option;
