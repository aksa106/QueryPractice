-- Write an SQL statement to find the fourth referee id for the match with match number 'M0001'.[Database: FLIS] flisdb:

select fourth_referee from match_referees
where match_num = 'M0001'
--------------------------------------------------------------------




--  Write an SQL statement to find the colors of the home-jersey and the away-jersey (jersey_home_color, jersey_away_color) used by the team: 'All Stars'.[Database: FLIS] flisdb:

select jersey_home_color, jersey_away_color from teams 
where name = 'All Stars'





-- Write an SQL statement to find the player name and jersey number of players from the team: 'Rainbow'.[Database: FLIS] flisdb:


select p.name, p.jersey_no from players AS p
join teams AS t 
on p.team_id = t.team_id
where t.name = 'Rainbow'
