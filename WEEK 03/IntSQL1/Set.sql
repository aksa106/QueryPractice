


-- Find instructors whose salary is greater than the average salary.

select name from instructor 
where salary > (
    select avg(salary) 
    from instructor

)

-- How many values will the subquery return - only one. so its easier to compare

------------------------------------------------------------------

-- Find instructors who belong to departments that exist in the department table.

select name                                             
from instructor 
where dept_name = (
    select dept_name 
    from department
)
-- So PostgreSQL throws an error like:

-- more than one row returned by a subquery used as an expression



select name                                             
from instructor 
where dept_name IN  (
    select dept_name 
    from department
)


select name from instructor 
where salary in(
    select max(salary) 
    from instructor
)


-----------------------------------------------------------------------------

                    -- SET COMPARISON (ANY, SOME, ALL)



-- So in / in not checks membership in multiple values, but what if we want to check and comapre to a list of values.

-- IN CHECKS ONLY EQUALITY
-- But IN only checks equality.

-- It means:

-- salary = 70000
-- OR
-- salary = 80000
-- OR
-- salary = 90000

-- It cannot answer:

-- salary > 70000
-- salary > 80000
-- salary > 90000

-- That's a comparison, not a membership test.


-- That's why SQL gives us:
-- ANY (or SOME)
-- ALL

-- They allow comparison (>, <, >=, <=, =) with multiple values.
------------------------------------------------------------------------------

-- Find instructors whose salary is greater than any salary in the Physics Department.


select name, salary 
from instructor 
where salary > any(
    select salary           -- salary > (108011,121141)
    from instructor 
    where dept_name = 'Physics'
)

-- Find the names and salaries of instructors whose salary is greater than ANY salary of instructors in the 'Biology' department.


select name, salary  
from instructor  
where salary > ANY(
    select salary 
    from instructor 
    where dept_name = 'Biology'

)


-----------------------------------------------------------------




















