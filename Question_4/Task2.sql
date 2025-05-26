SELECT 
    batsman AS player_name, 
    SUM(batsman_runs) AS total_runs
FROM 
    deliveries
WHERE 
    batting_team LIKE 'Royal%'
GROUP BY batsman
ORDER BY total_runs DESC
LIMIT 10;