delete
FROM contacts
where id not in (
    SELECT * 
    from (SELECT min(id)  from contacts group by name) as t);