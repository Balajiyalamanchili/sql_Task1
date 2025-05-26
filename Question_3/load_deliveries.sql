---------------   CREATE TABLE --------------
CREATE TABLE deliveries (
  match_id INT,
  inning INT,
  batting_team VARCHAR(100),
  bowling_team VARCHAR(100),
  over INT,
  ball INT,
  batsman VARCHAR(100),
  non_striker VARCHAR(100),
  bowler VARCHAR(100),
  is_super_over INT,
  wide_runs INT,
  bye_runs INT,
  legbye_runs INT,
  noball_runs INT,
  penalty_runs INT,
  batsman_runs INT,
  extra_runs INT,
  total_runs INT,
  player_dismissed VARCHAR(100),
  dismissal_kind VARCHAR(50),
  fielder VARCHAR(100)
)


-----------import data ------------

\copy deliveries From 'path/.csv' CSV HEADER ;