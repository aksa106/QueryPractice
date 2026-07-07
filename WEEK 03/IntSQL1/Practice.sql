
-- SUBQUERY 

-- a subquery is a simple query written inside another query 

-- select  
-- from 
-- where column = (
--     select ..
-- );

-- THE OUERY INSIDE THE PARANTHESIS IS SUBQUERY


--

select * from instructor


--Show instructors whose salary is greater than the average salary."

select AVG(salary)from instructor

select name, avg(salary) [avg] from instructor 

where salary > avg 



-----------------------------------------------------













