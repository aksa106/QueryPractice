
-- subquery in from creates a temp table outer query can use


-- select * from(
--     select id, name, salary 
--     from instructor 
--     AS temp           -- sql treats this as a temporary table named temp

-- )


-- A SUBQUERY IN FROM MUST HAVE AN ALIAS , so that outer query can reference it.


-- Find the departments whose average salary is greater than 80,000.



select dept_name, 
avg(salary) as avg_salary 
from instructor 
group by dept_name 
having Avg(salary) > 80000  -- overall salary avg not individual salary avg


-- Show the department name and its average salary, but only for departments whose average salary is greater than 80,000. Sort them by average salary in descending order.

-- deptname avg salary 
-- dept -- avg salary > 80k
-- avg salary desc 

-- select avg(salary) from instructor -- 76 k

select dept_name , AVG(salary) AS Dept_avg_salary

from instructor 

group by dept_name 

having Avg(salary) > 80000

-- npw the problem arises i want to filter only those dept whose dept avg > 80k



-- Then, from those department averages, find the overall average department salary.

select dept_name , avg(Dept_avg_salary)

From(select dept_name , AVG(salary) AS Dept_avg_salary

from instructor 

group by dept_name 

having Avg(salary) > 80000) as Dept_avg

GROUP BY dept_name

---------------------------------------------------------------------------------------
-- Show the department name and its average salary, but only for departments whose average salary is greater than 80,000. Sort them by average salary in descending order.

-- first i will find out overall avg salary across all ins & dept

select dept_name, avg(dept_avg)

from(
    select  dept_name,avg(salary) 
from instructor 
group by dept_name
having avg(salary) > 99000

) AS dept_avg


select  dept_name,avg(salary) 
from instructor 
group by dept_name
having avg(salary) > 80000


---------------------------------------------------------------------------




