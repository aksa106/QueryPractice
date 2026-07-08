

-- Find the names of instructors whose salary is greater than the average salary of all instructors

select name from instructor 
where salary>(
    select avg(salary) 
    from instructor
)


-- Find the names of instructors whose salary is equal to the highest salary in the instructor table.


select name from instructor 
where salary = (
    select max(salary)
    from instructor
)

-- Find the names and salaries of instructors whose salary is less than the minimum salary in the 'Comp. Sci.' department.


select name, salary 
from instructor 
where salary <(
    select min(salary) 
    from instructor 
    where dept_name = 'Comp. Sci.'
)



-- Find the names, department names, and salaries of instructors whose salary is greater than the average salary of the 'Comp. Sci.' department.


select name, dept_name, salary from instructor 
where salary > (
    select avg(salary) from instructor 
    where dept_name = 'Comp. Sci.'
)
















