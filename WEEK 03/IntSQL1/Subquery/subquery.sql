
-- A subquery is written inside of another query 

-- Suppose we want to find players belonging to a particular team


----------------------------------------------------------

-- select name
-- from players 
-- where team_id = 'T01';

----------------------------------------------------------



-- Here, we know the team's ID (T01).
-- But what happens when we don't know the team ID, only its name?
-- We can use a subquery to find the ID first, then use that result to find the players.



----------------------------------------------------------

-- select name  
-- from players
-- where team_id=(
--     select team_id                  
--     from teams 
--     where name = 'Amigos'

-- )


-- How it works:
-- 1. The inner query finds Arsenal's team_id.
-- 2. The outer query uses that ID to find the players.
-- 3. We get the answer using one SQL statement.


----------------------------------------------------------



-- Write a query to find the team_id of the team named 'Chelsea'.


-- select name  
-- from players 
-- where team_id =(
--     select team_id 
--     from teams 
--     where name="Rainbow"
-- )



-----------------------------------------------------


-- Task: Write an SQL query to display the names and jersey numbers of all players belonging to the team named 'Arsenal'.


-- teams(team_id, name, city, playground, jersey_home_color, jersey_away_color)


--players(player_id, name, dob, jersey_no, team_id)


select name,jersey_no
from players
where team_id=(
        select team_id  
        from teams          
        where name = 'All Stars'
)

---------------------------------------------------------