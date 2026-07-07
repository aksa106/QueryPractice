



-- Write an SQL statement to find the first names and the last names (student_fname, student_lname) of students who belong to the department with department code as 'MCA' and who were born after '2002-06-15'. [Database: LIS] lisdb:


select student_fname, student_lname from students

where department_code = 'MCA' AND dob > '2002-06-15'



-- Write an SQL statement to find the last names (faculty_lname) of female faculty who belong to the department: 'Mechanical Engineering'.[Database: LIS] lisdb:


select faculty_lname from faculty 
where department_code = 'ME' AND gender = 'F'


select f.faculty_lname from faculty as f 
join departments as d
on f.department_code = d.department_code
where d.department_name = 'Mechanical Engineering' AND f.gender = 'F'



