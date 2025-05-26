SELECT 
    d.bowling_team AS team_name, 
    SUM(d.extra_runs) AS total_extra_runs
FROM 
    deliveries d
WHERE 
    match_id IN (
        SELECT id 
        FROM matches 
        WHERE season = 2016
    )
GROUP BY 
    d.bowling_team;
