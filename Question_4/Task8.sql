SELECT 
    bowler AS bowler_name, 
    ROUND(
        SUM(batsman_runs + wide_runs + noball_runs) / 
        (SUM(CASE WHEN wide_runs != 0 OR noball_runs != 0 THEN 0 ELSE 1 END) / 6.0), 
        2
    ) AS economy
FROM 
    deliveries AS d1
WHERE 
    match_id IN (
        SELECT id 
        FROM matches 
        WHERE season = 2015
    )
GROUP BY 
    bowler
ORDER BY 
    economy
LIMIT 10;