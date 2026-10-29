


BEGIN

SELECT *
FROM instructor
WHERE name = 'Pingr'

select * from instructor




ROLLBACK

Begin ;

UPDATE instructor
SET salary = salary + 5000
WHERE name = 'Pingr';

COMMIT;






