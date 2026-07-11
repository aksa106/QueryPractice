

--                    WITH CTE CLAUSE

-- When we write a subquery in from it often becomes hard to read and reduces readability, and can look complex , SO WE USE A WITH CLAUSE , which can be a named temperory table , result set can be referenced by main query, it is like a defining a variable in python , we define some table with WITH and refernece it later.

-- Tempeorary table is created and given a name before the main query


-- doing the same previous example using with

WITH dept_avg AS (

    select dept_name, avg(salary) AS dept_avg_salary
    from instructor 
    group by dept_name 
    having avg(salary) > 80000
)



select avg(dept_avg_salary) 
from dept_avg 


-------------------------------------------------------------------------


-- Create a CTE that stores the total number of courses taught by each instructor. Then display only instructors who teach more than one course.


with instructor_courses AS(

    select id, count(course_id) as total_courses
    from teaches
    group by id
)


select id,  total_courses

from instructor_courses

where total_courses > 1
-------------------------------------

