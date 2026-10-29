

--  Write an SQL statement to find the name of those managers who became managers after the year '2020'.[Database: FLIS] flisdb:


select name from managers
where since > '2020-12-31'
 

------------------------------------


-- Write an SQL statement to find the colors of the home-jersey and the away-jersey (jersey_home_color, jersey_away_color) used by the team: 'All Stars'.[Database: FLIS] flisdb:


select jersey_home_color, jersey_away_color 
from teams 
where name = 'All Stars'



--------------------------------------

-- Write an SQL statement to find the jersey number of players from the team: 'Thunder'.[Database: FLIS] flisdb:


select p.jersey_no 
from players p 
join teams t on t.team_id = p.team_id 
where t.name = 'All Stars'


