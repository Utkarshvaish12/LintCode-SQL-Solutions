delete from teachers
where id in (
    select teacher_id from courses where year(created_at)<2020
);