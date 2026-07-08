-- Find the names, department names, and salaries of instructors whose salary is greater than the minimum salary in the 'Biology' department.



select name, dept_name, salary 
from instructor 
where salary > (
    select min(salary) 
    from instructor 
    where dept_name = 'Biology'
)


-- Find the names of instructors whose salary is exactly equal to the average salary of the 'Physics' department.

select name
from instructor 
where salary = (
    select avg(salary)
    from instructor 
    where dept_name = 'Physics'
)














