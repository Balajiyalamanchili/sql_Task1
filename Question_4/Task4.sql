SELECT 
    season AS season, 
    team_name AS team_name, 
    COUNT(team_name) AS matches_played
FROM (
    SELECT season, team1 AS team_name FROM matches AS matches1
    UNION ALL
    SELECT season, team2 AS team_name FROM matches AS matches2
) as mix_matches
GROUP BY season, team_name
ORDER BY season, team_name;