--Exploring dataset
SELECT * 
FROM soccer_team_analysis;

-- 1. View the first 100 rows of the dataset to understand its structure.
SELECT TOP 100 *
FROM soccer_team_analysis;

-- 2.  Count the total number of players in the dataset.
SELECT COUNT(*) AS total_players
FROM soccer_team_analysis;

-- 3. List all unique teams in the league.
SELECT DISTINCT team
FROM soccer_team_analysis
ORDER BY team;

-- 4. Count how many players are in each team.
SELECT team, COUNT(*) AS player_count
FROM soccer_team_analysis
GROUP BY team
ORDER BY player_count DESC;

-- 5. Identify the top 10 players with the most goals.
SELECT TOP 10 player_name, goals
FROM soccer_team_analysis
ORDER BY goals DESC;

-- 6. Find the average salary for players in each team.
SELECT team, AVG(average_salary_zar) AS avg_salary
FROM soccer_team_analysis
GROUP BY team
ORDER BY avg_salary DESC;

-- 7. Retrieve the top 10 players with the highest market value.
SELECT TOP 10 player_name, market_value_zar
FROM soccer_team_analysis
ORDER BY market_value_zar DESC;

-- 8. Calculate the average passing accuracy for each position.
SELECT position, AVG(passing_accuracy) AS avg_passing_accuracy
FROM soccer_team_analysis
GROUP BY position
ORDER BY avg_passing_accuracy DESC;

-- 9. Compare shot accuracy with goals to find correlations.
SELECT 
    AVG(CAST(shot_accuracy AS FLOAT)) AS avg_shot_accuracy,
    AVG(CAST(goals AS FLOAT)) AS avg_goals,
    COUNT(*) AS total_players
FROM soccer_team_analysis;

-- 10. Compute total goals and assists for each team.
SELECT 
    team,
    SUM(CAST(goals AS FLOAT)) AS total_goals,
    SUM(CAST(assists AS FLOAT)) AS total_assists
FROM soccer_team_analysis
GROUP BY team
ORDER BY total_goals DESC;

-- 11. Count players by their marital status.
SELECT marital_status, COUNT(*) AS count_players
FROM soccer_team_analysis
GROUP BY marital_status
ORDER BY count_players DESC;

-- 12. Count players by nationality.
SELECT nationality, COUNT(*) AS count_players
FROM soccer_team_analysis
GROUP BY nationality
ORDER BY count_players DESC;

-- 13. Find average market value grouped by nationality.
SELECT nationality, AVG(market_value_zar) AS avg_market_value_zar
FROM soccer_team_analysis
GROUP BY nationality
ORDER BY avg_market_value_zar DESC;

-- 14. Determine how many player contracts end in each year.
SELECT YEAR(contract_end_year) AS contract_end_year,
       COUNT(*) AS players_count
FROM soccer_team_analysis
GROUP BY YEAR(contract_end_year)
ORDER BY contract_end_year;

-- 15. Identify players whose contracts end next year.
SELECT player_name, team, contract_end_date
FROM soccer_team_analysis
WHERE YEAR(contract_end_date) = YEAR(GETDATE()) + 1;

--16. Summarize the number of players by injury status.
SELECT injury_status, COUNT(*) AS count_players
FROM soccer_team_analysis
GROUP BY injury_status
ORDER BY count_players DESC;

-- 17. Calculate goals per match ratio for each player.
SELECT 
    player_name,
    goals,
    matches_played,
    CAST(goals AS FLOAT) / NULLIF(matches_played, 0) AS goals_per_match
FROM soccer_team_analysis
ORDER BY goals_per_match DESC;

-- 18. Count how many players are managed by each agent.
SELECT agent, COUNT(*) AS player_count
FROM soccer_team_analysis
GROUP BY agent
ORDER BY player_count DESC;

-- 19. Calculate average height and weight by player position.
SELECT 
    position,
    AVG(height_cm) AS avg_height_cm,
    AVG(weight_kg) AS avg_weight_kg
FROM soccer_team_analysis
GROUP BY position
ORDER BY avg_height_cm DESC;

-- 20. Identify players with the highest combined goals and assists.
SELECT 
    player_name,
    goals,
    assists,
    (goals + assists) AS total_contribution
FROM soccer_team_analysis
ORDER BY total_contribution DESC;


