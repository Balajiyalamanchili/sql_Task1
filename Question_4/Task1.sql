SELECT 
    batting_team AS team_name, 
    SUM(total_runs) AS total_runs_scored
FROM 
    deliveries
GROUP BY 
    batting_team;