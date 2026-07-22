


-- Create a view to show each instructor and their department 

Create View Instructor_Dept as 
select 
    Id,
    name, 
    dept_name
from instructor;


select * from Instructor_Dept

-------------------------------------------------------------------------------

-- Create a view for showing instructor name, building and salary

Create View Instructor_Salary as 
Select 
    i.name,
    d.building,
    i.salary 
from instructor as i   
join department as d   
on i.dept_name = d.dept_name



select * from Instructor_Salary



----------------------------------------------------------------------------------

--                            VIEW ON VIEWS 


-- Create the first view

Create View Ins_Dept as 
Select 
    Id,
    name, 
    dept_name,
    salary 
From instructor    

-- Create Another view using it

Create view HighSalaryInstrcutor as 
Select 
    name, 
    dept_name 
From Ins_Dept
Where salary > 80000


-- Now use this view 

select * from HighSalaryInstrcutor




CREATE VIEW InstructorView AS
SELECT
    ID,
    name,
    dept_name
FROM instructor;



























