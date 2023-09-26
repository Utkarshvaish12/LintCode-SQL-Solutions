create or replace view v_mydream as 
(
    with cte as (
        select t.name as teacher_name,c.name as course_name,c.student_count as student_count,
        DENSE_RANK() OVER (PARTITION BY t.id order by c.student_count desc) as r
        from courses as c
        right join teachers as t on t.id=c.teacher_id
    )

    select teacher_name,course_name,student_count
    from cte
    where r=1
    order by teacher_name
)