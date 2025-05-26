SELECT 
    season AS season_name, 
    COUNT(season) AS match_count
FROM 
    matches
GROUP BY 
    season
ORDER BY 
    season;