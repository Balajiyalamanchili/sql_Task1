---------------   CREATE TABLE --------------
CREATE TABLE matches (
    id SERIAL PRIMARY KEY,
    season INT,
    city TEXT,
    date DATE,
    team1 TEXT,
    team2 TEXT,
    toss_winner TEXT,
    toss_decision TEXT,
    result TEXT,
    dl_applied INT,
    winner TEXT,
    win_by_runs INT,
    win_by_wickets INT,
    player_of_match TEXT,
    venue TEXT,
    umpire1 TEXT,
    umpire2 TEXT,
    umpire3 TEXT
);


------------------------ LOAD TABLE -----------------------


\COPY matches(id, season, city, date, team1, team2, toss_winner, toss_decision, result, dl_applied, winner, win_by_runs, win_by_wickets, player_of_match, venue, umpire1, umpire2, umpire3)
FROM '/PATH/matches.csv' DELIMITER ',' CSV HEADER QUOTE '"';