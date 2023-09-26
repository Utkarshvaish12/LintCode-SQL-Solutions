-- Write your SQL here --
create view v_courses_teachers as
select t.country, sum(student_count) as student_count
    from teachers t left join courses c on t.id = c.teacher_id
    where (
        (t.country = (select country from teachers where id = t.id+1)
            and t.country = (select country from teachers where id = t.id+2))
        or (t.country = (select country from teachers where id = t.id-1)
            and t.country = (select country from teachers where id = t.id+1))
        or (t.country = (select country from teachers where id = t.id-1)
            and t.country = (select country from teachers where id = t.id-2))
    )
    group by t.country