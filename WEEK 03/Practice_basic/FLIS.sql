-- Write an SQL query to display the names and jersey numbers of all players.



-- select name, jersey_no from players 



-- Write an SQL query to display the match_num, host_team_id, and host_team_score for all matches where the host team scored more than 2 goals.


--matches(match_num, match_date, host_team_id, guest_team_id, host_team_score, guest_team_score)


-- select match_num, host_team_id , host_team_score 
-- from matches 
-- where host_team_score >= 2


-- Task: Display the match_num and host_team_score of the top 5 matches with the highest host team scores.



select  match_num, host_team_score 
from matches 
ORDER BY host_team_score DESC 
LIMIT 5





