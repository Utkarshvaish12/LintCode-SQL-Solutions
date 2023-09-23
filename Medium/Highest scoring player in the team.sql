SELECT CONCAT('team ', t.id) AS team, p.name AS player,p.scores AS score
    FROM players as p
    JOIN teams as t ON p.team_id = t.id
    where p.scores=(
        select max(p1.scores)
        from players as p1
        where p1.team_id=p.team_id
        group by p1.team_id
        )