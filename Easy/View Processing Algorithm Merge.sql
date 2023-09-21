create algorithm=MERGE
view v_teachers AS
select * from teachers
where age>25;