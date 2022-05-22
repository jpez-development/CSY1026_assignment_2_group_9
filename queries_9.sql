ALTER SESSION;
SET NLS_DATE_FORMAT = "DD-MON-YYYY HH24:MI:SS";
SET PAGESIZE ??;
SET LINESIZE ???;
SET WRAP OFF;

SELECT * FROM table_name WHERE table_name="&table_name";

SELECT column_one, column_two, column_three FROM table_name 
WHERE table_name="&table_name"
AND column_one="&column_one"
AND column_two="&column_two"
AND column_three="&column_three"
ORDER BY column_one DESC;

SELECT game_id FROM statistics
WHERE game_duration LIKE "&game_duration"
AND game_kills LIKE "&game_kills"
AND game_deaths LIKE "&game_deaths";

SELECT player_name FROM players
WHERE player_name LIKE "&player_name%"
AND contact_email IS NOT NULL;

SELECT prize_amount FROM prizes
WHERE achievement_name NOT="winner"
AND prize_amount > 100;

SELECT tournament_name, genre_name
FROM categories, tournaments
WHERE categories.genre_id = tournaments.genre_id;

SELECT team_name, player_name, team_player_id
FROM teams, players, team_players
WHERE teams.team_id = team_players.team_id
AND players.player_id = team_players.player_id;

SELECT  tournament_name, genre_name, prize_amount, tournament_start_date
FROM categories, tournaments, prizes
WHERE categories.genre_id = tournaments.genre_id
AND tournaments.tournament_id = prizes.tournament_id
ORDER BY prize_amount DESC;

SELECT  tournament_name, genre_name, prize_amount, tournament_start_date
FROM categories, tournaments, prizes
WHERE categories.genre_id = tournaments.genre_id
AND tournaments.tournament_id = prizes.tournament_id
ORDER BY tournament_start_date ASC;