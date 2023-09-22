select p1.id as id, ifnull(new_price,99) as price from 
(
    select distinct id from Products
) p1 
left join 
(
    select id, new_price from Products
    where (id, updated_date) in (
        select id, max(updated_date) from Products 
        where updated_date<='2023-05-15' 
        group by id
        ) 
) p2
on p1.id = p2.id;