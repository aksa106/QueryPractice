-- --  Write an SQL statement to find the roll number and mobile number (roll_no, mobile_no) of students who belong to the department with department code as 'CS' and who were born after '2001-06-15'. [Database: LIS] lisdb:

-- select roll_no, mobile_no 
-- from students 
-- where department_code = 'CS' and dob > '2001-06-15'

--------------------------------------

-- Write an SQL statement to find the first names and the last names of faculty (faculty_fname, faculty_lname) who belong to the department:'Computer Science' and joined after '2015-03-03'.[Database: LIS] lisdb:


select f.faculty_fname, f.faculty_lname 
from faculty f
join departments d on f.department_code = d.department_code

where d.department_name = 'Computer Science' and f.doj >  '2015-03-03'

















