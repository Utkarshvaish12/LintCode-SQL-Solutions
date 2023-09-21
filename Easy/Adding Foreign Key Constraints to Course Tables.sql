alter table courses 
add constraint fk_id foreign key(teacher_id) 
references teachers (id);