SELECT
  total_days,sub_tasks,proj_start,proj_end
FROM
  (SELECT
      @group := @group + is_new as grp,
      COUNT(*) as total_days,
      GROUP_CONCAT(id) as sub_tasks,
      MIN(start_date) as proj_start,
      MAX(end_date) as proj_end
    FROM (SELECT id,start_date,end_date,
    CASE
    WHEN IFNULL(DATEDIFF(start_date,LAG(start_date) OVER (ORDER BY start_date)),1)>1 THEN 1
    ELSE 0
    END as is_new
    FROM Tasks) as sq,
    (select @group := 0) as g
    GROUP BY grp
    ORDER BY total_days,proj_start) as d;

