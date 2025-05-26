SELECT 
    country AS Country_Name, 
    COUNT(country) AS Umpire_Count
FROM 
    umpires
WHERE 
    country NOT IN (' India')
GROUP BY country
ORDER BY Umpire_Count DESC;