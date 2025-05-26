SELECT 
    season AS season,
    winner AS team_name,
    COUNT(winner) AS wins
FROM 
    matches
WHERE 
    winner IS NOT NULL
GROUP BY 
    season, winner
ORDER BY 
    season, team_name, wins;
